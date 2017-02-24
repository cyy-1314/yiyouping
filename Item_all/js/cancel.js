var app = angular.module("ylApp", []);
		app.controller("myc", function($scope, $http) {
			$scope.cancel = function(){
				$.ajax({
					method:"get",
					url:"php/cancel.php",
//					dataType:"json",
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
		})