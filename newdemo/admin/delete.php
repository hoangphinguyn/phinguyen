<?php
//xu ly xoa item (id), category (cate_id), author (author_id)
include "config.php";
include "models/db.php";
include "models/item.php";
$item = new Item;
if(isset($_GET['id'])){
    //xu ly xoa item 
    $id = $_GET['id'];
    $item->delete($id);
    header('location:items.php');
}  elseif (isset($_GET['cate_id'])){
    //xu ly cate
} elseif (isset($_GET['author_id'])){
    //xu ly xoa authotr
}else{
    //ko xoa, tro lai trang danh sach
}
?>
