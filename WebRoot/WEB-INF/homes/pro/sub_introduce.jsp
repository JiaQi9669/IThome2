<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<title>项目详情</title>
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

	<!--/main-->
	<div>
		<div>
			<s:iterator value="project">
				<table class="insert-tab" width="100%">
					<tbody>
						<tr>
							<th><i class="require-red">*</i>项目名称：</th>
							<td>${name }</td>
						</tr>
						<tr>
							<th><i class="require-red">*</i>项目介绍：</th>
							<td>${message }</td>
						</tr>
						<tr>
							<th><a href="#"><i class="require-red">*</i>发布人：</a>
							</th>
							<td>
								${friend.pickName }
							</td>
						</tr>
						<tr>
							<th><a><i class="require-red">*</i>板块量/最大板块：</a>
							</th>
							<td>${packages.size() } / ${packNum } <a href="projectlist?id=${id }">板块详情</a></td>
						</tr>
						<tr>
							<th><a><i class="require-red">*</i>浏览量：</a>
							</th>
							<td>
								${viewCounts }
							</td>
						</tr>
						<tr>
							<th><a><i class="require-red">*</i>发布日期：</a>
							</th>
							<td>
								${dates }
							</td>
						</tr>
						<tr>
							<th><a><i class="require-red">*</i>状态：</a>
							</th>
							<td>
								<c:if test="${projectstate == 0 }">
									未结项
								</c:if>
								<c:if test="${projectstate == 1 }">
									已结项
								</c:if>
							</td>
						</tr>
						<c:if test="${projectstate == 0 }">
						<tr>
							<th><a><i class="require-red">*</i>操作：</a>
							</th>
							<td>
								<a class="btn btn-primary btn2">更新</a>
							</td>
						</tr>
						</c:if>
						<tr>
							<th><a><i class="require-red">*</i>项目文档：</a>
							</th>
							<td>
								<a href="projectdown?fileName=${url_message }">下载</a><%-- ${url_message } --%>
							</td>
						</tr>
					</tbody>
				</table>
			</s:iterator>
		</div>
	</div>

</body>
</html>
