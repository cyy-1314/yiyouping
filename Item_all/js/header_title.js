var sub = document.getElementById("sub");
//var searchText = document.getElementById("searchText");
sub.onclick = function(){
	var keyword = document.getElementById("keyword").value;
	if(keyword != null){
		var url = "details.html?searchText="+keyword;
		window.open(url,"_blank");
	}else{
		alert("客官，您输入的内容为空哦");
	}
	
}
