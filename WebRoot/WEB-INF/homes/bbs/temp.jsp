<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'temp.jsp' starting page</title>
    
  </head>
  
  <body>
  	<h1>评论成功!!!</h1><br>
    <a onClick="javascript :history.back(-1);">回到该贴</a><br>
    <a href="boardview">浏览贴吧</a>
  </body>
</html>
