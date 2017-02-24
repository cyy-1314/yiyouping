<?php
include_once 'common.php';
$cheapId=$_GET["cheapId"];
//echo $cheapId;
//$query2="update cheap set shuliang=1 where cheapId='$cheapId'";
//$result2=mysql_query($query2);
$query="select * from product where cheapId='$cheapId'";
$result=mysql_query($query);
while ($row=mysql_fetch_assoc($result)){
		 $arr1[]=$row;
		 $arr[0]=$arr1;
		 $colorNum=$row["colorNum"];
		 $name=$row["name"];
	 }

$query1="SELECT * FROM color WHERE type='$name' limit ".$colorNum;
$result1=mysql_query($query1); 
while ($row1=mysql_fetch_assoc($result1)){
		 $arr2[]=$row1;
		 $arr[1]=$arr2;
	}
   echo json_encode($arr);	
//$query1="select * from selectImg";
//$result1=mysql_query($query1);
//while ($row1=mysql_fetch_assoc($result1)){
//	  $arr2[]=$row1;
//	   $arr[1]=$arr2;
//	}
////返回一个以 JSON 形式表示的 string
// echo json_encode($arr);
?>



