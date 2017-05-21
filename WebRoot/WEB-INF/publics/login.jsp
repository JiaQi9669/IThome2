<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta charset="UTF-8">
		<title>登录</title>
		<link rel="stylesheet" type="text/css" charset="UTF-8" href="${pageContext.request.contextPath }/css/login.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/public.css"/>
		
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

		<div id="main" class="clear">
			<div class="main_message">
				<span>系统使用说明：</span>
				<p>* 创新实验室基地系统是由实验室自主开发维护的</p>
				<p>&nbsp;&nbsp;综合性服务平台。</p>
				<p>* 登录账号及密码由实验室统一分配。</p>
				<p>* 本系统仅供实验室内部人员使用！</p>
			</div>
			<div class="main_login">
				<form class="login" name="login" action="gologin" method="post" onsubmit="return check(this);">
					<h2>登　录</h2>&nbsp;&nbsp;&nbsp;&nbsp;<label style="color: red;font-size: 10px;"><s:fielderror></s:fielderror></label>
				    <input type="text" name="accounts" id="ipt_acc" class="login-input my_ipt" placeholder="账号" autofocus="autofocus">
				    <div id="account_error"></div>
				    <input type="password" name="pass" id="ipt_pas" class="login-input my_ipt" placeholder="密码">
				    <div id="password_error"></div>
				    <input type="submit" class="login-submit my_btn" value="登　录"></input>
				    <input type="reset" class="my_btn" value="重　置"></input>
				</form>
			</div>
			<div class="main_message fake fake_gradient" id="fake_m">
				<span>系统使用说明：</span>
				<p>* 创新实验室基地系统是由实验室自主开发维护的</p>
				<p>&nbsp;&nbsp;综合性服务平台。</p>
				<p>* 登录账号及密码由实验室统一分配。</p>
				<p>* 本系统仅供实验室内部人员使用！</p>
			</div>
			
			<div class="main_login fake fake_gradient" id="fake_l">
				<h2>登　录</h2>
			    <input type="text"  class="my_ipt" id="fak_acc" placeholder="账号" disabled="disabled">
			    <input type="password"  class="my_ipt" id="fak_pas"  placeholder="密码" disabled="disabled">
			    <input type="submit" class="my_btnf" value="登　录"  disabled="disabled"></input>
			    <input type="reset" class="my_btnf" value="重　置" disabled="disabled"></input>
			</div>
		</div>
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.12.4.min.js" ></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/login.js"></script>
		<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
	</body>
</html>
