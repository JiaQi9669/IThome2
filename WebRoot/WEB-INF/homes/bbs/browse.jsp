<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>浏览贴子</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css_admin/common.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css_admin/main.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js_admin/libs/modernizr.min.js"></script>
<style type="text/css">

.clear {
	zoom: 1;
}

.clear:after {
	content: "";
	display: block;
	clear: both;
}

.welcome {
	margin-left: 600px;
	color: red;
}

.result-wrap-content1 {
	padding: 25px 0;
	clear: both;
}

.result-wrap-content1-left,.result-wrap-content1-right {
	float: left;
	margin: 0 50px;
}

.result-wrap-content1-left a {
	border-bottom: 1px;
}

.result-wrap-content1-left ul li a {
	position: absolute;
	border: 1px 1px 1px 1px;
	padding-left: 30px;
}

.result-wrap-content1-left ul li p {
	padding-left: 30px;
}

.result-wrap-content1-right ul li a {
	position: absolute;
	padding-left: 30px;
}

.result-wrap-content1-right ul li p {
	padding-left: 30px;
}

.result-wrap-content2 {
	margin: 50px 0 0 50px;
	width: 900px;
}

.result-wrap-content2 ul li {
	float: left;
	width: 657px;
	margin: 5px 3px 5px 5px;
	padding: 5px 0px 5px 5px;
}

.result-wrap-content2 ul li a {
	text-decoration: none;
	text-decoration-color: -moz-use-text-color;
	text-decoration-line: none;
	text-decoration-style: solid;
}

.result-wrap-content2 ul li a img {
	float: left;
}

.result-wrap-content2-entry1 {
	padding-left: 10px;
	line-height: 30px;
	color: #1B72AF;
	border: 1px solid #D6E8F4;
	border-style: 1px solid;
	border-color: rgb(214, 232, 244);
}

.result-wrap-content2-entry2 {
	min-height: 100px;
	border: 1px solid #D6E8F4;
}

.result-wrap-content2-entry3 {
	padding-left: 10px;
	line-height: 30px;
	color: #1B72AF;
	border: 1px solid #D6E8F4;
	border-style: 1px solid;
	border-color: rgb(214, 232, 244);
}

.result-wrap-content2-entry4 {
	min-height: 100px;
	border: 1px solid #D6E8F4;
}

.result-wrap-content2-entry5 {
	padding-left: 10px;
	line-height: 30px;
	color: #1B72AF;
	border: 1px solid #D6E8F4;
	border-style: 1px solid;
	border-color: rgb(214, 232, 244);
}

.imgs{
	width: 128px;
	height: 128px;
}

.result-wrap-content2-entry6 {
	min-height: 100px;
	border: 1px solid #D6E8F4;
}
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/homes/top_menu.jsp"></jsp:include>

	<div class="result-wrap">
		<div class="result-wrap-content1 clear" style="max-height: 300px;">
			<div class="result-wrap-content1-left">
				<table width="400px;" style="border-width: 10px;border-color:gray; border-style:outset;">
					<tr>
						<th colspan="2">热门帖子：</th>
						<td></td>
						<td style="font-size: 9px;">查看更多》</td>
					</tr>
					<s:iterator value="#hotsp" var="phots" status="index1" id="hot" begin="0" end="17">
						<tr style="font-size: 9px;">
							<td style="width:30px;color: blue;">${index1.count }</td>
							<td><a href="postviewpost?pageNum=1&id=${id }" style="display:block;width:120px;text-align:center;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">${name }</a></td>
							<td style="display:block;width:80px;text-align:center;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">${friend.pickName }</td>
							<%-- <td>${count }</td> --%>
							<td>${dates }</td>
						</tr>
					</s:iterator>
					
				</table>
			</div>
			<div class="result-wrap-content1-right">
				<table width="400px;" style="border-width: 10px;border-color:gray; border-style:outset;">
					<tr>
						<th colspan="2">最新帖子：</th>
						<td></td>
						<td style="font-size: 9px;">查看更多》</td>
					</tr>
					<s:iterator value="newsp" status="index2" var="pnews" id="post" begin="0" end="17">
						<tr style="font-size: 9px;">
							<td style="width:30px;color: blue;">${index2.count }</td>
							<td><a href="postviewpost?pageNum=1&id=${id }" style="display:block;width:120px;text-align:center;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">${name }"</a></td>
							<td style="display:block;width:80px;text-align:center;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">${friend.pickName }"</td>
							<%-- <td>${count }</td> --%>
							<td>${dates }</td>
						</tr>
					</s:iterator>
					
				</table>
			</div>
		</div>
		<div class="result-wrap-content2">
			<div class="result-wrap-content2-entry1">技术分享</div>
			<div class="result-wrap-content2-entry2 clear" style="height: 180px;">
				<s:iterator value="posts1" status="index3" var="posts1" begin="0" end="4">
					<tr>
						<td>
							<div style="float:left;width: 128px;margin: 0 25px;">
								<img class="imgs" src="${pageContext.request.contextPath }/upload/talk/${url_img }" />
								<%-- <img src="${pageContext.request.contextPath }/upload/talk/demos.png" /> --%>
								<a href="boardviewpost?pageNum=1&id=${id }" style="display:block;width:128px;text-align:center;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">${name }</a>
							</div>
						</td>
					</tr>
				</s:iterator>
				
			</div>
			<div class="result-wrap-content2-entry3">问题交流</div>
			<div class="result-wrap-content2-entry4" style="height: 180px;">
				<s:iterator value="posts2" status="index3" var="pnews" begin="0" end="4">
					<tr>
						<td>
							<div style="float:left;width: 128px;margin: 0 25px;">
								<img class="imgs" src="${pageContext.request.contextPath }/upload/talk/${url_img }" />
								<%-- <img src="${pageContext.request.contextPath }/upload/talk/demos.png" /> --%>
								<a href="boardviewpost?id=${id }" style="display:block;width:128px;text-align:center;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">${name }</a>
							</div>
					</tr>
				</s:iterator>
			</div>
			<div class="result-wrap-content2-entry5">其他板块</div>
			<div class="result-wrap-content2-entry6" style="height: 180px;">
				<s:iterator value="posts3" status="index3" var="pnews" begin="0" end="4">
					<tr>
						<td>
							<div style="float:left;width: 128px;margin: 0 25px;">
								<img class="imgs" src="${pageContext.request.contextPath }/upload/talk/${url_img }" />
								<%-- <img src="${pageContext.request.contextPath }/upload/talk/demos.png" /> --%>
								<a href="boardviewpost?pageNum=1&id=${id }" style="display:block;width:128px;text-align:center;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">${name }</a>
							</div>
					</tr>
				</s:iterator>
			</div>
			<div class="result-wrap-content2-entry5">
				<center>
					<a href="#">更多</a>
				</center>
			</div>
			<div class="result-wrap-content2-entry5">
				<center>郑州轻工业学院软件综合实践与创新基地-郑轻软创</center>
			</div>
		</div>

	</div>
</body>
</html>