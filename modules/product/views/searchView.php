<?php
get_header();
?>
<?php
global $outstanding;
global $category;
$outstanding = get_product_outstanding();
$total_num_page = 10;
$page = isset($_GET['page']) ? $_GET['page'] : 1;
$category = get_list_cat_product();

if (isset($_GET['product_search'])) {
    $cat_name = $_GET['product_search'];
} else {
    $cat_name = isset($_POST['search_product']) ? htmlspecialchars($_POST['search_product']) : '';
}
$product_search  = get_product_search($cat_name, $total_num_page, $page);
$num_page = get_page_3($cat_name, $total_num_page);
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
                    <h3 class="section-title fl-left"> sản phẩm thuộc <?php echo $cat_name ?></h3>

                    <div class="filter-wp fl-right">

                        <div class="form-filter">
                            <form method="POST" action="">
                                <select name="select">
                                    <option value="1">Giá cao xuống thấp</option>
                                    <option value="2">Giá thấp lên cao</option>
                                </select>
                                <button type="submit">Lọc</button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="section-detail">
                    <?php if (!empty($product_search)) {
                        $total_products = count($product_search); // Đếm số lượng sản phẩm
                    ?>
                        <ul class="list-item clearfix">
                            <?php foreach ($product_search as $value) { ?>
                                <li class="product">
                                    <a href="?mod=product&controllers=index&action=detail_product&id=<?php echo $value['product_id'] ?>" title="" class="thumb">
                                        <img src="admin/<?php echo $value['product_img'] ?>">
                                    </a>
                                    <a href="?mod=product&controllers=index&action=detail_product&id=<?php echo $value['product_id'] ?>" title="" class="product-name"><?php echo $value['product_name'] ?></a>
                                    <div class="price">
                                        <span class="new"><?php echo currency_format($value['product_price']) ?></span>
                                    </div>

                                </li>
                            <?php } ?>
                        </ul>
                    <?php } else {
                        echo "<p>Không có sản phẩm nào được tìm thấy</p>";
                    } ?>
                </div>


            </div>
            <div class="section" id="paging-wp">
                <div class="section-detail">
                    <ul class="list-item clearfix">
                        <?php for ($i = 1; $i <= $num_page; $i++){ ?>
                        <li>
                            <a href="?mod=product&controllers=index&action=search&product_search=<?php echo $cat_name ?>&page=<?php echo $i ?>" title=""><?php echo $i ?></a>
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