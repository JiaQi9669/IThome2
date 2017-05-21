<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'view.jsp' starting page</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/privateView.js"></script>
<link rel="stylesheet" href="css/style.css" type="text/css"></link>
</head>

<body>
	<a href="test_index">《返回</a>
	<p>前端展示所需功能</p>
	<s:fielderror></s:fielderror>
	<hr>
	<div>
		<a>增加</a>
		<div id="preview" style="width: 70px;height: 100px;border: 1px solid #000;overflow: hidden;">
			<img id="imghead" width="100%" height="100%" src="${pageContext.request.contextPath }/upload/demos.png">
		</div>
		<s:form action="labAction_add" method="post" enctype="multipart/form-data">
			<s:textfield label="名称" name="name"></s:textfield>
			<s:textarea label="详情" name="message"></s:textarea>
			<s:textfield label="相关链接" name="url_link"></s:textfield>
			<s:textfield label="图片名称" name="userName"></s:textfield>
			<s:file name="file" onchange="previewImage(this,70,100)"></s:file>
			<s:textfield label="信息类型" name="types"></s:textfield>
			<s:submit value="确认添加"></s:submit>
		</s:form>
		<hr>
		<a>删除</a>
		<s:form action="labAction_del">
			<s:textfield label="要删除的编号" name="id"></s:textfield>
			<s:submit value="确认删除"></s:submit>
		</s:form>
		<hr>
		<a>修改</a>
		<s:form action="labAction_updata" method="post" enctype="multipart/form-data">
			<s:textfield label="编号" name="id"></s:textfield>
			<s:textfield label="名称" name="name"></s:textfield>
			<s:textarea label="详情" name="message"></s:textarea>
			<s:textfield label="相关链接" name="url_link"></s:textfield>
			<s:textfield label="图片名称" name="userName"></s:textfield>
			<s:file name="file" onchange="previewImage(this,70,100)"></s:file>
			<s:textfield label="信息类型" name="types"></s:textfield>
			<s:submit value="确认修改"></s:submit>
		</s:form>
		<hr>

		<a>查询</a>
		<s:form action="labAction_find">
			<s:textfield label="要查询的编号" name="id"></s:textfield>
			<s:submit value="查询"></s:submit>
		</s:form>
		<s:iterator value="lab">
			<table>
				<tr>
					<td>${id }</td>
					<td>${name }</td>
					<td>${message }</td>
					<td><a href="${url_link }">${url_link }</a>
					</td>
					<td>
						<img src="${pageContext.request.contextPath }/upload/lab/${url_img }" style="width: 50px;height: 50px;">
					</td>
					<td>${dates }</td>
					<td>${types }</td>
				</tr>
			</table>
		</s:iterator>
		<hr>

		<a>查询所有</a>
		<s:form action="labAction_findAll">
			<s:submit value="查询所有"></s:submit>
		</s:form>
		<s:iterator value="labs">
			<table>
				<tr>
					<td>${id }</td>
					<td>${name }</td>
					<td>${message }</td>
					<td><a href="${url_link }">${url_link }</a></td>
					<td>
						<img src="${pageContext.request.contextPath }/upload/lab/${url_img }" style="width: 50px;height: 50px;">
					</td>
					<td>${dates }</td>
					<td>${types }</td>
				</tr>
			</table>
		</s:iterator>
		<hr>

		<a>分页查询</a>
		<s:form action="labAction_findPage" name="form_Page">
			<%-- <s:textfield label="每页的数据量" name="pageSize"></s:textfield> --%>
			<%-- <s:textfield label="当前页数" name="pageNum"></s:textfield> --%>
			<s:submit value="查询"></s:submit>
		</s:form>
		<table class="tab">
			<thead>
				<tr>
					<th>序号</th>
					<th>遍号</th>
					<th>名称</th>
					<th>信息</th>
					<th>链接</th>
					<th>图片</th>
					<th>日期</th>
					<th>类型</th>
				</tr>
			</thead>
			<tbody>
				<s:iterator value="pageBean.recordList" var="lab" status="status">
					<tr>
						<td>${status.count }</td>
						<td>${lab.id }</td>
						<td>${lab.name }</td>
						<td>${lab.message }</td>
						<td><a href="${lab.url_link }">${lab.url_link }</a></td>
						<td><img src="${pageContext.request.contextPath }/upload/lab/${lab.url_img }" style="width: 50px;height: 50px;"></td>
						<td>${lab.dates }</td>
						<td>${lab.types }</td>
					</tr>
				</s:iterator>

			</tbody>
		</table>
		<!--************页码************-->
		<%@ include file="../page.jsp" %>
		<%-- <%@ include file="../../page.jsp" %> --%>
		<hr>
	</div>
</body>
</html>
