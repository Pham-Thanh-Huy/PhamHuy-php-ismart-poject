<?php

get_header();

?>

<?php
global $category;
$category = get_list_cat_product();
$list_cart = get_list_cart() ?>
<div id="main-content-wp" class="cart-page">
    <div class="section" id="breadcrumb-wp">
        <div class="wp-inner">
            <div class="section-detail">
                <ul class="list-item clearfix">
                    <li>
                        <a href="?page=home" title="">Trang chủ</a>
                    </li>
                    <li>
                        <a href="" title="">Giỏ hàng</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div style="min-height: 450px;" id="wrapper" class="wp-inner clearfix">
        <?php if (!empty($list_cart)) { ?>
            <div class="section" id="info-cart-wp">
                <div class="section-detail table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <td data-label="Mã sản phẩm">Mã sản phẩm</td>
                                <td data-label="Ảnh sản phẩm">Ảnh sản phẩm</td>
                                <td data-label="Tên sản phẩm">Tên sản phẩm</td>
                                <td data-label="Giá sản phẩm">Giá sản phẩm</td>
                                <td data-label="Số lượng">Số lượng</td>
                                <td data-label="Thành tiền" colspan="2">Thành tiền</td>
                            </tr>
                        </thead>

                        <tbody>
                            <?php
                            foreach ($list_cart as $value) {
                            ?>
                                <tr>
                                    <td><?php echo $value['code_product'] ?></td>
                                    <td>
                                        <a href="" title="" class="thumb">
                                            <img src="admin/<?php echo $value['product_img'] ?>" alt="">
                                        </a>
                                    </td>
                                    <td>
                                        <a href="" title="" class="name-product"><?php echo $value['product_name'] ?></a>
                                    </td>
                                    <td><?php echo currency_format($value['product_price']) ?></td>
                                    <td>
                                    <input data-id="<?php echo $value['product_id'] ?>" type="number" min="1" max="10" name="num-order" value="<?php echo $value['qty'] ?>" class="num-order num-order-<?php echo $value['product_id'] ?>">
                                    </td>
                                    <td id="total_price-<?php echo $value['product_id'] ?>" class="total-price"><?php echo currency_format($value['total']) ?></td>
                                    <td>
                                        <a href="<?php echo $value['cart_delete'] ?>" title="" class="del-product"><i class="fa fa-trash-o"></i></a>
                                    </td>
                                </tr>
                            <?php } ?>
                        </tbody>
                        <tfoot>
                            <tr>
                                <td colspan="7">
                                    <div class="clearfix">
                                        <p id="total-price" class="fl-right">Tổng giá: <span><?php echo currency_format($_SESSION['cart']['info']['total_price']) ?></span></p>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="7">
                                    <div class="clearfix">
                                        <div class="fl-right">
                                        
                                            <a style="background-color: #CC0000;" href="?mod=shoppingcart&controllers=index&action=checkout" title="" id="checkout-cart">Thanh toán</a>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </tfoot>
                    </table>
                </div>
            </div>
            <div class="section" id="action-cart-wp">
                <div class="section-detail">
                   
                    <a href="?page=home" title="" id="buy-more">Mua tiếp</a><br />
                    <a href="#" title="" id="delete-cart">Xóa giỏ hàng</a>
                </div>
            </div>
        <?php } else { ?>
            <div class="empty_cart_container">
                <img class="empty_cart" src="public/images/empty-cart.jpg" alt="">
            </div>

        <?php } ?>
    </div>
</div>

<?php

get_footer();

?>