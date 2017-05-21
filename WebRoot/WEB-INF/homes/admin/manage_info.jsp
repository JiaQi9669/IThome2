<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="UTF-8">
<title>修改信息</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css_admin/common.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css_admin/main.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js_admin/libs/modernizr.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js_admin/jquery.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js_admin/style.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js_admin/jquery-1.11.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js_admin/jquery-1.11.2.js"></script>
<script src="${pageContext.request.contextPath }/js_admin/bootstrap.js"></script>

</head>
<body>
	<jsp:include page="/WEB-INF/homes/top_menu.jsp"></jsp:include>

	<div class="result-wrap">
		<center>
		<s:iterator value="friends">
			<form action="tomyupdatedons" id="myform" method="post"
				enctype="multipart/form-data">
				<div class="result-content">
					<table class="result-tab" width="80%">

						<tr>
							<th><i class="require-red">*</i>个人照片</th>
							<td><input name="file" id="" type="file">
							</td>
						</tr>
						<tr>
							<th><i class="require-red">*</i>姓名：</th>
							<td><input class="common-text required" readonly
								autocomplete="off" id="title" name="realName" size="50"
								value=${realName } type="text"></td>
						</tr>
						<tr>
							<th><i class="require-red">*</i>昵称：</th>
							<td><input class="common-text required" autocomplete="off"
								id="title" name="pickName" size="50" value=${pickName }
								type="text"></td>
						</tr>
						<tr>
							<th><i class="require-red">*</i>个性话语：</th>
							<td><input class="common-text required" autocomplete="off"
								id="title" name="say" size="50" value=${say } type="text">
							</td>
						</tr>
						<tr>
							<th><i class="require-red">*</i>基地密码：</th>
							<td><input class="common-text required" autocomplete="off"
								id="title" name="pass" size="50" value=${pass } type="text">
							</td>
						</tr>
						<tr>
							<th><input name="leaves" value=${leaves } type="hidden">
								<input name="myCase" value=${myCase } type="hidden"> <input
								name="role_p" value=${role_p } type="hidden"> <input
								name="id" value=${id } type="hidden" /></th>
							<td><input class="btn btn-primary btn6 mr10" value="修改"
								type="submit"> <input class="btn btn6"
								onclick="history.go(-1)" value="返回" type="button"></td>
						</tr>

					</table>
					<div class="list-page"></div>
				</div>

			</form>
		</s:iterator>
		</center>
	</div>
</body>
</html>