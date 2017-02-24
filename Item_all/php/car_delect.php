<?php
include_once("common.php");
$del=$_GET["del"];
//echo $del;
//$arr[]=$del;
//$query="update car set delect=1 where carId='$del'";
$query="delete from car where carId='$del'";
$result=mysql_query($query);
//$query1="select * from car where delect=0";
$query1="select * from car";
$result1=mysql_query($query1);
if (mysql_num_rows($result1)>0){
	while ($row=mysql_fetch_assoc($result1)){
    $arr[]=$row;
   } 
	$json = json_encode($arr);
	echo $json;
}else{
	echo '{"msg":"用户名可用","errcode":0}';
	}
	
		
		
		

?>