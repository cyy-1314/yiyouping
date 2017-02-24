<?php
	date_default_timezone_set('PRC');
	mysql_connect("localhost","root","");
	mysql_select_db("Item");
	mysql_query("set names utf8"); 
		$data=[];
		$dataFloor=[];
		$row=[];
	    $keywords=$_GET["keywords"];
		$rowFloor=[];
		$query="select * from product where productName like '%$keywords%'"  ;
		$result=mysql_query($query);
		if (mysql_num_rows($result)) {
		 while ($row = mysql_fetch_assoc($result)) {
		 	$arrOne[]=$row; 
	 		 } 
	 	}
//		$query="select * from twof where productName like '%$keywords%'"  ;
//		$result=mysql_query($query);
//		if (mysql_num_rows($result)) {
//		 while ($row = mysql_fetch_assoc($result)) {
//		 	$arrOne[]=$row; 
//	 		 } 
//	 	}
//		$query="select * from threef where productName like '%$keywords%'"  ;
//		$result=mysql_query($query);
//		if (mysql_num_rows($result)) {
//		 while ($row = mysql_fetch_assoc($result)) {
//		 	$arrOne[]=$row; 
//	 		 } 
//	 	}
//		$query="select * from fourf where productName like '%$keywords%'"  ;
//		$result=mysql_query($query);
//		if (mysql_num_rows($result)) {
//		 while ($row = mysql_fetch_assoc($result)) {
//		 	$arrOne[]=$row; 
//	 		 } 
//	 	}
	 	//var_dump($arrOne);
	 	$msg = json_encode($arrOne);
	 	echo $msg;
?>
