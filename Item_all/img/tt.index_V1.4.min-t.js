$(function () {
  ToolUnit.MouseSlide();
  ToolUnit.UnfoldDiv();
  ToolUnit.BrandSpecialButton();
  ToolUnit.BrandWallButton();
  setTimeout(ToolUnit.SeckillDiv, 1000);
  IndexBodyScroll.Initbodybind();
  IndexBodyScroll.InitSetIntervalBind();
  TTW.homePage.init();
  var m_lazyload = null;
  m_lazyload = $("img[_src]").lazyload({ placeholder: "../images/grey.gif", effect: "fadeIn" })
  setInterval(function () { UpdateGroupBuyRemainTime("groupbuy_timer"); }, 1000);
  setInterval(function () { UpdateGroupBuyRemainTime("seckilltimer"); }, 1000);
});

var ToolUnit = {
  //商品图片模糊层切换
  MouseSlide: function () {
    $("ul li").hover(
      function () {
        $(this).addClass("show_add_mask");
      },
      function () {
        $(this).removeClass("show_add_mask");
      });
  },
  //品牌滑过效果
  UnfoldDiv: function () {
    $("div.w250_con_show").hover(
      function () {
        $(this).siblings().children("div.w250_con_show_img").css("display", "none");
        $(this).children("div.w250_con_show_img").css("display", "block");
      });
  },
  //品牌特卖
  BrandSpecialButton: function () {
    //鼠标移上品牌特卖上后，显示左右按钮
    $("#brandspecialDiv").hover(
      function () {
        var count = $("#brandspecialcontent>li").length;
        if (count > 4) {
          $("#brandspecial_left_arrow").css("display", "block");
          $("#brandspecial_right_arrow").css("display", "block");
        }
      }
      , function () {
        $("#brandspecial_left_arrow").css("display", "none");
        $("#brandspecial_right_arrow").css("display", "none");
      });

  },
  //品牌墙
  BrandWallButton: function () {
    //鼠标移上品牌墙上后，显示左右按钮
    $("#brandwallDiv").hover(
      function () {
        var count = $("#brandwallcontent>ul:first li").length;
        if (count > 7) {
          $("#brandwall_left_arrow").css("display", "block");
          $("#brandwall_right_arrow").css("display", "block");
        }
      }
      , function () {
        $("#brandwall_left_arrow").css("display", "none");
        $("#brandwall_right_arrow").css("display", "none");
      });
 
  },

};

var body_scroll_obj = {
  //大家这样说
  everyonesay: {
    _offset: $("#everyonesaycontainer").width() + 257,
    _body: "everyonesaycontent",
    _times: 800,
    _top_before_animate: function () {
      $("#everyonesaycontent>li img").each(function () {
        if ($(this).attr("_src") != undefined && $(this).attr("type1") == undefined) {
          $(this).attr("src", $(this).attr("_src"));
          $(this).attr("type1", "1");
        }
      });
      //复制前4个，插入到最后一个后面
      $("#everyonesaycontent>li:last").after($("#everyonesaycontent>li:lt(4)").clone());
    },
    _top_after_function: function () {
      $("#everyonesaycontent>li img").each(function () {
        if ($(this).attr("_src") != undefined && $(this).attr("type1") == undefined) {
          $(this).attr("src", $(this).attr("_src"));
          $(this).attr("type1", "1");
        }
      });
      //删除前4个，同时把left设置成0
      $("#everyonesaycontent>li:lt(4)").remove();
      $("#" + this._body).css("top", "0");
    }
  },
  //公告
  notice: {
    _offset: $("#noticecontainer").height(),
    _body: "noticecontent",
    _times: 800,
    _top_before_animate: function () {
      //复制前4个，插入到最后一个后面
      $("#noticecontent>li:last").after($("#noticecontent>li:lt(1)").clone());
    },
    _top_after_function: function () {
      //删除前4个，同时把left设置成0
      $("#noticecontent>li:lt(1)").remove();
      $("#" + this._body).css("top", "0");
    }
  }
};

var IndexBodyScroll = {
  //绑定参数
  body_bind_params: {
    count: 8,
    id: [],
    param: [body_scroll_obj.brandspecialsell, body_scroll_obj.brandspecialsell, body_scroll_obj.groupbuy, body_scroll_obj.groupbuy, body_scroll_obj.seckill, body_scroll_obj.seckill, body_scroll_obj.brandwall, body_scroll_obj.brandwall],
    func: [tt_l_scroll, tt_r_scroll, tt_l_scroll, tt_r_scroll, tt_l_scroll, tt_r_scroll, brandwall_l_scroll, brandwall_r_scroll]
  },
  //绑定单击事件
  Initbodybind: function () {
    for (var i = 0; i < this.body_bind_params.count; i++) {
      $("#" + this.body_bind_params.id[i]).bind("click",
        {
          obj: this.body_bind_params.param[i]
        },
        this.body_bind_params.func[i]);
    }
  },
  //绑定定时器
  InitSetIntervalBind: function () {
    setInterval(function () {
      tt_top_scrll(body_scroll_obj.notice); tt_top_scrll(body_scroll_obj.everyonesay);
    }, 3000);
  }
};

//品牌墙左滚动事件
function brandwall_l_scroll(objevent) {
  $("#brandwallcontent li img").each(function () {
    if ($(this).attr("_src") != undefined && $(this).attr("type1") == undefined) {
          $(this).attr("src", $(this).attr("_src"));
          $(this).attr("type1", "1");
        }
  });
  var obj = objevent.data.obj,
      _w = obj._offset,
      _showbox = $("#" + obj._body);

  var distance = null;

  if (obj._pageindex == obj._pagecount - 1) {
    obj._pageindex = 0;
    distance = "+" + 6;
  }
  else {
    obj._pageindex++;
    distance = "-" + (_w * obj._pageindex - 6);
  }

  _showbox.stop(true, true).animate({
    left: distance
  }, obj._times);

}
//品牌墙右滚动事件
function brandwall_r_scroll(objevent) {
  var obj = objevent.data.obj,
  _w = obj._offset,
  _showbox = $("#" + obj._body);
  if (obj._pageindex > 0) {
    obj._pageindex--;
    _showbox.stop(true, true).animate({
      left: "+=" + _w
    }, obj._times);
  }
}

//左滚动事件
function tt_l_scroll(objevent) {
  var obj = objevent.data.obj,
      _w = obj._offset,
      _showbox = $("#" + obj._body);
  obj._l_before_animate();
  _showbox.animate({
    left: "-=" + _w
  },
      obj._times,
      function () {
        obj._l_after_function()
      });
}

//右滚动事件
function tt_r_scroll(objevent) {
  var obj = objevent.data.obj,
  _w = obj._offset,
  _showbox = $("#" + obj._body);
  obj._r_before_animate();
  _showbox.animate({
    left: "+=" + _w
  },
  obj._times,
  function () {
    obj._r_after_function()
  });
}

//向上滚动事件
function tt_top_scrll(objevent) {
  var obj = objevent,
  _w = obj._offset,
  _showbox = $("#" + obj._body);
  obj._top_before_animate();
  _showbox.animate({
    top: "-=" + _w
  },
  obj._times,
  function () {
    obj._top_after_function()
  });
}




