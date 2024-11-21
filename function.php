<?php
class function extends Database{
    public function getAllProducts(){
        $sql = self::$connection->prepare("SELECT * From `items`");
        $sql->execute();
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items;
    }

    public function getNewProducts($start,$count){
        $sql = self::$connection->prepare("SELECT * From `items`
        ORDER BY `created_at` DESC
        LIMIT ?,?");
        $sql -> bind_param("ii",$start,$count);
        $sql->execute();
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items;
    }
}
?>