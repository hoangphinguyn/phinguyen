<?php 
class Author extends Db
{
    function getAllAuthors()
    {
        $sql = self::$connection->prepare("SELECT * FROM `users`");
        $sql->execute();
        $item =array();
        $item = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $item;
    }
}
?>