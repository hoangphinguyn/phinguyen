<?php
class Item extends Db
{
    public function getAllItem()
    {
        $sql = self::$connection->prepare("SELECT `items`.`id`,`title`,`excerpt`,`content`,`image`,`featured`,`views`,`created_at`,
`categories`.`name` AS catename, `users`.`name` AS authname 
FROM `items`,`categories`,`users`
WHERE `items`.`category` = `categories`.`id`
AND `items`.`author` = `users`.`id`
ORDER BY `created_at` DESC;");
        $sql->execute();
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items;
    }
    public function search($keyword, $start, $count)
    {
        $sql = self::$connection->prepare("SELECT * FROM `items` 
        WHERE `content` LIKE ?
        LIMIT ?,?");
        $keyword = "%$keyword%";
        $sql->bind_param("sii", $keyword, $start, $count);
        $sql->execute();
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items;
    }
    public function searchCount($keyword)
    {
        $sql = self::$connection->prepare("SELECT * FROM `items` 
        WHERE `content` LIKE ?");
        $keyword = "%$keyword%";
        $sql->bind_param("s", $keyword);
        $sql->execute();
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items;
    }
    function paginate($url, $total, $count, $page)
    {
        $totalLinks = ceil($total / $count);
        $link = "";
        for ($j = 1; $j <= $totalLinks; $j++) {
            if ($page == $j) {
                $link = $link . "<a class='btn btn-sm btn-outline-secondary m-1' href='$url&page=$j'> $j </a>";
            } else {
                $link = $link . "<a href='url&page =$j'> $j </a>";
            }
        }
        return $link;
    }
    function delete($id)
    {
        $sql = self::$connection ->prepare("DELETE FROM `items` WHERE `id`=?");
        $sql ->bind_param("i",$id);
        return $sql ->execute();
    }
    function AddItem($title, $excerpt, $content, $image, $category, $featured, $views, $author)
    {
        $sql = self::$connection ->prepare("INSERT 
        INTO `items`(`title`, `excerpt`, `content`, `image`, `category`, `featured`, `views`, `author`) 
        VALUES (?,?,?,?,?,?,?,?)");
        $sql ->bind_param("ssssiiii", $title,$excerpt,$content,$image,$category,$featured,$views,$author);
        return $sql ->execute();
    }

}
