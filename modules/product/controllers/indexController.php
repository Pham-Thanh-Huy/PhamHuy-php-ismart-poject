<?php

function construct()
{
    load_model('index');
    load('helper', 'format');
    load('helper', 'datatree');
}


function productAction()
{
    if(!isset($_GET['id'])){
        redirect("?mod=home&controllers=index&action=home");
    }
    load_view('product');
}

function detail_productAction()
{

    load_view('detail_product');
}

function searchAction()
{

        if (empty($_POST['search_product']) && !isset($_GET['product_search'])) {
            echo "<script>alert('Bạn không được để trống khi tìm kiếm')</script>";
            echo "<script>window.location.href = '?mod=home&controllers=index&action=home';</script>";
            exit;
        } else {
            load_view('search');
        }
  
}


