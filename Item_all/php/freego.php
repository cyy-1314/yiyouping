<?php
	$db = mysql_connect("localhost","root","");
	 mysql_select_db("item");
	 mysql_query("set names utf8");
	 $query = "select * from freego";
	 $result = mysql_query($query);
	 $arr = [];
	 if(mysql_num_rows($result)>0){
	 	while($row = mysql_fetch_assoc($result)){
			$arr[] = $row;
	 	}
		$json = json_encode($arr);
		echo $json;
	 }
	 
	
	?>