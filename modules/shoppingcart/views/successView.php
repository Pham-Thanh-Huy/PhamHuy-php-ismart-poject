<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Code html thanh toan thanh cong</title>
    <link rel="stylesheet" href="./style.css">

</head>

<body>
    <!-- partial:index.partial.html -->
    <link href="https://fonts.googleapis.com/css?family=Muli|Open+Sans&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <link href="public/success.css" rel="stylesheet" type="text/css" />

    <section class="pay-done">
        <h1 class="pay-done__head reddish">Thanh toán thành công!</h1>
        <div class="pay-done__icon"> <i class="fa fa-check reddish"></i></div>
        <p class="pay-done__thank">Thanh toán đã thực hiện thành công. Trong vòng 30 phút Ismart sẽ liên hệ xác nhận thông tin giao hàng cho quý khách.</p>
        <ul class="pay-done__info">
            <li class="pay-done__info__row">
                <p class="pay-done__info__row__name">Hình thức thanh toán </p>
                <p class="pay-done__info__row__detail"><?php if ($_SESSION['cart']['success']['payment_method'] == 'direct-payment') {
                                                            echo "Thanh toán trực tiếp";
                                                        } elseif ($_SESSION['cart']['success']['payment_method'] == 'payment-home') {
                                                            echo "Thanh toán tại nhà";
                                                        } ?></p>
            </li>
            <li class="pay-done__info__row">
                <p class="pay-done__info__row__name">Tên khách hàng</p>
                <p class="pay-done__info__row__detail"><?php echo $_SESSION['cart']['success']['fullname'] ?></p>
            </li>
            <li class="pay-done__info__row">
                <p class="pay-done__info__row__name">Gmail khách hàng</p>
                <p class="pay-done__info__row__detail"><?php echo $_SESSION['cart']['success']['email'] ?></p>
            </li>
            <li class="pay-done__info__row">
                <p class="pay-done__info__row__name"> Số điện thoại </p>
                <p class="pay-done__info__row__detail"><?php echo $_SESSION['cart']['success']['phone'] ?></p>
            </li>
            <li class="pay-done__info__row">
                <p class="pay-done__info__row__name  ">Tổng giá trị hóa đơn</p>
                <p class="pay-done__info__row__detail"><?php echo currency_format($_SESSION['cart']['success']['total_price']) ?></p>
            </li>
            <li class="pay-done__info__row">
                <p class="pay-done__info__row__name"> Mã giao dịch </p>
                <p class="pay-done__info__row__detail"><?php echo $_SESSION['cart']['success']['code'] ?></p>
            </li>
        </ul>
        <br>
        <p class="pay-done__thank" style="text-align:center">Bạn có thể tra cứu chi tiết đơn hàng bạn đã mua bằng cách <b>nhập số điện thoại</b> ở phần tra cứu đơn hàng trên website</p>
        <div class="pay-done__button"><button><a href="?mod=shoppingcart&controllers=index&action=delete_success">Tiếp tục Mua sắm</a></button></div>

        <p>Mọi thắc mắc, hỗ trợ vui lòng gọi <span class="pay-done__num">083.812.9818</span> (7h30 - 22h). Cám ơn quý khách đã cho Ismart cơ hội phục vụ!</p>
    </section>
    <!-- partial -->  
</body>
</html>
