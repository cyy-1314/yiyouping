<?php
include_once 'common.php';
    $cheapId=$_GET["cheapId"];
     $shuliang=$_GET["shuliang"];
//   echo $shuliang+1;
//   echo $cheapId;
    $query="update cheap set shuliang=$shuliang+1 where cheapId='$cheapId'";
   $result=mysql_query($query);
 
  $query1="select * from cheap";
$result1=mysql_query($query1);
while ($row1=mysql_fetch_assoc($result1)){
	  $arr2[]=$row1;
	   $arr[0]=$arr2;
	}
//返回一个以 JSON 形式表示的 string
   echo json_encode($arr);
    ?>