<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta charset="UTF-8">
		<title>首页</title>
    	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css_admin/common.css"/>
    	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css_admin/main.css"/>
	</head>
	<body>
		<div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i>
	            <a href="index.html" target="_parent">首页</a>
            </div>
        </div>
	</body>
</html>