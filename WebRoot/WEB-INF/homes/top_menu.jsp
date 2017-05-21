<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.min.css" type="text/css"></link>
<!--/sidebar-->
<div class="crumb-wrap">
	<div class="crumb-list">
		<i class="glyphicon glyphicon-home"></i><a href="tohomes">返回首页</a>
			<span class="crumb-name">
			<i class="glyphicon glyphicon-chevron-left"></i><a onClick="javascript :history.back(-1);">返回上级</a>&nbsp;&nbsp;
			<i class="glyphicon glyphicon-repeat"></i><a onClick="location.replace(location.href)">刷新</a></span>
	</div>
</div>
