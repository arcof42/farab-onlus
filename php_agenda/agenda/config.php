<?php
$host = 'localhost';
$user = 'username';
$pass = 'password';
$db = 'agenda';
$con = mysql_connect($host,$user,$pass) or die (mysql_error());
$sel = mysql_select_db($db) or die (mysql_error());
?>