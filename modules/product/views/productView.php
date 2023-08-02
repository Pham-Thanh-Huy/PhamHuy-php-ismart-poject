<?php
get_header();
?>

<?php
global $category;
global $outstanding;
$id = $_GET['id'];
$category = get_list_cat_product();
$outstanding = get_product_outstanding();
$page = isset($_GET['page']) ? $_GET['page'] : 1;
$total_row_in_page = 11;
// $product =  page($total_row_in_page, $page);
if (!empty($id)) {
    $num_page = get_page($total_row_in_page, $id);
} else {
    $num_page = get_page_2($total_row_in_page);
}

$product_by_id =  get_product_by_cat_id($total_row_in_page, $page, $id);
?>

<?php
// Kiểm tra giá trị option được chọn
if (isset($_POST['select'])) {
    $selected_option = $_POST['select'];

    // Sắp xếp dữ liệu dựa trên giá từ cao xuống thấp
    if ($selected_option == 1) {
        function compareByPrice($a, $b)
        {
            if ($a['product_price'] == $b['product_price']) {
                return 0;
            }
            return ($a['product_price'] < $b['product_price']) ? 1 : -1;
        }

        // Sắp xếp $product_by_id theo giá từ cao xuống thấp
        usort($product_by_id, 'compareByPrice');

        // Sắp xếp $product theo giá từ cao xuống thấp
        usort($product_by_id, 'compareByPrice');
    }
    // Sắp xếp dữ liệu dựa trên giá từ thấp đến cao
    elseif ($selected_option == 2) {
        function compareByPrice($a, $b)
        {
            if ($a['product_price'] == $b['product_price']) {
                return 0;
            }
            return ($a['product_price'] < $b['product_price']) ? -1 : 1;
        }

        // Sắp xếp $product_by_id theo giá từ thấp đến cao
        usort($product_by_id, 'compareByPrice');

        // Sắp xếp $product theo giá từ thấp đến cao
        usort($product_by_id, 'compareByPrice');
    }
}
?>
<div id="main-content-wp" class="clearfix category-product-page">
    <div class="wp-inner">
        <div class="secion" id="breadcrumb-wp">
            <div class="secion-detail">
                <ul class="list-item clearfix">
                    <li>
                        <a href="" title="">Trang chủ</a>
                    </li>
                    <li>
                        <a href="" title="">Điện thoại</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="main-content fl-right">
            <div class="section" id="list-product-wp">
                <div class="section-head clearfix">
                    <?php
                    $category_title = "Sản phẩm"; // Tiêu đề mặc định là "Sản phẩm"
                    if (!empty($id)) {
                        foreach ($category as $value) {
                            if ($value['id'] === $id) {
                                $category_title = $value['list_product_name'];
                                break;
                            }
                        }
                    }
                    ?>
                    <h3 class="section-title fl-left"><?php echo $category_title ?></h3>

                    <div class="filter-wp fl-right">
                        <p class="desc">Hiển thị 45 trên 50 sản phẩm</p>
                        <div class="form-filter">
                            <form method="POST" action="">
                                <select name="select">
                                    <option value="">Sắp xếp</option>
                                    <option value="1">Giá giảm dần</option>
                                    <option value="2">Giá tăng dần</option>
                                </select>
                                <button type="submit">Lọc</button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="section-detail">
                    <ul class="list-item clearfix">
                        <?php if (!empty($id)) { ?>
                            <?php foreach ($product_by_id as $value) {
                            ?>
                                <li class="product">
                                    <a href="?mod=product&controllers=index&action=detail_product&id=<?php echo $value['product_id'] ?>" title="" class="thumb">
                                        <img src="admin/<?php echo $value['product_img'] ?>">
                                    </a>
                                    <a href="?mod=product&controllers=index&action=detail_product&id=<?php echo $value['product_id'] ?>" title="" class="product-name"><?php echo $value['product_name'] ?></a>
                                    <div class="price">
                                        <span class="new"><?php echo currency_format($value['product_price']) ?></span>
                                    </div>

                                </li>
                        <?php }
                        } ?>

                    </ul>
                </div>
            </div>
            <div class="section" id="paging-wp">
                <div class="section-detail">
                    <ul class="list-item clearfix">
                        <?php for ($i = 1; $i <= $num_page; $i++) { ?>
                            <li>
                                <?php if (!empty($id)) { ?>
                                    <a href="?mod=product&controllers=index&action=product&id=<?php echo $id ?>&page=<?php echo $i ?>" title=""><?php echo $i ?></a>
                                <?php } else { ?>
                                    <a href="?mod=product&controllers=index&action=product&id=&page=<?php echo $i ?>" title=""><?php echo $i ?></a>
                                <?php } ?>
                            </li>
                        <?php } ?>
                    </ul>
                </div>
            </div>

        </div>
        <div class="sidebar fl-left">
            <div class="section" id="category-product-wp">
                <div class="section-head">
                    <h3 class="section-title">Danh mục sản phẩm</h3>
                </div>
                <div class="secion-detail">
                    <?php echo render_menu($category) ?>
                </div>
            </div>
            <?php get_sidebar('product') ?>

            <?php

            get_footer();

            ?>