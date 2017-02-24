<?php
       include_once 'common.php';
        $query1="select * from car";
		$result1=mysql_query($query1);
		while ($row=mysql_fetch_assoc($result1)){
		    $arr[]=$row;
		}
		$json = json_encode($arr);
			echo $json;
?>