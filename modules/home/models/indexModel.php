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

function get_child_category($parent_id) {
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


function get_product_by_cat_id($id)
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
                    WHERE list_product_id IN (" . implode(',', $product_ids) . ")";
    $result_products = mysqli_query($conn, $sql_products);

    // Xử lý kết quả truy vấn sản phẩm
    $products = array();
    while ($row_product = mysqli_fetch_assoc($result_products)) {
        $products[] = $row_product;
    }

    return $products;
}

