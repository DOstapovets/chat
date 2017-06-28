<?php
define("db_host","db_host");
define("db_login","db_login");
define("db_pass","db_pass");
define("db_name","db_name");
mysql_connect(db_host,db_login,db_pass) or die("MySQL Error: " . mysql_error());
mysql_query("set names utf8") or die ("<br>Invalid query: " . mysql_error());
mysql_select_db(db_name) or die ("<br>Invalid query: " . mysql_error());
$error[0] = 'Я вас не знаю';
$error[1] = 'Включи куки';
$error[2] = 'Тебе сюда нельзя';
?>