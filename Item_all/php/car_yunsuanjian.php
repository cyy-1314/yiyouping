<?php
		include_once 'common.php';
	    $carId=$_GET["carId"]; 
	    $shuliangjian=$_GET["shuliangjian"];
	    
	     $query="select * from car where carId='$carId'";
	    $result=mysql_query($query);
	    while ($row=mysql_fetch_assoc($result)){
		$currentPrice=$row["currentPrice"];
	    $sum=$currentPrice*($shuliangjian-1);
     }
	    if($shuliangjian>1){
		    	$query="update car set shuliang =$shuliangjian-1,sum=$sum where carId='$carId'";
		    $result=mysql_query($query);
	    }
   		$query1="select * from car";
		$result1=mysql_query($query1);
		while ($row1=mysql_fetch_assoc($result1)){
			  $arr[]=$row1;
			  }
		//返回一个以 JSON 形式表示的 string
		   echo json_encode($arr);

?>


  




	
