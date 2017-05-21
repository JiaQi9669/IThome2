<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<div id="header" class="clear navbar navbar-default" role="navigation">
	<div class="navbar-header">
		<button class="navbar-toggle" type="button" data-toggle="collapse"
			data-target=".navbar-responsive-collapse">
			<span class="sr-only">Toggle Navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<div class="Tl navbar-brand">
			郑轻<br>&nbsp;&nbsp;软创
		</div>
	</div>
	<div class="collapse navbar-collapse navbar-responsive-collapse">
		<ul class="nav navbar-nav navbar-right" id="nav">
			<li><a href="viewindex">首页</a>
			</li>
			<li><a href="viewlab">介绍</a>
			</li>
			<li><a href="labview">动态</a>
			</li>
			<li><a href="viewjoin">招新</a>
			</li>
			<li><a href="viewlogin">基地</a>
			</li>
		</ul>
	</div>
</div>
<script>
	window.onload=function(){
		var nav=document.getElementById("nav");
		var a=nav.getElementsByTagName("a");
		var url= ["viewindex","viewlab","labview","viewjoin","viewlogin"];
		var num;
		//var pathname1=window.location.pathname;
		var pathname=window.location.pathname.split("/");
		var get=pathname[pathname.length-1];
		//var get=(pathname[pathname.length-1].split("."))[0];
		for(var i=0;i<=url.length;i++){get==url[i]? num=i : null;}
		if(num!=null) a[num].className="nav_active";
	};
</script>