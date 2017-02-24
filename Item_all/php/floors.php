<?php
	include_once "common.php";

   $query="select * from cheap limit 5";
		$result=mysql_query($query);
		
		if (mysql_num_rows($result)) {
		 while ($row = mysql_fetch_assoc($result)) {
		 	$arrOne[]=$row; 
	 		 } 
	 	}
	  
	 	$msg =json_encode($arrOne);
	echo  $msg;
?>