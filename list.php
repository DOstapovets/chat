<?php
include 'config.php';
$query = 'SELECT * FROM `users` WHERE `users_status` = 1';
$list = mysql_query($query) or die(mysql_error());
      while($row = mysql_fetch_array($list)){
        $st[] = array("login"=>$row['users_login']);
      }
echo json_encode($st);
?>