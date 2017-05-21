<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta charset="UTF-8">
		<title>联系我们</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/public.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/contact.css"/>
		
		<!-- Bootstrap -->
	    <link href="${pageContext.request.contextPath }/css/bootstrap.min.css" rel="stylesheet">
	
	    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	    <!--[if lt IE 9]>
	      <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	      <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
	    <![endif]-->
	</head>
	<body>
		
		<jsp:include page="/WEB-INF/publics/menu.jsp"></jsp:include>

		<div class="main_wrap">
			<h1>联系我们</h1>
			<h3>实验室负责人</h3>
			<span class="clear">
				<em class="fl">张志峰老师</em>
				<p class="fl">QQ：<strong>*********</strong></p>
				<p class="fl">E-mail：<strong>*********@**.com</strong></p>
			</span>
			<span class="clear">
				<em class="fl">李志非同学</em>
				<p class="fl">QQ：<strong>1599925603</strong></p>
				<p class="fl">E-mail：<strong>1599925603@qq.com</strong></p>
			</span>
			<span class="clear">
				<em class="fl">王志汤同学</em>
				<p class="fl">QQ：<strong>1010647413</strong></p>
				<p class="fl">E-mail：<strong>1010647413@qq.com</strong></p>
			</span>
			<span class="clear">
				<em class="fl">贾　启同学</em>
				<p class="fl">QQ：<strong>562419855</strong></p>
				<p class="fl">E-mail：<strong>562419855@qq.com</strong></p>
			</span>
			<h3>咨询帮助</h3>
			<span class="clear">
				<em class="fl">王志汤同学</em>
				<p class="fl">QQ：<strong>1010647413</strong></p>
				<p class="fl">E-mail：<strong>1010647413@qq.com</strong></p>
			</span>
			<span class="clear"><p>招新QQ群：<strong>572272821</strong></p></span>
			<h3>企业合作</h3>
			<span class="clear">
				<em class="fl">贾　启同学</em>
				<p class="fl">QQ：<strong>562419855</strong></p>
				<p class="fl">E-mail：<strong>562419855@qq.com</strong></p>
			</span>
			<h3>基地地址</h3>
			<h2>郑州轻工业学院　科学校区　第四教学楼</h2>
		</div>
		
		<!--底部区域  -->
		<jsp:include page="/WEB-INF/publics/bottom.jsp"></jsp:include>
		
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-3.0.0.min.js" ></script>
		<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
	</body>
</html>
