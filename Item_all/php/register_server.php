
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
</head>
<body>
	
</body>
<?php
	include_once "common.php";
	
	$email = "";
	if(isset($_POST["email"])){
		$email = $_POST["email"];
	}
	$pwd = "";
	if(isset($_POST["pwd"])){
		$pwd = $_POST["pwd"];
	}
	$repwd = "";
	if(isset($_POST["repwd"])){
		$repwd= $_POST["repwd"];
	}
		
	if($pwd==$repwd && $pwd!="" && $repwd!="" && $email!=""){
		$query = "insert into user (email,pwd,rePwd) values ('$email','$pwd','$repwd')";
		mysql_query($query);
	?>
	<script type="text/javascript">
		window.location.href = "http://127.0.0.1/Item_all/index.html";
	</script>
	<?php
	}else{
	?>
	<script type="text/javascript">
		window.location.href = "http://127.0.0.1/Item_all/register.html";
	</script>	
	<?php
	}
	
?>

</html>