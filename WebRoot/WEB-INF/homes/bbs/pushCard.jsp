<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<s:action name="board" id="boardList" executeResult="false" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="UTF-8">
<title>发布贴子</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css_admin/common.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css_admin/main.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js_admin/libs/modernizr.min.js"></script>
<style type="text/css">
.welcome {
	margin: 0 60%;
	color: red;
}

.time {
	margin: 0 65%;
	text-align: left;
}

#main {
	border-width: medium 1px 1px;
	border-style: none solid solid;
	border-color: -moz-use-text-color rgb(166, 203, 231) rgb(166, 203, 231);
	min-height: 500px;
	height: auto;
	padding-top: 15px;
}

#wrap {
	width: 980px;
	margin: 0px auto;
}

#wrap table {
	text-align: center;
	width: 98%;
}

#wrap th,tr,td {
	padding-bottom: 5px;
}

.wrap table tr {
	border: 1px solid silver;
	line-height: 20px;
}

.p {
	margin: 0px 5px 7px 1px;
	background-color: #0044CC;
}

#displayPagination {
	margin-top: 20px;
}

#displayPagination>div {
	display: inline-block;
	padding: 10px;
	margin-top: 10px;
}

.pages {
	cursor: default;
	font-size: 15px;
	font-family: Tahoma, Verdana;
	padding: 3px 0px;
}

.pages .count {
	font-weight: bold;
	border-right: medium none;
	padding: 2px 10px 1px;
}

.pages .number {
	font-weight: normal;
	padding: 2px 10px 1px;
}

.pages .number span {
	color: rgb(153, 153, 153);
	margin: 0px 3px;
}

.pages .number a {
	text-decoration: none;
	display: inline-block;
}

.pages .input input.ititle {
	width: 70px;
	text-align: right;
	border-right: medium none;
}

.pages .input input.ititle,.pages .input input.itext,.pages .input input.icount
	{
	color: rgb(102, 102, 102);
	font-weight: bold;
	background-color: rgb(247, 247, 247);
	border: 1px solid rgb(204, 204, 204);
	height: 25px;
	font-size: 15px;
}

.pages .input input.itext {
	width: 30px;
	text-align: center;
	border-left: medium none;
	border-right: medium none;
}

.pages .input input.itext,.pages .input input.icount {
	color: rgb(102, 102, 102);
	font-weight: bold;
	background-color: rgb(247, 247, 247);
	border: 1px solid rgb(204, 204, 204);
	height: 25px;
	font-size: 15px;
}

.pages select,.pages input {
	height: 20px;
	font-family: Tahoma, Verdana;
}

.pages .input input.icount {
	width: 35px;
	text-align: left;
	border-left: medium none;
}

.pages .input input.icount {
	color: rgb(102, 102, 102);
	font-weight: bold;
	background-color: rgb(247, 247, 247);
	border: 1px solid rgb(204, 204, 204);
	height: 25px;
	font-size: 15px;
}

.pages .input input.ibutton {
	color: rgb(255, 255, 255);
	font-weight: bold;
	font-family: Verdana;
	background-color: rgb(153, 153, 153);
	border: 1px solid rgb(102, 102, 102);
	padding: 0px 0px 2px 1px;
	margin-left: 2px;
	width: 55px;
	height: 25px;
}

.star {
	color: red;
}

.issue {
	display: block;
	width: 45px;
	height: 35px;
	padding: 1px 10px;
	background-color: #286a2a;
	font-size: 17px;
	font-family: Arial;
	color: white;
	text-align: center;
	border-radius: 9px;
	float: left;
	margin: 0 60px 0 50px;
}
</style>
</head>
<body>
	<%-- <div class="crumb-wrap">
		<div class="crumb-list">
			<i class="icon-font"></i><a href="index.html">首页</a> <span
				class="crumb-step">&gt;</span><span class="crumb-name">发帖</span>
		</div>
	</div> --%>
	<div class="result-wrap">
	<center>
		<div class="result-content">
			<br>
			<p style="color: red;">请详细描述您的问题！请自觉遵守法律法规，文明用语</p>
			<hr>
			<s:form class="myform" method="post" action="postpush" name="myform" enctype="multipart/form-data">
				<table class="insert-tab" width="600px" height="400px;">
					<s:textfield label="问题标题" name="name" cssStyle="width: 85%;"></s:textfield>
					<s:select name="myboard" class="type" list="#boardList.boardList" label="请选择问题类型" cssStyle="font-size: 14px;"/>
					<s:textarea label="描述问题" name="message" cols="50" rows="15" cssStyle="border-color: #363636;"></s:textarea>
					
					<s:submit value="发布" cssStyle="width:200px;" cssClass="issue"></s:submit>
				</table>
			</s:form>
		</div>
	</center>
	</div>
	<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="js/jquery-1.11.2.js"></script>
	<script type="text/javascript" src="js/dropDown.js"></script>
	<script type="text/javascript" src="js/script.js">
		var pg=new showPages('pg');
		var total=58;
		var pageSize=15;
		if(total%pageSize==0){
			pg.pageCount=total/pageSize+1;//定义总页数
			pg.printHtml(2);
			pg.printHtml(5);
		}
	</script>
</body>
</html>