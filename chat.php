<?
function getQuery($query){
  $res = mysql_query($query) or die(mysql_error());
  $row = mysql_fetch_row($res);
  $var = $row[0];
  return $var;
}

function setQuery($query){
  $res = mysql_query($query) or die(mysql_error());
  return $res;
}

@mysql_connect('localhost', 'test1', 'ceveequ4ahr9uesieG3z') or die("Не могу соединиться с MySQL.");
@mysql_select_db('test1') or die("Не могу подключиться к базе.");
@mysql_query('SET NAMES utf8;');

switch($_GET["event"]){
  case "get":
    $max_message = 20;
    $count = getQuery("SELECT COUNT(`id`) FROM `mess`;");
    $m = getQuery("SELECT MAX(id) FROM `mess` WHERE 1");
    $mg = $_GET['id'];
    if($mg == 0){$mg = $m-$max_message;}
    if($mg < 0){$mg = 0;}
    $msg = array();

    if($mg<$m){
      $query = "SELECT * FROM `mess` WHERE `id`>".$mg." AND `id`<=".$m." ORDER BY `id` ";
          $res = mysql_query($query) or die(mysql_error());
      while($row = mysql_fetch_array($res)){
        $msg[] = array("id"=>$row['id'], "name"=>$row['author'], "txt"=>$row['txt'],"date"=>$row['date']);
      }
    }
    echo json_encode($msg);
  break;

  case "set":
    $msg = htmlspecialchars($_GET["msg"]);
    $name = htmlspecialchars($_GET["author"]);
    setQuery("INSERT INTO mess(`author`, `txt`, `date`) VALUES ('$name', '$msg','".date("Y-m-d h:i:sa")."')");
  break;
}
