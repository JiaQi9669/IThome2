<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="UTF-8">
<title>资源介绍</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css_admin/common.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css_admin/main.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js_admin/libs/modernizr.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js_admin/jquery.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js-admin/style.js"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/homes/top_menu.jsp"></jsp:include>
	<!--/main-->

	<!-- begin by JiaQi -->
	<div class="result-wrap">
		<div class="result-content">
			<form action="" method="post" id="myform" name="myform"
				enctype="multipart/form-data">
				<table class="insert-tab" width="100%">
					<tbody>
						<tr>
							<th><i class="require-red">*</i>资源名称：</th>
							<td><%=request.getParameter("name") %></td>
						</tr>
						<tr>
							<th>资源介绍：</th>
							<td><%=request.getParameter("message") %></td>
						</tr>

						<tr>
							<th>操作：</th>
							<td>
								<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
								<!-- 构建一个url -->
								<c:url var="url" value="datadown">
									<c:param name="fileName" value="${url_data }"></c:param>
								</c:url> <a href="${url }">下载</a>
							</td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
	</div>
	<!-- end by JiaQi -->
</body>
</html>
