<?php

function haschild($data, $id)
{
    foreach ($data as $value) {
        if ($value['parent_id'] === $id) {
            return true;
        }
    }
    return false;
}
//dùng đệ quy để sắp xếp mảng đa cấp
function data_tree($data, $parent_id = 0, $level = 0)
{
    $result = array();
    foreach ($data as $value) {
        if ($value['parent_id'] == $parent_id) {
            $value['level'] = $level;
            $result[] = $value;
            if (haschild($data, $value['id'])) {
                $result_child = data_tree($data, $value['id'], $level + 1);
                $result = array_merge($result, $result_child);
            }
        }
    }
    return $result;
}


function render_menu($data, $parent_id = 0, $level = 0)
{
    if ($level == 0) {
        $result = "<ul class='list-item'>";
    } else {
        $result = "<ul class='sub-menu'>";
    }
    foreach ($data as $value) {
        // show_array($value); // Xóa hoặc comment dòng này
        if ($value['parent_id'] == $parent_id) {
            $value['url'] = "?mod=product&controllers=index&action=product&id={$value['id']}";
            $result .= "<li>";
            $result .= "<a href='{$value['url']}'>{$value['list_product_name']}</a>";
            if (haschild($data, $value['id'])) {
                $result .= render_menu($data, $value['id'], $level + 1);
            }
            $result .= "</li>";
        }
    }
    $result .= "</ul>";
    return $result;
}

function render_menu_responsive($data, $parent_id = 0, $level = 1)
{
    if ($level === 0) {
        $result = "<ul id='main-menu-respon'>";
    } else{
        $result = "<ul>";
    }
    foreach ($data as $value) {
        // show_array($value); // Xóa hoặc comment dòng này
        if ($value['parent_id'] == $parent_id) {
            $value['url'] = "?mod=product&controllers=index&action=product&id={$value['id']}";
            $result .= "<li>";
            $result .= "<a href='{$value['url']}'>{$value['list_product_name']}</a>";
            if (haschild($data, $value['id'])) {
                $result .= render_menu($data, $value['id'], $level + 1);
            }
            $result .= "</li>";
        }
    }
    $result .= "</ul>";
    return $result;
}
