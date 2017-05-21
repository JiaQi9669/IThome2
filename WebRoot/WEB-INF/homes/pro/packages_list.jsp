<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="UTF-8">
<title>项目板块列表</title>
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
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/pages.css"
	type="text/css"></link>
<style type="text/css">
table {
	text-align: center;
}
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/homes/top_menu.jsp"></jsp:include>
	<div class="container clearfix" style="width: 98%;">

		<!--/main-->
		<div>
			<div>
				<div>
					<form action="projectSelect" method="post">
						<table class="search-tab">
							<tr>
								<td><c:if test="${project.projectstate == 0 }">
										<a href="packageaddview?project_id=${project.id }"
											class="btn btn-primary btn2">添加板块</a>
									</c:if>
								</td>
							</tr>
						</table>
					</form>
				</div>
			</div>
			<div>
				<div class="result-title"></div>
				<div class="result-content">
					<table class="result-tab" width="100%">
						<tr>
							<th class="tc" width="5%"></th>
							<th>板块名称</th>
							<th>板块信息</th>
							<th>子模块数</th>
							<th>子文件数</th>
							<th>项目名</th>
							<th>发布时间</th>
							<th>参与时间</th>
							<th>参与人</th>
							<th>发布人</th>
							<th>操作</th>
							<!-- <th>操作</th> -->
						</tr>
						<s:iterator value="pageBean.recordList" var="packs">
							<tr>
								<td class="tc"><img
									src="${pageContext.request.contextPath }/images/package.gif" />
								</td>
								<td><a href="packagelist?id=${packs.id }"
									style="color: purple;">${packs.name }</a></td>
								<td>${packs.message }</td>
								<td>${packages.size() }</td>
								<td>${files.size() }</td>
								<td>${packs.projects.name }</td>
								<td>${packs.projects.dates }</td>
								<td>${packs.dates }</td>
								<td>${packs.friends.pickName }</td>
								<td>${packs.projects.friend.pickName }</td>
								<td><a href="packagedown?fileName=${packs.url_message }"
									class="btn btn-primary btn2">下载</a>
								</td>
							</tr>
						</s:iterator>
					</table>
					<div class="list-page"></div>
				</div>
			</div>
		</div>
	</div>
	<div class="pagin">
		<div class="message">
			共<i class="blue_page"><s:property value="pageBean.pageCount" />
			</i>页， <i class="blue_page"><s:property value="pageBean.recordCount" />
			</i>条记录， 当前显示第&nbsp;<i class="blue_page"> <s:if
					test="pageBean.currentPage == 0">
				1
			</s:if> <s:else>
					<s:property value="pageBean.currentPage" />
				</s:else>&nbsp;</i>页

		</div>

		<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
		<!--真分页遍历  -->
		<ul class="paginList">

			<s:iterator begin="pageBean.beginPageIndex"
				end="pageBean.endPageIndex" var="pageNums">
				<li class="paginItem ${pageBean.currentPage==pageNums?'current':''}">
					<c:if test="${pageBean.currentPage == pageNums }">
						<a>${pageNums }</a>
					</c:if> <c:if test="${pageBean.currentPage != pageNums }">
						<a href="projectlist?id=${proid }&pageNum=${pageNums }">${pageNums }</a>
					</c:if></li>
			</s:iterator>
		</ul>
	</div>
</body>
</html>
