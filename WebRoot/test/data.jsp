<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<s:action name="data" id="dataList" executeResult="false" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'view.jsp' starting page</title>
    
  	<script type="text/javascript" src="${pageContext.request.contextPath }/js/imgchange.js"></script>
 </head>
  
  <body>
    <a href="test_index">《返回</a>
    <s:fielderror></s:fielderror>
    <p>上传资源分类测试</p>
    <hr>
    <p>添加分类</p>
    <div id="preview" style="width: 70px;height: 100px;border: 1px solid #000;overflow: hidden;">
		<img id="imghead" width="100%" height="100%" src="${pageContext.request.contextPath }/upload/demos.png">
	</div>
	<s:form action="classaddClass" method="post" enctype="multipart/form-data">
		<s:textfield label="名称" name="name"></s:textfield>
		<s:textarea label="详情" name="message"></s:textarea>
		<s:file name="file" onchange="previewImage(this,70,100)"></s:file>
		<s:submit value="确认添加"></s:submit>
	</s:form>
    <hr>
    
    <p>查询分类</p>
    <s:form action="classfindByName">
		<s:textfield label="名称" name="name"></s:textfield>
		<s:submit value="名称查询"></s:submit>
	</s:form>
	<s:form action="classfindClass">
		<s:textfield label="id" name="id"></s:textfield>
		<s:submit value="id查询"></s:submit>
	</s:form>
	<s:form action="classfindAll">
		<s:submit value="查询所有"></s:submit>
	</s:form>
	<s:iterator value="classs">
			<table>
				<tr>
					<td>${id }</td>
					<td>${name }</td>
					<td>${message }</td>
					<td>
						<img src="${pageContext.request.contextPath }/upload/data/${url_img }" style="width: 50px;height: 50px;">
					</td>
				</tr>
			</table>
	</s:iterator>
    <hr>
    <p>更新分类</p>
    <s:form action="classupdata" method="post" enctype="multipart/form-data">
		<s:textfield label="id" name="id"></s:textfield>
		<s:textfield label="名称" name="name"></s:textfield>
		<s:textarea label="详情" name="message"></s:textarea>
		<s:file name="file" onchange="previewImage(this,70,100)"></s:file>
		<s:submit value="确认修改"></s:submit>
	</s:form>
    <hr>
    <p>删除分类</p>
    <s:form action="classdelClass">
		<s:textfield label="id" name="id"></s:textfield>
		<s:submit value="id查询"></s:submit>
	</s:form>
    <hr>

    
    <hr>
    <p>资源区</p>
    <hr>
    <p>添加资源</p>
    
    <s:form action="dataaddData" method="post" enctype="multipart/form-data">
		<s:textfield label="名称" name="name"></s:textfield>
		<s:textarea label="详情" name="message"></s:textarea>
		<s:select name="claName" list="#dataList.claNameList" label="选择上传的类型" />
		<s:file name="file" onchange="previewImage(this,70,100)"></s:file>
		<s:submit value="确认添加"></s:submit>
	</s:form>
	
    <hr>
    <p>查看下载</p>
    <s:form action="datafindData">
    	<s:textfield label="id" name="id"></s:textfield>
    	<s:submit value="id查询"></s:submit>
    </s:form>
    <s:form action="datafindAll">
    	<s:submit value="查询所有"></s:submit>
    </s:form>
    <s:form action="datafindHot">
    	<s:submit value="热度查询"></s:submit>
    </s:form>
    <s:iterator value="datas">
			<table>
				<tr>
					<td>${id }</td>
					<td>${name }</td>
					<td>${message }</td>
					<td>${dates }</td>
					<td>${friends }</td>
					<td>${data_class.name }</td>
					<td>${down_num }</td>
					<td>
						<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	  					<!-- 构建一个url -->
	  					<c:url var="url" value="datadown">
	  						<c:param name="fileName" value="${url_data }"></c:param>
	  					</c:url>
	  					<a href="${url }">下载</a>
	  				</td>
				</tr>
			</table>
	</s:iterator>
    <hr>
    <hr>
    
  </body>
</html>
