<?php

get_header();

?>
<?php
global $category;
global $outstanding;
$outstanding = get_product_outstanding();
$page = isset($_GET['page']) ? $_GET['page'] : 1;
$total_row_in_page = 5;
$post = get_post($total_row_in_page, $page);
$list_cat_post = get_list_post();
$num_page = get_page($total_row_in_page);
?>
<?php $category = get_list_cat_product(); ?>
<div id="main-content-wp" class="clearfix blog-page">
    <div class="wp-inner">
        <div class="secion" id="breadcrumb-wp">
            <div class="secion-detail">
                <ul class="list-item clearfix">
                    <li>
                        <a href="" title="">Trang chủ</a>
                    </li>
                    <li>
                        <a href="" title="">Blog</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="main-content fl-right">
            <div class="section" id="list-blog-wp">
                <div class="section-head clearfix">
                    <h3 class="section-title">Blog</h3>
                </div>
                <div class="section-detail">
                    <ul class="list-item">
                        <?php foreach ($post as $value) { ?>
                            <li class="clearfix">
                                <a href="?mod=post&controllers=index&action=detail_news&id=<?php echo $value['id']?>" title="" class="thumb fl-left">
                                    <img src="admin/<?php echo $value['post_img'] ?>" alt="">
                                </a>
                                <div class="info fl-right">
                                    <a href="?mod=post&controllers=index&action=detail_news&id=<?php echo $value['id']?>" title="" class="title"><?php echo $value['post_name'] ?></a>
                                    <span class="create-date"><?php echo $value['create_at'] ?></span>
                                    <p class="cat-post"><?php foreach ($list_cat_post as $item) {
                                            if ($item['id'] == $value['list_post_id']) {
                                                echo $item['list_post_name'];
                                            }
                                        } ?></p>
                                </div>
                            </li>
                        <?php } ?>
                    </ul>
                </div>
            </div>
            <div class="section" id="paging-wp">
                <div class="section-detail">
                    <ul class="list-item clearfix">
                        <?php for($i =1; $i<= $num_page; $i++){ ?>
                        <li>
                            <a href="?mod=post&controllers=index&action=news&page=<?php echo $i ?>" title=""><?php echo $i ?></a>
                        </li>
                        <?php } ?>
                    </ul>
                </div>
            </div>
        </div>
        <div class="sidebar fl-left">
            <div class="section" id="category-product-wp">

            </div>
            <?php get_sidebar('post') ?>

            <?php
            get_footer();

            ?>