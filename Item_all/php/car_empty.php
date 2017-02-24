<?php
	include_once 'common.php';
   $query="delete from car";
$result=mysql_query($query);
//  $query1="select * from car";
//  $result1=mysql_query($query1);
//  while ($row=mysql_fetch_assoc($result1)){
//			 $arr[]=$row;
//	}
//	   echo json_encode($arr);
$query1="select * from car where delect=0";
$result1=mysql_query($query1);
if (mysql_num_rows($result1)>0){
	while ($row=mysql_fetch_assoc($result1)){
    $arr[]=$row;
   } 
	$json = json_encode($arr);
	echo $json;
}else{
	echo '{"msg":"购物车已空","errcode":0}';
	}

?>