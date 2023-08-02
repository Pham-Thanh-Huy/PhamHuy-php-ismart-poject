<?php
get_header();
?>
<?php $id = $_GET['id'];
global $category;
    $category = get_list_cat_product();
    $product = get_product_by_id($id);
    // show_array($product);
    // tìm kiếm các sản phẩm liên quan
    // id của danh mục cha sản phẩm hiện tại
    $related_id = $product[0]['list_product_id'];
    // lấy tất cả các sản phẩm thuộc danh mục cha đấy
    $relate_product = get_product_by_catt_id($related_id); ?>
<div id="main-content-wp" class="clearfix detail-product-page">
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
        <?php foreach ($product as $value) { ?>
            <div class="main-content fl-right">
                <div class="section" id="detail-product-wp">
                    <div class="section-detail clearfix">
                        <div class="thumb-wp fl-left">
                            <a href="" title="" id="main-thumb">
                                <img width="350px" id="zoom" src="admin/<?php echo $value['product_img'] ?>" data-zoom-image="admin/<?php echo $value['product_img'] ?>">
                            </a>
                        </div>
                        <div class="thumb-respon-wp fl-left">
                            <img src="admin/<?php echo $value['product_img'] ?>" alt="">
                        </div>
                        <div class="info fl-right">
                            <h3 class="product-name"><?php echo $value['product_name'] ?></h3>
                            <div class="desc">
                                <p><?php echo $value['detail_product'] ?></p>
                            </div>
                            <div class="num-product">
                                <span class="title">Sản phẩm: </span>
                                <span class="status">Còn hàng</span>
                            </div>
                            <p class="price"><?php echo currency_format($value['product_price']) ?></p>
                            <a href="?mod=shoppingcart&controllers=index&action=add_cart&id=<?php echo $value['product_id'] ?>" title="Thêm giỏ hàng" class="add-cart">Thêm giỏ hàng</a>
                        </div>
                    </div>
                </div>
                <div class="section" id="post-product-wp">
                    <div class="section-head">
                        <h3 class="section-title">Mô tả sản phẩm</h3>
                    </div>
                    <div class="section-detail">
                        <?php echo $value['product_description'] ?>
                    </div>
                </div>
            
            <?php } ?>
            <div class="section" id="same-category-wp">
                <div class="section-head">
                    <h3 class="section-title">Cùng chuyên mục</h3>
                </div>
                <div class="section-detail">
                    <ul class="list-item">
                        <?php foreach ($relate_product as $value) { ?>
                            <li class="product">
                                <a href="" title="" class="thumb">
                                    <img src="admin/<?php echo $value['product_img'] ?>">
                                </a>
                                <a href="" title="" class="product-name"><?php echo $value['product_name'] ?></a>
                                <div class="price">
                                    <span class="new"><?php echo currency_format($value['product_price']) ?></span>
                                </div>
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
                <div class="section" id="banner-wp">
                    <div class="section-detail">
                        <a href="?page=detail_product" title="" class="thumb">
                            <img class="banner" src="public/images/banner.png" alt="">
                        </a>
                    </div>
                </div>
            </div>
    </div>
</div>


<?php

get_footer();

?>