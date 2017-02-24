<?php
	include_once "common.php";
	$data=[];
 	$dataFloor=[];
// 	存放cheap表
 	$row=[];
 
//多表查询先查主表，再查字表
	function getId($table,$tableId ){
		$query="select " .$tableId. " from " .$table. " limit 5";
		$result=mysql_query($query);
		if (mysql_num_rows($result)) {
		 while ($row = mysql_fetch_assoc($result)) {
		 	$arrOne[]=$row[$tableId]; 
	 		 } 
	 	}
	 	 return $arrOne;
	}
		$arrs= getId("cheap","cheapid");
	function getProduct($table,$tableId){
		  global $arrs;
		for ($i=0; $i < count($arrs); $i++) { 
		$query="select  * from  product where cheapid = " .$arrs[$i];
		$result=mysql_query($query);
		if (mysql_num_rows($result)) {
		 while ($row = mysql_fetch_assoc($result)) {
		 		$product[]=$row; 
	 		 } 
	 	}
	}
	return $product;
}
//单表查询
	function geOneTable($table,$tableId,$num ){
	 
		if ($num=="n") {
			$query="select " .$tableId. " from " .$table;
		} else {
			$query="select " .$tableId. " from " .$table. " limit ".$num;
		}
		 $result=mysql_query($query);
		if (mysql_num_rows($result)) {
		 while ($row = mysql_fetch_assoc($result)) {
		 	$one[]=$row; 
	 		 } 
	 	}
	 	 return $one;
	}
	
	$productCheap = getProduct("cheap","cheapid");
	$floors[]=getProduct("onef","oneid");
	$floors[]=getProduct("twof","twoid");
	$floors[]=getProduct("threef","threeid");
	$floors[]=getProduct("fourf","fourid");
//多表里面的cheap
	$product[]=$productCheap;
	//单表里面的floorTitle
	$product[]= geOneTable("floorTitle","*",4);
	$product[]=$floors;
	//单表里面的onef
	$product[]= geOneTable("onef","productFather,oneid","n");
 
 
	$msg =json_encode($product);
	echo $msg;
?>