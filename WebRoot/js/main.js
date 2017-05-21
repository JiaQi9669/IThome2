//Qfast.add('widgets', { path: "../js/terminator2.2.min.js", type: "js", requires: ['fx'] });
//Qfast(false, 'widgets', function () {
//	K.tabs({
//		id: 'decoroll2', //焦点图包裹id
//		conId: "decoimg_a2", //大图域包裹id
//		tabId: "deconum2", //小圆点数字提示id
//		tabTn: "a",
//		conCn: '.decoimg_b2', //大图域配置class
//		auto: 1, //自动播放 1或0
//		effect: 'fade', //效果配置
//		eType: 'mouseover', // 鼠标事件
//		pageBt: true, //是否有按钮切换页码
//		bns: ['.prev', '.next'], //前后按钮配置class
//		interval: 3000// 停顿时间
//	});
//});

//页面滚动为top添加底色
//window.onscroll=function (){
//	var header=document.getElementById("header");
//	var div=document.getElementById("decoroll2");
//	var body=document.body.scrollTop;
//	if(body<600){
//		//header.hasClass("header")? header.removeClass("header"):null;
//		header.className=="header" ? header.className="":null;
//	}
//	else {
//		//header.hasClass("header") ? null : header.addClass("header");
//		header.className=="header" ? null : header.className="header";
//	}
//}

//竞赛滚动和拖拽

$(document).ready(function(){
	var bar=$("#run_bar");
	var bar_wid=bar.children().length;
	var bar_fcw=bar.children().width()+20;//子容器宽+18px margin+2px border。
	//bar.children().length>3 ? bar_wid=bar.children().length : bar_wid=4;//用来检测bar长度是否过短。
	bar.css({width:bar_wid*bar_fcw+"px"});
	var wid=-(bar.width()-bar.parent().width());
	var toLeft=0;
	var left_num=0;
	var timer=null;
	var currX = 0;
	tracking = false;
    move();
    bar.hover(function(){clearInterval(timer);},autoPlay);
    function autoPlay(){
        timer=setInterval(function(){move();},25);
    }
    autoPlay();
    function move(){
        if(toLeft==0){
        	if(left_num>wid){
        		if(left_num>0){left_num=0;toLeft=0;}
        		else	left_num--;
        	}
        	else{left_num=wid;toLeft=1;}
        }
        else if(toLeft==1){
        	if(left_num<0){
        		if(left_num<wid){left_num=wid;toLeft=1;}
        		else	left_num++;
        	}
        	else{left_num=0;toLeft=0;}
        }
        //console.log("left_num："+left_num);
        bar.css({left:left_num+"px"});
    }
    setBindings();
    setRotation(0);
function setBindings() {
  $('#run_bar').on('mousedown touchstart', function(e) {
    if (e.type == "touchstart") {interactionStart(e.originalEvent.touches[0].clientX);} 
    else {interactionStart(e.clientX);}
    e.preventDefault();
  });

  $('#run_bar').on('mousemove touchmove', function(e) {
    if (e.type == "touchmove") {interactionMove(e.originalEvent.touches[0].clientX);} 
    else {interactionMove(e.clientX);}
    e.preventDefault();
  });
  $('#run_bar').on('mouseup touchend', function(e) {interactionEnd();e.preventDefault();});
}

function interactionStart(x){currX = x;tracking = true;}

function interactionMove(x){if (tracking == false) {return;}var deltaX = x - currX;setRotation(deltaX);currX = x;}
function setRotation(x) {
  if (tracking == false) {setTimeout(function() {setBindings();}, 1000);}
  left_num+=x;
  $('#run_bar').css({left:left_num+"px"});
}
function interactionEnd() {tracking = false;}
});
//触摸显示详情
$(document).ready(function(){
	$("#mes1").mouseover(function(){$(".M1").css("top","90px");$(".M1").css("opacity","0.9");});
	$("#mes1").mouseout(function(){$(".M1").css("top","120px");$(".M1").css("opacity","0.66");});
});  
$(document).ready(function(){  
	$("#mes2").mouseover(function(){$(".M2").css("top","90px");$(".M2").css("opacity","0.9");});
	$("#mes2").mouseout(function(){$(".M2").css("top","120px");$(".M2").css("opacity","0.66");});
});  
$(document).ready(function(){
	$("#mes3").mouseover(function(){$(".M3").css("top","90px");$(".M3").css("opacity","0.9");});
	$("#mes3").mouseout(function(){$(".M3").css("top","120px");$(".M3").css("opacity","0.66");});
}); 
$(document).ready(function(){
	$("#mes4").mouseover(function(){$(".M4").css("top","90px");$(".M4").css("opacity","0.9");});
	$("#mes4").mouseout(function(){$(".M4").css("top","120px");$(".M4").css("opacity","0.66");});
});  