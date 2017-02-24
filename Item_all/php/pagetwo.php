<?php
	include_once 'common.php';
$query="select * from pagetwo";
$result=mysql_query($query);

while ($row=mysql_fetch_assoc($result)){
    $arr[]=$row;
   } 
	echo json_encode($arr);

?>