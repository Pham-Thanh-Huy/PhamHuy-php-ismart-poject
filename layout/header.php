<!DOCTYPE html>
<html>

<head>
    <title>ISMART STORE</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="public/reset.css" rel="stylesheet" type="text/css" />
    <link href="public/css/bootstrap/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
    <link href="public/css/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="public/css/carousel/owl.carousel.css" rel="stylesheet" type="text/css" />
    <link href="public/css/carousel/owl.theme.css" rel="stylesheet" type="text/css" />
    <link href="public/css/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="public/style.css" rel="stylesheet" type="text/css" />
    <link href="public/responsive.css" rel="stylesheet" type="text/css" />
    <link href="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.12/dist/sweetalert2.min.css" rel="stylesheet">
    <script src="public/js/jquery-2.2.4.min.js" type="text/javascript"></script>
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
    <script src="public/js/elevatezoom-master/jquery.elevatezoom.js" type="text/javascript"></script>
    <script src="public/js/bootstrap/bootstrap.min.js" type="text/javascript"></script>
    <script src="public/js/carousel/owl.carousel.js" type="text/javascript"></script>
    <script src="public/js/main.js" type="text/javascript"></script>
    <script src="public/js/app.js" type="text/javascript"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.3/dist/sweetalert2.all.min.js"></script>
</head>

<body>
    <div id="site">
        <div id="container">
            <div id="header-wp">
                <div id="head-top" class="clearfix">
                    <div class="wp-inner">
                        <a href="" title="" id="payment-link" class="fl-left">Hình thức thanh toán</a>
                        <div id="main-menu-wp" class="fl-right">
                            <ul id="main-menu" class="clearfix">
                                <li>
                                    <a href="?mod=home&controllers=index&action=home" title="">Trang chủ</a>
                                </li>
                                <li>
                                    <a href="?mod=product&controllers=index&action=product&id=''" title="">Sản phẩm</a>
                                </li>
                                <li>
                                    <a href="?mod=post&controllers=index&action=news" title="">Blog</a>
                                </li>
                                <li>
                                    <a href="?mod=home&controllers=index&action=about" title="">Giới thiệu</a>
                                </li>
                                <li>
                                    <a href="?mod=home&controllers=index&action=contact" title="">Liên hệ</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div id="head-body" class="clearfix">
                    <div class="wp-inner">
                        <a href="?page=home" title="" id="logo" class="fl-left"><img src="public/images/logo.png" /></a>
                        <div id="search-wp" class="fl-left">
                            <form method="POST" action="?mod=product&controllers=index&action=search">
                                <input type="text" name="search_product" id="s" value="" placeholder="Nhập từ khóa tìm kiếm tại đây!">
                                <button type="submit" id="sm-s">Tìm kiếm</button>
                            </form>
                        </div>
                        <div id="action-wp" class="fl-right">
                            <div id="advisory-wp" class="fl-left">
                                <span class="title">Tư vấn</span>
                                <span class="phone">083.812.9818</span>
                            </div>
                            <div id="btn-respon" class="fl-right"><i class="fa fa-bars" aria-hidden="true"></i></div>
                            <a href="?mod=shoppingcart&controllers=index&action=cart" title="giỏ hàng" id="cart-respon-wp" class="fl-right">
                                <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                <span id="num"></span>
                            </a>
                            <div id="cart-wp" class="fl-right">
                                <div id="btn-cart">
                                    <a href="?mod=shoppingcart&controllers=index&action=cart"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a>
                                    <?php if (isset($_SESSION['cart']['info']) && $_SESSION['cart']['info']['sub_total'] != 0) { ?>
                                        <span id="num"><?php echo $_SESSION['cart']['info']['sub_total']  ?></span>
                                    <?php } ?>
                                </div>
                                <div id="dropdown">
                                    <?php if (!empty($_SESSION['cart']['buy'])) { ?>
                                        <p class="desc">Có <span><?php echo $_SESSION['cart']['info']['sub_total'] ?> sản phẩm</span> trong giỏ hàng</p>
                                        <ul class="list-cart">
                                            <?php
                                            foreach ($_SESSION['cart']['buy'] as $value) { ?>
                                                <li class="clearfix">
                                                    <a href="" title="" class="thumb fl-left">
                                                        <img src="admin/<?php echo $value['product_img'] ?>" alt="">
                                                    </a>
                                                    <div class="info fl-right">
                                                        <a href="" title="" class="product-name"><?php echo $value['product_name'] ?></a>
                                                        <p class="price"><?php echo currency_format($value['product_price']) ?></p>
                                                        <p class="qty">Số lượng: <span><?php echo $value['qty'] ?></span></p>
                                                    </div>
                                                </li>

                                            <?php } ?>
                                        </ul>
                                        <div class="total-price clearfix">
                                            <p class="title fl-left">Tổng:</p>
                                            <p class="price fl-right">18.500.000đ</p>
                                        </div>
                                        <div class="action-cart clearfix">
                                            <a href="?mod=shoppingcart&controllers=index&action=cart" title="Giỏ hàng" class="view-cart fl-left">Giỏ hàng</a>
                                            <a href="?mod=shoppingcart&controllers=index&action=checkout" title="Thanh toán" class="checkout fl-right">Thanh toán</a>
                                        </div>

                                    <?php } else { ?>
                                        <img class="empty-cart" src="public/images/empty-cart.jpg" alt="">
                                    <?php } ?>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>