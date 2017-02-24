<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<title></title>
	</head>
	<link rel="stylesheet" type="text/css" href="css/reset.css" />
	<link rel="stylesheet" type="text/css" href="css/supershop.css" />
	<script src="js/angular.min.js" type="text/javascript" charset="utf-8"></script>

	<body>
		<!--导航栏-->
		<div class="header" ng-app="ylApp">
			<div class="header_top" ng-controller="myc">
				<div class="top1">
					<a href="php/login.php">
						"欢迎来到二优品!"&nbsp;
					</a>
					<a id="logins" href="php/login.php">
						<?php
						include_once "php/common.php";
						session_start();
						$userId="";
						if(isset($_SESSION["userId"])){
							$userId = $_SESSION["userId"];
						}
						$query = "select * from user where userId='$userId'";
						$result = mysql_query($query);
						$row = mysql_fetch_assoc($result);
						$email = $row["email"];
						if($email != ""){
							echo $email;
						}else{
							echo "登录";
						}
						?>
					</a> |
					<a href="register.html">注册</a>|
					<!--<a href="#" id="zhuxiao"  ng-click="cancel()">注销</a>-->
					<a href="#" id="zhuxiao" >注销</a>
				</div>
				<div class="top2">
					<div class="top2_page">
						<ul class="quick_menu">
							<li class="yphd help" style="position: relative;z-index: 999;margin-right: -10px;">
								<a href="#">帮助中心&#9660;</a>
								<div class="menu_hd_panel" style="background-color: white; ">
									<dl>
										<dt>帮助中心</dt>
										<dd>
											<a href="#">注册与登录</a>
											<a href="/showhtml/show_8.html">购买流程</a>
											<a href="/showhtml/show_13.html">优惠券使用 </a>
											<a href="/showhtml/show_19.html">货到付款</a>
											<a href="/showhtml/show_20.html">支付问题</a>
											<a href="/showhtml/show_24.html">退换货须知</a>
											<a href="/showhtml/show_27.html">关于退款</a>
											<a href="/showhtml/show_22.html">配送方式</a>
										</dd>
									</dl>
									<dl>
										<dt>客服专线</dt>
										<span class="cff4500">400-0099-230</span>
									</dl>
									<dl>
										<dt>微信客服：<span class="cff4500">eyoupin_com</span></dt>
									</dl>
								</div>
							</li>
							<li>|</li>
							<li class="yphd" style="position: relative;z-index: 999;margin-right: -10px;">
								<a href="#">微博微信&#9660;</a>
								<div class="menu_hd_panel" style="background-color: white;">
									<dl>
										<dt>新浪微博</dt>
										<dd>
											<a href="#"><img src="img/sinaicon.gif" /></a>
										</dd>
									</dl>
									<dl>
										<dt>微信(微信扫一扫加我)</dt>
										<dd>
											<img src="img/wc.jpg" />
										</dd>
									</dl>
								</div>
							</li>
							<li>|</li>
							<li>
								<a href="#">收藏本站</a>
							</li>
							<li>|</li>
							<li>
								<a href="#">收藏夹</a>
							</li>
							<li>|</li>
							<li class="yphd" style="position: relative;margin-right: -10px;">
								<a href="#">我的订单&#9660;</a>
								<div style="position: relative;" class="menu_hd_page">
									<ul class="menu_hd">
										<li>
											<a style="color: #FE7B5C;" href="#">我的订单&#9650;</a>
										</li>
										<li>
											<a href="#">订单管理</a>
										</li>
										<li>
											<a href="">会员中心</a>
										</li>
									</ul>
								</div>
							</li>
							<li>|</li>
							<li class="yphd" style="position: relative;margin-right: -10px;">
								<a href="#">优品互动&#9660;</a>
								<div style="position: relative;" class="menu_hd_page">
									<ul class="menu_hd">
										<li>
											<a style="color: #FE7B5C;" href="#">优品互动&#9650;</a>
										</li>
										<li>
											<a href="#">积分大转盘</a>
										</li>
										<li>
											<a href="">每日签到</a>
										</li>
										<li>
											<a href="">苹果查询</a>
										</li>
									</ul>
								</div>
							</li>
							<li>|</li>
							<li>
								<a href="index.html">优品网首页</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<!--版头-->
			<div style="margin: auto;width: 1200px; height: 100px;">
				<div class="logo_search">
					<div class="logo">
						<a href="index.html" target="_blank">
							<img src="img/logo.jpg" width="203" height="69">
						</a>
					</div>
					<div class="search">
						<div class="search_1">
							<div class="search_1_1">
								<input style="outline: none;" type="text" name="keyword" id="keyword">
							</div>
							<!--搜索框提交按钮------------------>
							<div class="search_1_2">
								<button cilck="search()" id="sub" style="width: 80px;height: 35px;opacity: 0;" name="" type="image" src="img/search_1.gif">
							</div>
						</div>
						<div class="search_1_3">
							搜索：
							<!--<script language="JavaScript1.1" src="/signin/ad/?adid=7"></script>-->
							<a href="http://127.0.0.1/Item_all/details.html?searchText=iphone5s" class="linka5a5">iphone5s</a>
							<a href="http://127.0.0.1/Item_all/details.html?searchText=iphone4s" class="linka5a5">iphone4s</a>
							<a href="http://127.0.0.1/Item_all/details.html?searchText=ipad" class="linka5a5">ipad</a>
							<a href="http://127.0.0.1/Item_all/details.html?searchText=i9500/S4" class="linka5a5">i9500/S4</a>
							<a href="http://127.0.0.1/Item_all/details.html?searchText=n7100" class="linka5a5">n7100</a>
						</div>
					</div>
				<div class="search_right"></div>
			</div>

			<div class="nav">
				<div class="header_line" style="width: 1200px;margin: auto;height: 43px;background-color: red;">
					<div class="fenlei">
						<h3 style="color: white;font-size: 16px; font-weight: bold;">全部商品分类  &#9660;</h3>
					</div>
					<div class="layout">
						<ul>
							<li><a href="index.html">首页</a></li>
							<li><a href="pageTwo.html">促销汇</a></li>
							<li><a href="pageThree.html">品牌汇</a></li>
							<li><a href="details.html">新品</a></li>
							<li class="qwgo"><a href="#">趣味购</a>
								<div class="qwnav">
									<p>
										<strong>星座配件</strong>
										    <a href="/zt/xingzuo/1/">白羊座</a>
											<a href="/zt/xingzuo/2/">金牛座</a>
											<a href="/zt/xingzuo/3/">双子座</a>
											<a href="/zt/xingzuo/4/">巨蟹座</a>
											<a href="/zt/xingzuo/5/">狮子座</a>
											<a href="/zt/xingzuo/6/">处女座</a>
											<a href="/zt/xingzuo/7/">天秤座</a>
											<a href="/zt/xingzuo/8/">天蝎座</a>
											<a href="/zt/xingzuo/9/">射手座</a>
											<a href="/zt/xingzuo/10/">摩羯座</a>
											<a href="/zt/xingzuo/11/">水瓶座</a>
											<a href="/zt/xingzuo/12/">双鱼座</a>
									  </p>
									  <hr />
										<p><strong>帮我选购</strong>
											<a href="/kpl/">看评论选购</a>
										</p>
										<hr />
										<p><strong>互动有奖</strong>
											<a href="/huodong/qiandao/">每日签到</a>
											<a href="/huodong/djp/">超级大转盘</a>
										</p>
								</div>

							</li>
							<li><a href="#">夜总惠</a></li>
							<li><a href="iphone.html">苹果序列号查询</a></li>
							<li><a href="shopfree.html">超级0元购</a></li>
						</ul>
					</div>
					<div style="float:right; color: #fff; margin-top:3px;">
						<div class="so1bew">
							<div class="so1bew_1">
								<ul id="navbuy">
									<li class="topli">
										<script language="JavaScript1.1" src="/signin/c_login1/"></script>
										<a class="topa" href="car.html">
											<div class="cart">购物车<span class="cff4500">0</span>件</div>
										</a>
									</li>
								</ul>
								<ul class="downul">
									<h3>最近加入的宝贝：</h3>
									<script language="JavaScript1.1" src="/signin/mybuy/"></script>
									<p class="plook">
										<a href="/order/shopbuy/?action=show" class="look"><img src="img/img01.gif" alt="加入购物车" width="72" height="20"></a>
									</p>
								</ul>
							</div>
							<div class="so1bew_2"><a href="#">立即结算</a></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		</div>
	</body>
	<script src="js/JQuery-3.1.1.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/header_title.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/cancel.js" type="text/javascript" charset="utf-8"></script>
	 <script type="text/javascript">
		
//	 	var app = angular.module("ylApp", []);
//		app.controller("myc", function($scope, $http) {
//			$scope.cancel = function(){
//				$.ajax({
//					method:"get",
//					url:"php/cancel.php",
////					dataType:"json",
//					success:function(data){
//						var obj = JSON.parse(data);
//						console.log(data);
//						console.log(obj);
//						if(obj.ecode==0){
//							$("#logins").html(obj.name);
//						}
//						
//					},
//					error:function(errors){
//						console.log("失败");
//					}
//				})
//			}
//		})

		var zhuxiao =document.getElementById("zhuxiao")
			zhuxiao.onclick = function(){
			$.ajax({
					method:"get",
					url:"php/cancel.php",
 
					success:function(data){
						var obj = JSON.parse(data);
						console.log(data);
						console.log(obj);
						if(obj.ecode==0){
							$("#logins").html(obj.name);
						}
						
					},
					error:function(errors){
						console.log("失败");
					}
				})
		}
	 </script>
</html>