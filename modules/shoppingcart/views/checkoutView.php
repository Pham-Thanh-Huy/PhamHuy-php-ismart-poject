<?php
get_header();
?>
<?php
global $re_usedata;
global $category;
$category = get_list_cat_product();
$list_cart = get_list_cart() ?>  
<div id="main-content-wp" class="checkout-page">
    <div class="section" id="breadcrumb-wp">
        <div class="wp-inner">
            <div class="section-detail">
                <ul class="list-item clearfix">
                    <li>
                        <a href="?page=home" title="">Trang chủ</a>
                    </li>
                    <li>
                        <a href="" title="">Thanh toán</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div id="wrapper" class="wp-inner clearfix">
        <div class="section" id="customer-info-wp">
            <div class="section-head">
                <h1 class="section-title">Thông tin khách hàng</h1>
            </div>
            <div class="section-detail">
                <form method="POST" action="" name="form-checkout">
                    <div class="form-row clearfix">
                        <div class="form-col fl-left">
                            <label for="fullname">Họ tên</label>
                            <input type="text" name="fullname" id="fullname" value="<?php if (!empty($re_usedata['fullname'])) { echo set_value($re_usedata['fullname']);} else {echo '';} ?>" >
                            <?php echo form_error('fullname') ?>
                        </div>
                        <div class="form-col fl-right">
                            <label for="email">Email</label>
                            <input type="email" name="email" id="email" value="<?php if (!empty($re_usedata['email'])) { echo set_value($re_usedata['email']);} else {echo '';} ?>">
                            <?php echo form_error('email') ?>
                        </div>
                    </div>
                    <div class="form-row clearfix">
                        <div class="form-col fl-left">
                            <label for="address">Địa chỉ</label>
                            <input type="text" name="address" id="address" value="<?php if (!empty($re_usedata['address'])) { echo set_value($re_usedata['address']);} else {echo '';} ?>">
                            <?php echo form_error('address') ?>
                        </div>
                        <div class="form-col fl-right">
                            <label for="phone">Số điện thoại</label>
                            <input type="tel" name="phone" id="phone" value="<?php if (!empty($re_usedata['phone'])) { echo set_value($re_usedata['phone']);} else {echo '';} ?>">
                            <?php echo form_error('phone') ?>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-col">
                            <label for="notes">Ghi chú</label>
                            <textarea name="note"></textarea>
                        </div>
                    </div>
            </div>
        </div>
        <div class="section" id="order-review-wp">
            <div class="section-head">
                <h1 class="section-title">Thông tin đơn hàng</h1>
            </div>
            <div class="section-detail">
                <table class="shop-table">
                    <thead>
                        <tr>
                            <td>Sản phẩm</td>
                            <td>Tổng</td>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($list_cart as $value) { ?>
                            <tr class="cart-item">
                                <td class="product-name"><?php echo $value['product_name'] ?><strong class="product-quantity">x<?php echo $value['qty'] ?></strong></td>
                                <td class="product-total"><?php echo currency_format($value['total']) ?></td>
                            </tr>
                        <?php }  ?>
                    </tbody>
                    <tfoot>
                        <tr class="order-total">
                            <td>Tổng đơn hàng:</td>
                            <td><strong class="total-price"><?php echo currency_format($_SESSION['cart']['info']['total_price']) ?></strong></td>
                        </tr>
                    </tfoot>
                </table>
                <div id="payment-checkout-wp">
                    <ul id="payment_methods">
                        <li>
                            <input type="radio" id="direct-payment" name="payment-method" value="direct-payment">
                            <label for="direct-payment">Thanh toán tại cửa hàng</label>
                        </li>
                        <li>
                            <input type="radio" id="payment-home" name="payment-method" value="payment-home">
                            <label for="payment-home">Thanh toán tại nhà</label>
                        </li>
                    </ul>
                    <?php echo form_error('payment-method') ?>
                </div>
                <div class="place-order-wp clearfix">
                    <input type="submit" name="btn_buy" id="order-now" value="Đặt hàng">
                </div>
            </form>
            </div>
        </div>
    </div>
</div>

<?php

get_footer();

?>

<style>
    .error{
        color: red;
    }
</style>