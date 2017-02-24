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
session_start();
  
$userId="";
if(isset($_SESSION["userId"])){
	$userId=$_SESSION["userId"];
}
  
  $name = "";
	if(isset($_POST["name"])){
		$name = $_POST["name"];
	}

	$address = "";
	if(isset($_POST["address"])){
		$address = $_POST["address"];
	}
	$street = "";
	if(isset($_POST["street"])){
		$street = $_POST["street"];
	}
	$phone = "";
	if(isset($_POST["phone"])){
		$phone = $_POST["phone"];
	}
	
	if($name!="" && $address!="" && $street!="" && $phone!=""){
		$query = "update user set name = '$name',address = '$address',street = '$street',phone = '$phone' where userId='$userId'";
		mysql_query($query);
	?>
	<script type="text/javascript">
		window.location.href = "http://localhost/OOP/Item_all/index.html";
	</script>
<?php
	}else{
	?>
	<script type="text/javascript">
		console.log($userId);
		window.location.href = "http://localhost/OOP/Item_all/orderInfo.php";
	</script>	
	<?php
	}
	?>

</html>