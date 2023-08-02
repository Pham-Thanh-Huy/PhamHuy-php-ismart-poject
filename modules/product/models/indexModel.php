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

function get_list_product()
{
    global $conn;
    $sql = "SELECT * FROM `tbl_product`";
    $result = mysqli_query($conn, $sql);
    $tbl_product = array();
    while ($row = mysqli_fetch_assoc($result)) {
        $tbl_product[] = $row;
    }
    return $tbl_product;
}

// lấy sản phẩm trong danh mục nhiều cấp

function get_child_category($parent_id)
{
    global $conn;
    $subcategories = array();

    $sql = "SELECT *
            FROM tbl_list_product
            WHERE parent_id = " . $parent_id;

    $result = mysqli_query($conn, $sql);
    while ($row = mysqli_fetch_assoc($result)) {
        $subcategories[] = $row;

        // Lấy danh mục con của danh mục hiện tại (đệ quy)
        $subcategories = array_merge($subcategories, get_child_category($row['id']));
    }

    return $subcategories;
}


function get_product_by_cat_id($total_row_in_page, $page, $id)
{
    global $conn;
    $start = ($page - 1) * $total_row_in_page;

    // Lấy danh sách danh mục con
    $subcategories = get_child_category($id);

    // Lấy danh sách sản phẩm dựa trên danh mục con (nếu có) hoặc danh mục cha
    $product_ids = array();
    if (!empty($subcategories)) {
        foreach ($subcategories as $subcategory) {
            $product_ids[] = $subcategory['id'];
        }
    } else {
        $product_ids[] = $id;
    }

    // Truy vấn các sản phẩm tương ứng từ bảng tbl_product
    $sql_products = "SELECT *
                    FROM tbl_product
                    WHERE list_product_id IN (".implode(',', $product_ids).") 
                    LIMIT $start, $total_row_in_page
                    ";
    $result_products = mysqli_query($conn, $sql_products);

    // Xử lý kết quả truy vấn sản phẩm
    $products = array();
    while ($row_product = mysqli_fetch_assoc($result_products)) {
        $products[] = $row_product;
    }

    return $products;
}
function get_product_by_catt_id($id)
{
    global $conn;

    // Lấy danh sách danh mục con
    $subcategories = get_child_category($id);

    // Lấy danh sách sản phẩm dựa trên danh mục con (nếu có) hoặc danh mục cha
    $product_ids = array();
    if (!empty($subcategories)) {
        foreach ($subcategories as $subcategory) {
            $product_ids[] = $subcategory['id'];
        }
    } else {
        $product_ids[] = $id;
    }

    // Truy vấn các sản phẩm tương ứng từ bảng tbl_product
    $sql_products = "SELECT *
                    FROM tbl_product
                    WHERE list_product_id IN (".implode(',', $product_ids).") 
                    ";
    $result_products = mysqli_query($conn, $sql_products);

    // Xử lý kết quả truy vấn sản phẩm
    $products = array();
    while ($row_product = mysqli_fetch_assoc($result_products)) {
        $products[] = $row_product;
    }

    return $products;
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



function get_product_search($product_name, $total_row_in_page, $page)
{
    global $conn;
    $start = ($page - 1) * $total_row_in_page;
    $escaped_product_name = mysqli_real_escape_string($conn, $product_name);
    $keywords = explode(' ', $escaped_product_name);
    $condition_string = "";
    foreach ($keywords as $keyword) {
        $condition_string .= "AND `product_name` LIKE '%$keyword%'";
    }
    $condition_string = ltrim($condition_string, 'AND');

    $sql = "SELECT * FROM `tbl_product` WHERE $condition_string LIMIT $start, $total_row_in_page";
    $result = mysqli_query($conn, $sql);

    $tbl_product_search = array();
    while ($row = mysqli_fetch_assoc($result)) {
        $tbl_product_search[] = $row;
    }

    return $tbl_product_search;
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





function get_page($total_row_in_page, $id){
    global $conn;

    $subcategories = get_child_category($id);

    // Lấy danh sách sản phẩm dựa trên danh mục con (nếu có) hoặc danh mục cha
    $product_ids = array();
    if (!empty($subcategories)) {
        foreach ($subcategories as $subcategory) {
            $product_ids[] = $subcategory['id'];
        }
    } else {
        $product_ids[] = $id;
    }
    $sql_products = "SELECT *
                    FROM tbl_product
                    WHERE list_product_id IN (".implode(',', $product_ids).")"; 
    $result = mysqli_query($conn, $sql_products);
    $check_num_page = mysqli_num_rows($result);
    if($check_num_page < $total_row_in_page){
        $num_page= 0;
    }else{
        $num_page = ceil($check_num_page/ $total_row_in_page);
    }

    return $num_page;
}

function get_page_2($total_row_in_page){
    global $conn;

   
    $sql_products = "SELECT *
                    FROM tbl_product"; 
    $result = mysqli_query($conn, $sql_products);
    $check_num_page = mysqli_num_rows($result);
    if($check_num_page < $total_row_in_page){
        $num_page= 0;
    }else{
        $num_page = ceil($check_num_page/ $total_row_in_page);
    }

    return $num_page;
}
function get_page_3($product_name ,$total_row_in_page){
    global $conn;

   
    $sql_products = "SELECT *
                    FROM tbl_product WHERE `product_name` LIKE '%$product_name%'"; 
    $result = mysqli_query($conn, $sql_products);
    $check_num_page = mysqli_num_rows($result);
 
        $num_page = ceil($check_num_page/ $total_row_in_page);
    

    return $num_page;
}