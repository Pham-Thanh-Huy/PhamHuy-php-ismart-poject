<?php

function construct(){
load_model('index');
load('helper', 'datatree');
load('helper', 'format');
}


function newsAction(){
    load_view('news');
}

function detail_newsAction(){
    load_view('detail_news');
}