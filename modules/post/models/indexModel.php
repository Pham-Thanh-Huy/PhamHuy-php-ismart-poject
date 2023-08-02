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


function get_product_outstanding(){
    global $conn;
    $sql = "SELECT * FROM `tbl_product` WHERE `outstanding` = '1'";
    $result = mysqli_query($conn, $sql);
    $tbl_product = array();
    while ($row = mysqli_fetch_assoc($result)) {
        $tbl_product[] = $row;
    }
    return $tbl_product;
}

function get_post($total_row_in_page, $page){
    global $conn;
    $start = ($page - 1) * $total_row_in_page;
    $sql = "SELECT * FROM `tbl_post` LIMIT $start, $total_row_in_page";
    $result = mysqli_query($conn, $sql);
    $tbl_post = array();
    while ($row = mysqli_fetch_assoc($result)) {
        $tbl_post[] = $row;
    }
    return $tbl_post;
}
function get_post_by_id($id){
    global $conn;
    $sql = "SELECT * FROM `tbl_post` WHERE `id` = '{$id}'";
    $result = mysqli_query($conn, $sql);
    $tbl_post = mysqli_fetch_array($result);
    return $tbl_post;
}

function get_list_post()
{
    global $conn;
    $sql = "SELECT * FROM `tbl_list_post`";
    $result = mysqli_query($conn, $sql);
    $tbl_list_post = array();
    while ($row = mysqli_fetch_assoc($result)) {
        $tbl_list_post[] = $row;
    }
    return $tbl_list_post;
}

function get_page($total_row_in_page){
    global $conn;
    $sql = "SELECT * FROM `tbl_post`";
    $result = mysqli_query($conn, $sql);
    $page_check = mysqli_num_rows($result);
    $num_page = ceil($page_check/$total_row_in_page);
    return $num_page;
}
