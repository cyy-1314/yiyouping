<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>login</title>
		<link rel="stylesheet" type="text/css" href="../css/login.css" />
		<script src="../js/jquery1.42.min.js"></script>
	</head>

	<body>
		<div class="loginBox">
			<div class="login1">
				<div class="login1_1">
					<a href="../index.html">
						<img class="logo" src="../img/logo.jpg" />
					</a>
				</div>
				<div class="login1_2">
					<a href="../index.html">
						网站首页
					</a>
					|
					<a href="#">
						帮助中心
					</a>
				</div>
			</div>
			<?php
			include_once "common.php";

			session_start();

			$userId = "";
			if (isset($_SESSION["userId"])) {
				$userId = $_SESSION["userId"];
			}
			$query = "select * from user where userId=$userId";
			$result = mysql_query($query);
			$email = "";
			if ($result) {
				$row = mysql_fetch_assoc($result);
				$email = $row["email"];
			}
			?>
			<div class="login2">
				<div class="login2_1">
					<form action="login_server.php" method="post" class="login2_1_1" OnSubmit="return checkdata()" onReset="return ResetForm();">
						<div class="input1">
							Email:
							<input type="text" name="email" id="email" class="ipt1" value="<?php echo $email;?>">
						</div>
						<div class="input2">
							密码:
							<input type="password" name="pwd" id="pwd" class="ipt1">
						</div>
						<div class="login2_1_2">
							<input type="submit" class="nlog_submit" value=" " title="登录" onmousemove='this.className="nlog_submit1"' onmouseout='this.className="nlog_submit"'>
							<a href="#">
								忘记密码？
							</a>
						</div>
					</form>

					<div id="isFail" style="color:red;padding-left: 50px;">
						<?php
						$isFail = "";
						if (isset($_GET["isFail"])) {
							$isFail = $_GET["isFail"];
						}
						echo $isFail;
						?>
					</div>

					<div class="login2_1_3">
						使用合作网站账号登录：
					</div>
					<div class="login2_1_4">
						<a class="nreg_zpay" href="http://eyoupin.com/alilogin/alipay_auth_authorize.asp">
							支付宝
						</a>
						|
						<a class="nreg_sina" href="#">
							新浪微博
						</a>
						|
						<a class="nreg_qq" href="#">
							QQ
						</a>
					</div>
				</div>
				<div class="login2_2">
					<div class="login2_2_1">
						你还不是一优品用户？
					</div>
					<div class="login2_2_2">
						现在立即注册成为一优品用户，我们会为您提供更专业、更细致、更周到的服务，享受便宜又放心的购物乐趣。
					</div>
					<div class="login2_2_3">
						<a href="../register.html" class="nlog_reg " title="注册新用户" onmousemove='this.className="nlog_reg1"' onmouseout='this.className="nlog_reg"'></a>
					</div>
				</div>

			</div>
			<div class="login3">
				<!--版权信息-->
				<div>
					<span>Copyright 2012</span>
					<a href="#">
						一优品
					</a>
					<span> All Rights Reserved </span>
				</div>
			</div>

			<div style="clear: both"></div>
		</div>

	</body>
</html>