<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="UTF-8">
<title>其他</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css_admin/common.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css_admin/main.css" />
	<script type="text/javascript" src="${pageContext.request.contextPath }/js_admin/libs/modernizr.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js_admin/jquery.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js_admin/style.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js_admin/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js_admin/jquery-1.11.2.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js_admin/dropDown.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js_admin/bootstrap.js"></script>
</head>
<body>
	<div class="container clearfix">
	
		<jsp:include page="/WEB-INF/homes/menus.jsp"></jsp:include>
		
	</div>
</body>
</html>