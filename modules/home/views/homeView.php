<?php

get_header();
global $category;
$category = get_list_cat_product();
$phone_product = get_product_by_cat_id(6);
$laptop_product = get_product_by_cat_id(7);
$pc_product = get_product_by_cat_id(8)
?>


<div id="main-content-wp" class="home-page clearfix">
    <div class="wp-inner">
        <div class="main-content fl-right">
            <div class="section" id="slider-wp">
                <div class="section-detail">
                    <div class="item">
                        <img src="public/images/slider-01.png" alt="">
                    </div>
                    <div class="item">
                        <img src="public/images/slider-02.png" alt="">
                    </div>
                    <div class="item">
                        <img src="public/images/slider-03.png" alt="">
                    </div>
                </div>
            </div>
            <div class="section" id="support-wp">
                <div class="section-detail">
                    <ul class="list-item clearfix">
                        <li>
                            <div class="thumb">
                                <img src="public/images/icon-1.png">
                            </div>
                            <h3 class="title">Miễn phí vận chuyển</h3>
                            <p class="desc">Tới tận tay khách hàng</p>
                        </li>
                        <li>
                            <div class="thumb">
                                <img src="public/images/icon-2.png">
                            </div>
                            <h3 class="title">Tư vấn 24/7</h3>
                            <p class="desc">1900.9999</p>
                        </li>
                        <li>
                            <div class="thumb">
                                <img src="public/images/icon-3.png">
                            </div>
                            <h3 class="title">Tiết kiệm hơn</h3>
                            <p class="desc">Với nhiều ưu đãi cực lớn</p>
                        </li>
                        <li>
                            <div class="thumb">
                                <img src="public/images/icon-4.png">
                            </div>
                            <h3 class="title">Thanh toán nhanh</h3>
                            <p class="desc">Hỗ trợ nhiều hình thức</p>
                        </li>
                        <li>
                            <div class="thumb">
                                <img src="public/images/icon-5.png">
                            </div>
                            <h3 class="title">Đặt hàng online</h3>
                            <p class="desc">Thao tác đơn giản</p>
                        </li>
                    </ul>
                </div>
            </div>
            <?php if (!empty($laptop_product)) { ?>
                <div class="section" id="feature-product-wp">
                    <div class="section-head">
                        <h3 class="section-title">Laptop</h3>
                    </div>
                    <div class="section-detail">
                        <ul class="list-item">
                            <?php foreach ($laptop_product as $value) { ?>
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
                    </div>
                </div>
            <?php } ?>


            <?php if (!empty($pc_product)) { ?>
                <div class="section" id="feature-product-wp">
                    <div class="section-head">
                        <h3 class="section-title">Pc</h3>
                    </div>
                    <div class="section-detail">
                        <ul class="list-item">
                            <?php foreach ($pc_product as $value) { ?>
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
                    </div>
                </div>
            <?php } ?>
            <?php if (!empty($phone_product)) { ?>
                <div class="section" id="feature-product-wp">
                    <div class="section-head">
                        <h3 class="section-title">Điện thoại</h3>
                    </div>
                    <div class="section-detail">
                        <ul class="list-item">
                            <?php foreach ($phone_product as $value) { ?>
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
                    </div>
                </div>
            <?php } ?>
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
            <?php get_sidebar('home') ?>

            <?php
            get_footer();
            ?>