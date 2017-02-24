<?php
	include_once 'common.php';
	$page=$_GET["page"];
	$query="select * from color where page='$page'";
	$result=mysql_query($query);
	while ($row=mysql_fetch_assoc($result)){
		  $arr1[]=$row;
	      $arr[0]=$arr1;
		}
	   echo json_encode($arr);
?>



