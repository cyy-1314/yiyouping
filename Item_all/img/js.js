<!--���߿ͷ��뷵������-->
function b(){
	h = $(window).height();
	t = $(document).scrollTop();
	if(t > h){
		$('#gotop').show();
	}else{
		$('#gotop').hide();
	}
}
$(document).ready(function(e) {
	b();
	$('#gotop').click(function(){
		$(document).scrollTop(0);	
	})
	$('#weixin').hover(function(){
			$(this).attr('id','code_hover');
			$('#code_img').show();
		},function(){
			$(this).attr('id','weixin');
			$('#code_img').hide();
	})
});

$(window).scroll(function(e){
	b();		
})

//��߷��ർ��
function subindexMenu(){
	$("#js-menu").find("li").hover(function(){
		$(this).css("z-index","9999");
		$(this).find("span a").addClass("on");
		$(this).find(".listbox").show();
	},function(){
		$(this).removeAttr("style");
		$(this).find("span a").removeClass("on");
		$(this).find(".listbox").hide();
	});
}
$(function(){
subindexMenu();
})

//tabҳ
function nTabs(thisObj,Num)
{
var tabObj = thisObj.parentNode.id;
var tabList = document.getElementById(tabObj).getElementsByTagName("li");
for(i=0; i <tabList.length; i++)
{
  if (i == Num)
  {
   thisObj.className = "active"; 
   document.getElementById(tabObj+"_Content"+i).style.display = "block";
  }
  else{
   tabList[i].className = "normal"; 
   document.getElementById(tabObj+"_Content"+i).style.display = "none";
  }
} 
}
//���ﳵ����
function menuFix() {
 var sfEls = document.getElementById("nav").getElementsByTagName("li");
 for (var i=0; i<sfEls.length; i++) {
  sfEls[i].onmouseover=function() {
  this.className+=(this.className.length>0? " ": "") + "sfhover";
  }
  sfEls[i].onMouseDown=function() {
  this.className+=(this.className.length>0? " ": "") + "sfhover";
  }
  sfEls[i].onMouseUp=function() {
  this.className+=(this.className.length>0? " ": "") + "sfhover";
  }
  sfEls[i].onmouseout=function() {
  this.className=this.className.replace(new RegExp("( ?|^)sfhover\\b"), 

"");
  }
 }
}
window.onload=menuFix;
$(document).ready(function(){
  $(".del").click(function(){
    $(this).parents(".babypart").addClass("delete");
  });
});
//��ͼ�����

	$(function(){
		$(".floor-maskItem").mouseover(function(){
			$(this).addClass("eyou").parent().addClass("hover");
		}).mouseout(function(){
			$(this).removeClass("eyou").parent().removeClass("hover");
		});
	})
	
//=������عر�֧������Ч����
function openShutManager(oSourceObj,oTargetObj,shutAble,oOpenTip,oShutTip){
var sourceObj = typeof oSourceObj == "string" ? document.getElementById(oSourceObj) : oSourceObj;
var targetObj = typeof oTargetObj == "string" ? document.getElementById(oTargetObj) : oTargetObj;
var openTip = oOpenTip || "";
var shutTip = oShutTip || "";
if(targetObj.style.display!="none"){
   if(shutAble) return;
   targetObj.style.display="none";
   if(openTip  &&  shutTip){
    sourceObj.innerHTML = shutTip; 
   }
} else {
   targetObj.style.display="block";
   if(openTip  &&  shutTip){
    sourceObj.innerHTML = openTip; 
   }
}
}
function MM_goToURL() { //v3.0
  var i, args=MM_goToURL.arguments; document.MM_returnValue = false;
  for (i=0; i<(args.length-1); i+=2) eval(args[i]+".location='"+args[i+1]+"'");
}