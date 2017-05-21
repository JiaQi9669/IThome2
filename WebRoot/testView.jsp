<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/privateView.js"></script>
</head>
<body>
	<a href="test_index">《返回</a>
  	<hr>
	<p>上传下载</p>
	<div id="preview" style="width: 70px;height: 100px;border: 1px solid #000;overflow: hidden;">
		<img id="imghead" width="100%" height="100%" src="${pageContext.request.contextPath }/upload/demos.png">
	</div>
	<form action="fileUploadAction" method="post" enctype="multipart/form-data">
		文件名:<input type="text" name="userName" /><br/>
		文件:<input type="file" name="file" onchange="previewImage(this,70,100)"><br/>
			<input type="submit" value="上传">
	</form>
	<p>下载列表</p>
	<a href="down_list">查看</a>
	<table border="1" align="center">
  		<tr>
  			<td>编号</td>
  			<td>文件名</td>
  			<td>操作</td>
  		</tr>
  		<c:forEach var="fileName" items="${fileNames}" varStatus="vs">
  			<tr>
  				<td>${vs.count }</td>
  				<td>${fileName }</td>
  				<td>
  					<!-- 构建一个url -->
  					<c:url var="url" value="down_down">
  						<c:param name="fileName" value="${fileName}"></c:param>
  					</c:url>
  					
  					<a href="${url }">下载</a>
  				</td>
  			</tr>
  		</c:forEach>
  	</table>
	<hr>
	<p>添加</p>
	<s:form action="demo_add">
		<s:textfield label="名字" name="name"></s:textfield>
		<s:textfield label="密码" name="pass"></s:textfield>
		<s:textfield label="信息" name="message"></s:textfield>
		<s:submit value="添加"></s:submit>
	</s:form>
	<hr>
	<p>删除</p>
	<s:form action="demo_del">
		<s:textfield label="输入编号" name="id"></s:textfield>
		<s:submit value="删除"></s:submit>
	</s:form>
	<hr>
	<p>更改</p>
	<s:form action="demo_updata">
		<s:textfield label="标号" name="id"></s:textfield>
		<s:textfield label="名字" name="name"></s:textfield>
		<s:textfield label="密码" name="pass"></s:textfield>
		<s:textfield label="信息" name="message"></s:textfield>
		<s:submit value="更改"></s:submit>
	</s:form>
	<hr>
	<p>查找id</p>
	<s:form action="demo_find">
		<s:textfield label="输入编号" name="id"></s:textfield>
		<s:submit value="查找"></s:submit>
	</s:form>
	<s:iterator value="demo">
		<table>
			<tr>
			<td>${id }</td>
			<td>${name }</td>
			<td>${pass }</td>
			<td>${message }</td>
			</tr>
		</table>
   	</s:iterator>
	<hr>
	<p>查找所有</p>
	<s:form action="demo_findAll">
		<s:submit value="查找所有"></s:submit>
	</s:form>
   	<p>查找所有列表</p>
	<s:iterator value="demoList">
		<table>
			<tr>
			<td>${id }</td>
			<td>${name }</td>
			<td>${pass }</td>
			<td>${message }</td>
			</tr>
		</table>
   	</s:iterator>
	<hr>
</body>
</html>