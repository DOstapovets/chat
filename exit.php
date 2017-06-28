<?
        include "config.php";

        mysql_query("UPDATE users SET users_status='0' WHERE users_id='".$_POST['id']."'") or die("MySQL Error: " . mysql_error());
        setcookie('id', '', time() - 60*60*24*30, '/');
        setcookie('hash', '', time() - 60*60*24*30, '/');
      ?>