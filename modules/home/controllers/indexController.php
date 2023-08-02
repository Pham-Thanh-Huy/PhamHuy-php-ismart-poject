<?php 
function construct(){
    load_model('index');
    load('helper', 'datatree');
    load('helper', 'format');
    
}


function homeAction(){
    load_view('home');
}

function aboutAction(){
    load_view('about');
}

function contactAction(){
    load_view('contact');
}