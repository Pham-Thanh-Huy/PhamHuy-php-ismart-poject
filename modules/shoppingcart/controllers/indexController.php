<?php

function construct()
{
    load_model('index');
    load('helper', 'cart');
    load('helper', 'format');
    load('helper', 'datatree');
    load('lib', 'validation');
}

function add_cartAction()
{
    if (isset($_GET['id'])) {
        $id = $_GET['id'];
        $product = get_product_by_id($id);
        add_cart($product);
        update_cart();
        redirect("?mod=shoppingcart&controllers=index&action=cart");
    }
}
function cartAction()
{
    load_view('cart');
}

function checkoutAction()
{
    if (empty($_SESSION['cart']['buy'])) {
        redirect('?mod=home&controllers=index&action=home');
    }
   
    global $error;
    global $re_usedata;
    $re_usedata = array();
    if (isset($_POST['btn_buy'])) {
        $inputs = array(
            'fullname' => 'họ và tên',
            'email' => 'email',
            'address' => 'địa chỉ',
            'phone' => 'số điện thoại',
            'payment-method' => 'phương thức thanh toán'
        );
        foreach ($inputs as $key => $value) {
            if (empty($_POST[$key])) {
                $error[$key] = 'Bạn chưa nhập' . ' ' . $value;
            } else {
                $re_usedata[$key] = $_POST[$key];
            }
        }
        if (!empty($_POST['phone'])) {
            if (!is_phonenumber($_POST['phone'])) {
                $error['phone'] = "Vui lòng nhập đúng số điện thoại của bạn";
            }
        }

        if (!empty($_POST['fullname'])) {
            if (!is_username($_POST['fullname'])) {
                $error['fullname'] = "Vui lòng nhập đúng Họ và tên của bạn";
            }
        }
        if (!empty($_POST['email'])) {
            if (!is_email($_POST['email'])) {
                $error['email'] = "Vui lòng nhập đúng email của bạn";
            }
        }

        if (empty($error)) {
            $fullname = $_POST['fullname'];
            $email = $_POST['email'];
            $address = $_POST['address'];
            $phone = $_POST['phone'];
            $payment_method = $_POST['payment-method'];
            $note = $_POST['note'];
            if (add_bill($fullname, $email, $address, $phone, $_SESSION['cart']['info']['total_price'], $payment_method, json_encode($_SESSION['cart']['buy']), $note)) {
                global $code;
                $_SESSION['cart']['success'] = $_SESSION['cart']['buy'];
                $_SESSION['cart']['success']['total_price'] = $_SESSION['cart']['info']['total_price'];
                $_SESSION['cart']['success']['fullname'] = $fullname;
                $_SESSION['cart']['success']['email'] = $email;
                $_SESSION['cart']['success']['phone'] = $phone;
                $_SESSION['cart']['success']['address'] = $address;
                $_SESSION['cart']['success']['payment_method'] = $payment_method;
                $_SESSION['cart']['success']['code'] = $code;
                
                if (redirect("?mod=shoppingcart&controllers=index&action=success")){
                    unset($_SESSION['cart']['buy']);
                    unset($_SESSION['cart']['info']);
                };
            }
        }
    }




    load_view('checkout');
}

function delete_cartAction()
{
    $id = $_GET['id'];
    unset($_SESSION['cart']['buy'][$id]);
    update_cart();
    redirect("?mod=shoppingcart&controllers=index&action=cart");
}

function delete_all_cartAction()
{
    unset($_SESSION['cart']['buy']);
    update_cart();
    redirect("?mod=home&controllers=index&action=home");
}

function ChangeValueCartAjaxAction()
{
    $qty = $_POST['qty'];
    $id = $_POST['id'];
    $item = get_product_by_id($id);
    if (isset($_SESSION['cart']) && array_key_exists($id, $_SESSION['cart']['buy'])) {
        $_SESSION['cart']['buy'][$id]['qty'] = $qty;

        foreach ($item as $value) {
            $total =  $qty * $value['product_price'];
            $_SESSION['cart']['buy'][$id]['total'] = $total;
        };


        // cập nhập lại giá
        update_cart();
        $total_price = $_SESSION['cart']['info']['total_price'];

        $data = array(
            'total' => currency_format($total),
            'total_price' => currency_format($total_price)
        );

        echo json_encode($data);
    }
}

function successAction()
{
    if(empty($_SESSION['cart']['success']) || !isset($_SESSION['cart']['success'])){
        redirect("?mod=home&controllers=index&action=home");
    }
    load_view('success');
}


// hàm xóa session của hóa đơn để quay về trang chủ
function delete_successAction(){
    unset($_SESSION['cart']['success']);
    redirect("?mod=home&controllers=index&action=home");
}