//$( window ).on( "load", function(){window.onscroll=function(){if(checkscrollside()){};}});
//function checkscrollside(){
//  var $aPin = $( "#main>div" );
//  var lastPinH = $aPin.last().get(0).offsetTop + Math.floor($aPin.last().height()/2);//创建【触发添加块框函数waterfall()】的高度：最后一个块框的距离网页顶部+自身高的一半(实现未滚到底就开始加载)
//  var scrollTop = $( window ).scrollTop()//注意解决兼容性
//  var documentH = $( document ).height();//页面高度
//  return (lastPinH < scrollTop + documentH ) ? true : false;//到达指定高度后 返回true，触发waterfall()函数
//}
$(document).ready(function(){
	var wrap=document.getElementById("us_scrubber");
	var year=document.getElementsByClassName("content_year");
	for(var i=0;i<=year.length-1;i++){
		var yearName=year[i].innerHTML;
		var ya = document.createElement("a");
		ya.href="javascript:;";
		//ya.onclick=function(){alert(this.innerHTML);};
		ya.onclick=function(){click(this);};
		ya.className="scrubber_year current";
		ya.innerHTML = yearName;
		wrap.appendChild(ya);
		
		var month=document.getElementsByClassName("cy"+yearName);
		for (var j=0;j<=month.length-1;j++) {
			var monthName=month[j].innerHTML;
			var monthId=month[j].id;
			var ma = document.createElement("a");
			var maclass="scrubber_month sy"+yearName;
			ma.href="javascript:;";
			ma.idNum=monthId;
			ma.onclick=function(){show_month(this);};
			ma.className=maclass;
			ma.innerHTML = monthName;
			wrap.appendChild(ma);
		}
	}
	function click(obj){
		var name=obj.innerHTML;
		var allA=document.getElementsByClassName("scrubber_month");
		var thisA=document.getElementsByClassName("sy"+name);
		for(var i=0;i<=allA.length-1;i++){allA[i].style.display="none"}
		for(var j=0;j<=thisA.length-1;j++){thisA[j].style.display="block";}
	}
	
	var get_top=function(el){
		var body_top=($( window ).scrollTop());
//		console.log("body_top:"+body_top);
		var gt=el.offsetTop-body_top+216;
		return gt;
	}
	var scroll_top=function(to){
		var body_top=($( window ).scrollTop());
		var timer=1,tonum=body_top,sh;
		function scroll_step(){
			if(timer<=20){
				tonum+=to/20;
				window.scroll(0,tonum);
//				console.log(timer+"tonum:"+tonum);
//				console.log(($( window ).scrollTop())+"←←←←←←←←←←←←←←←srrolltop");
				timer++;
			}
			else	clearInterval(sh);
		}
		sh=setInterval(scroll_step,10);
	}
	var show_month=function(month){
		var c_month=document.getElementById(month.idNum);
		var top=get_top(c_month);
//      console.log("top:"+top);
		top==0 ? null : scroll_top(top);
	}
});