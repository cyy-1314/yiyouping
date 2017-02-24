<?php
	include_once "common.php";
	$data=[];
 	$dataFloor=[];
// 	存放cheap表
 	$row=[];
 // 	存放floorTitle表
 	$rowFloor=[];
//	获取楼层数据和cheap以及florTitle表
	
	 $dataFloor[0]=floors("onef");
	 $dataFloor[1]=floors("twof");
	$dataFloor[2]=floors("threef");
	$dataFloor[3]=floors("fourf");
	$data[0]= floors("cheap");
	$data[1]= floors("floorTitle");
	$data[2]=$dataFloor;
	$msg =json_encode($data);
   
	echo  $msg;

	
?>