<?php
//	//主库地址+端口， 用户名 ， 密码
//	$db = mysql_connect("w.rdc.sae.sina.com.cn:3306","olwj2yzlnx","ix2lyx024y5hh4kh4i53y3mkhm1xk114x0lzj22l");
//	mysql_select_db('app_xiaoyuleilei',$db);//连库方式在新浪云里提供
	
?>


<?php 
    header("Content-type:text/html;charset=utf-8");
	date_default_timezone_set('PRC');//此时使用东八区时间
	
	mysql_connect("localhost","root","");//连接mysql
	mysql_select_db("item");//连接数据库
	
	mysql_query("set names utf8"); //解决乱码问题 
?>