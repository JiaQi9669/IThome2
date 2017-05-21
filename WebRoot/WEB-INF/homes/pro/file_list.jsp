<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<title>文件列表</title>
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
		<div>
			<div>
				<form action="packagefindByKeyWord?id=${packid }" method="post">
					<table class="search-tab">
						<tr>
							<th width="80">文件搜索:</th>
							<td><input class="common-text" placeholder="输入关键字"
								name="name" autocomplete="off" id="" type="text">
							</td>
							<td><input class="btn btn-primary btn2" value="查询"
								type="submit">
							</td>
							<td><c:if test="${project.projectstate == 0 }">
									<a href="packageaddview?project_id=${project.id }"
										class="btn btn-primary btn2">添加板块</a>
								</c:if></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
		<!--/main-->
		<div>
			<div>
				<div>
					<form action="projectSelect" method="post">
						<table class="search-tab">
							<tr>
								<td><c:if test="${packagea.projects.projectstate == 0 }">
										<s:iterator value="#packagea" var="ps">
											<a class="btn btn-primary btn2"
												href="packageaddviews?project_id=${ps.id }&project_ids=${project_ids }">添加板块</a>
											<a class="btn btn-primary btn2"
												href="packageuploads?id=${ps.id }">上传文件</a>
										</s:iterator>
									</c:if> <c:if test="${packagea.fpackage.projects.projectstate == 0 }">
										<s:iterator value="#packagea" var="ps">
											<a class="btn btn-primary btn2"
												href="packageuploads?id=${ps.id }">上传文件</a>
										</s:iterator>
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
							<th>名称</th>
							<th>信息</th>
							<th>内容数</th>
							<th>上传时间</th>
							<th>所属模块</th>
							<th>所属</th>
							<th>类型</th>
							<th>操作</th>
						</tr>
						<s:iterator value="pageBeanpack" var="packs">
							<tr>
								<td class="tc"><img
									src="${pageContext.request.contextPath }/images/package.gif" />
								</td>
								<td style="color: green;"><a
									href="packagelist?id=${packs.id }">${packs.name }</a></td>
								<td>${packs.message }</td>
								<td>${packs.packages.size() + packs.files.size() }</td>
								<td>${packs.dates }</td>
								<td>${packs.fpackage.name }</td>
								<td>${packs.friends.pickName }</td>
								<td style="color: green;">模块</td>
								<td><a href="filedown?fileName=${packs.url_message }"
									class="btn btn-primary btn2">下载</a> <%-- <a href="filedel?id=${packs.id }&pack_id=${packs.fpackage.id }" class="btn btn-primary btn2">删除</a> --%>
								</td>
							</tr>
						</s:iterator>
						<s:iterator value="pageBean.recordList">
							<tr>
								<td class="tc"><img
									src="${pageContext.request.contextPath }/images/files.gif" />
								</td>
								<td>${name }</td>
								<td>${message }</td>
								<td>0</td>
								<td>${dates }</td>
								<td>${fpackage.name }</td>
								<td>${friends.pickName }</td>
								<td style="color: green;">文件</td>
								<td><a href="filedown?fileName=${url_message }"
									class="btn btn-primary btn2">下载</a> <c:if
										test="${fpackage.projects.projectstate == 0 || fpackage.fpackage.projects.projectstate == 0}">
										<c:if test="${friends.id == admins.id }">
											<%-- <c:if test="${project.projectstate == 0 }"> --%>
											<a href="filedel?id=${id }&pack_id=${fpackage.id }"
												class="btn btn-primary btn2">删除</a>
										</c:if>
									</c:if>
								</td>
							</tr>
						</s:iterator>
					</table>
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
					<li
						class="paginItem ${pageBean.currentPage==pageNums?'current':''}">
						<c:if test="${pageBean.currentPage == pageNums }">
							<a>${pageNums }</a>
						</c:if> <c:if test="${pageBean.currentPage != pageNums }">
							<c:if test="${searchType == 1 }">
								<a href="packagefindByKeyWord?id=${packid }&name=${searchName }&pageNum=${pageNums }">${pageNums }</a>
							</c:if>
							<c:if test="${searchType != 1 }">
								<a href="packagelist?id=${packid }&pageNum=${pageNums }">${pageNums }</a>
							</c:if>
						</c:if>
					</li>
				</s:iterator>
			</ul>
		</div>
	</div>
</body>
</html>
