<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
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
<title>我的贴子</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css_admin/common.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css_admin/main.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js_admin/libs/modernizr.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css_admin/aboutMe.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/pages.css" type="text/css"></link>

<style type="text/css">
#main {
	border: 1px solid rgb(166, 203, 231);
	min-height: 500px;
	height: auto;
	overflow: visible;
	padding-top: 15px;
}

#main table {
	border-collapse: collapse;
	text-align: center;
	width: 98%;
}

#main th,tr,td {
	padding-bottom: 5px;
}

#main tr {
	border: 1px solid silver;
}
</style>
</head>
<body>

	<jsp:include page="/WEB-INF/homes/top_menu.jsp"></jsp:include>

	<div id="main">
		<h3 style="padding-left: 20px;">
			<s:property value="#request.realName" />
			你好，欢迎查看你提过的问题：
		</h3>
		<center>
			<table class="result-tab">
				<tr style="background-color: #E7EFEF;">
					<th style="width:10px;"></th>
					<th style="text-align: left;">问题标题</th>
					<th>作者</th>
					<th>浏览次数</th>
					<th>发布时间</th>
				</tr>
				<s:iterator value="pageBean.recordList" id="po" status="indexs">
					<tr>
						<td>
							${indexs.index+1 }
						</td>
						<td style="text-align: left;"><a
							href="postviewpost?id=${id }">${name }</a></td>
						<td>${friend.pickName }</td>
						<td>${count }</td>
						<td>${dates }</td>
					</tr>
				</s:iterator>
			</table>
		</center>
		<br />
	</div>

	<div class="pagin">
		<div class="message">
			共<i class="blue_page"><s:property value="pageBean.pageCount" />
			</i>页， <i class="blue_page"><s:property value="pageBean.recordCount" />
			</i>条记录， 当前显示第&nbsp;<i class="blue_page">
			<s:if test="pageBean.currentPage == 0">
				1
			</s:if>
			<s:else>
				<s:property value="pageBean.currentPage" />
			</s:else>&nbsp;</i>页
			
		</div>
		<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<!--真分页遍历  -->
		<ul class="paginList">
			
			<s:iterator begin="pageBean.beginPageIndex"
				end="pageBean.endPageIndex" var="pageNums">
				<li class="paginItem ${pageBean.currentPage==pageNums?'current':''}">
					<c:if test="${pageBean.currentPage == pageNums }"><a>${pageNums }</a></c:if>
					<c:if test="${pageBean.currentPage != pageNums }">
						<a href="postme?pageNum=${pageNums }">${pageNums }</a>
					</c:if>
				</li>
			</s:iterator>
		</ul>
	</div>

	<script type="text/javascript" src="js_admin/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="js_admin/jquery-1.11.2.js"></script>
	<script type="text/javascript" src="js_admin/dropDown.js"></script>
	<script type="text/javascript" src="js_admin/time.js"></script>
	<script src="js_admin/bootstrap.js"></script>
	<script>
		/*Bootlint工具用于对页面中的HTML标签以及Bootstrapclass的使用进行检测*/
		(function() {
			var s = document.createElement("script");
			s.onload = function() {
				bootlint.showLintReportForCurrentDocument([]);
			};
			s.src = "js/bootlint.js";
			document.body.appendChild(s)
		})();

		$(function() {
			$('dt').click(
				function() {
					$(this).parent().find('dd').show().end().siblings()
					.find('dd').hide();
			});
		});
	</script>
</body>
</html>