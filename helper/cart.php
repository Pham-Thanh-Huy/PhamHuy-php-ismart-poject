<?php

function add_cart($product)
{
    $qty = 1;
    foreach ($product as $value) {
        if (isset($_SESSION['cart']['buy']) && array_key_exists($value['product_id'], $_SESSION['cart']['buy'])) {
            $qty = $_SESSION['cart']['buy'][$value['product_id']]['qty'] + 1;
        }

        $_SESSION['cart']['buy'][$value['product_id']] = array(
            'product_id' => $value['product_id'],
            'code_product' => $value['code_product'],
            'product_name' => $value['product_name'],
            'product_img' => $value['product_img'],
            'product_price' => $value['product_price'],
            'qty' => $qty,
            'total' => $value['product_price'] * $qty
        );
    }
}

function get_list_cart()
{

    if (isset($_SESSION['cart']['buy'])) {
        foreach ($_SESSION['cart']['buy'] as &$value) {
            $value['cart_delete'] = "?mod=shoppingcart&controllers=index&action=delete_cart&id={$value['product_id']}";
        }

        return $_SESSION['cart']['buy'];
    }else{
        return;
    }
}


function update_cart(){
    $sub_total= 0;
    $total_price = 0;
    foreach($_SESSION['cart']['buy'] as $value){
        $sub_total+= $value['qty'];
        $total_price += $value['total'];
    }

    $_SESSION['cart']['info'] = array(
        'sub_total' =>   $sub_total,
        'total_price' => $total_price
    );
}