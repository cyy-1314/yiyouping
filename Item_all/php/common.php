<?php 
    header("Content-type:text/html;charset=utf-8");
    //设置东八区时间
	date_default_timezone_set('PRC');
	//链接数据库
//	$db = mysql_connect("w.rdc.sae.sina.com.cn:3306","olwj2yzlnx","ix2lyx024y5hh4kh4i53y3mkhm1xk114x0lzj22l");
//	mysql_select_db('app_xiaoyuleilei',$db);//连库方式在新浪云里提供

	mysql_connect("localhost","root","");
	//数据库名字
	mysql_select_db("item");
	//设置数据库语言可以是中文
	mysql_query("set names utf8");  
	$pagesize=5;
	 
	 
	 
	 function JSON($str){
		$json = json_encode($str);
		return preg_replace("#\\\u([0-9a-f]+)#ie","iconv('UCS-2','UTF-8', pack('H4', '\\1'))",$json);
	}
	
?>
 