<?php global $outstanding; ?>

<div class="section" id="selling-wp">
    <div class="section-head">
        <h3 class="section-title">Sản phẩm bán chạy</h3>
    </div>
    <div class="section-detail">
        <ul class="list-item">
        <?php foreach($outstanding as $value){ ?>
                <li class="clearfix">
                <a href="?mod=product&controllers=index&action=detail_product&id=<?php echo $value['product_id'] ?>" title="" class="thumb fl-left">
                    <img src="admin/<?php echo $value['product_img'] ?>" alt="">
                </a>
                <div class="info fl-right">
                    <a href="?mod=product&controllers=index&action=detail_product&id=<?php echo $value['product_id'] ?>" title="" class="product-name"><?php echo $value['product_name'] ?></a>
                    <div class="price">
                        <span class="new"><?php echo currency_format($value['product_price']) ?></span>
                    </div>
                    <a href="?mod=product&controllers=index&action=detail_product&id=<?php echo $value['product_id'] ?>" title="" class="buy-now">Chi tiết</a>
                </div>
            </li>
            <?php }?>
        </ul>
    </div>
</div>
<div class="section" id="banner-wp">
    <div class="section-detail">
        <a href="?page=detail_product" title="" class="thumb">
            <img src="public/images/banner.png" alt="">
        </a>
    </div>
</div>
</div>
</div>
</div>