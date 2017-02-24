<?php
	$email = $_POST["email"];
	
	include_once "common.php";
	
	$query = "select * from user where email='$email'";
	$result = mysql_query($query);
	if(mysql_num_rows($result)==1){
		echo '{"msg":"此Email已被占用,重新输入！","errcode":1}';

	}else{
		if($email!=""){
			echo '{"msg":"恭喜您！Email可以使用！","errcode":0}';
		}else{
			echo '{"msg":"Email不能为空！","errcode":0}';
		}
		
	}

?>