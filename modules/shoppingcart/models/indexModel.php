<?php
function get_list_cat_product()
{
    global $conn;
    $sql = "SELECT * FROM `tbl_list_product`";
    $result = mysqli_query($conn, $sql);
    $tbl_list_product = array();
    while ($row = mysqli_fetch_assoc($result)) {
        $tbl_list_product[] = $row;
    }
    return $tbl_list_product;
}
function get_product_by_id($id)
{
    global $conn;
    $sql = "SELECT * FROM `tbl_product` WHERE `product_id` = '{$id}'";
    $result = mysqli_query($conn, $sql);
    $tbl_product = array();
    while ($row = mysqli_fetch_assoc($result)) {
        $tbl_product[] = $row;
    }
    return $tbl_product;
}

function add_bill($fullname, $email, $address, $phone, $total_price, $payment_method, $product_buy, $note)
{
 
    global $conn;
    $check_count = "SELECT COUNT(*) AS total FROM tbl_bill";
    $result_checkcount = mysqli_query($conn, $check_count);
    $row = mysqli_fetch_assoc($result_checkcount);
    $previousBuyers = $row['total'];

    // Tăng giá trị số lượng người mua và tạo mã code
    $currentBuyerNumber = $previousBuyers + 1;
    global $code;
    $code = "#HD-" . $currentBuyerNumber;
    $sql_insertBill = "INSERT INTO `tbl_bill`(`code`, `customer_name`, `customer_email`, `customer_number`, `address`, `total_amount`, `payment_status`, `payment_method`, `product_buy`, `note`, `create_at`) VALUES ('{$code}', '{$fullname}', '{$email}', '{$phone}', '{$address}', '{$total_price}', '0', '{$payment_method}', '{$product_buy}', '{$note}', CURRENT_TIMESTAMP())";
    if (mysqli_query($conn, $sql_insertBill)) {

        return true;
    }
}
