<?php
include "config.php";
include "models/db.php";
include "models/item.php";
$item = new Item;
$title = $_POST['title'];
$excerpt = $_POST['excerpt'];
$content = $_POST['content'];
$image = $_FILES['fileUpload']['name'];
$category = $_POST['cate'];
$featured = $_POST['featured'];
$views = $_POST['view'];
$author = $_POST['users'];
if ($item->AddItem($title, $excerpt, $content, $image, $category, $featured, $views, $author)) {
    $target_dir = "../img/";
    $target_file = $target_dir . basename($_FILES['fileUpload']["name"]);
    move_uploaded_file($_FILES["fileUpload"]["tmp_name"], $target_file);
}
header('location:items.php');