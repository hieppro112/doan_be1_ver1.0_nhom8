<?php
class Database
{
public static $connection;
public function __construct()
{
if (!self::$connection) {
    //DB_HOST, DB_USER, DB_PASSWORD, DB_NAME,PORT)
self::$connection = new mysqli('news', 'root', '', 'localhost' ,3306);
//DB_CHARSET
self::$connection->set_charset('utf8');
}
return self::$connection;
}
}
?>