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
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/imgchange.js"></script>
  </head>
  
  <body>
    <a href="test_index">《返回</a><s:fielderror></s:fielderror>
    <p>登录功能</p>
    <hr>
	<p>添加人员</p>
	<s:form action="loginAction_add" method="post" enctype="multipart/form-data">
    	<div style="position:relative;width: 70px;height: 100px;border: 1px solid #000;overflow: hidden;">
			<img id="imghead" style="position:absolute;height:100%;width:100%;z-index:1;" src="${pageContext.request.contextPath }/upload/login/temp.jpg">
			<input type="file" name="file" onchange="previewImage(this,70,100)" style="position:absolute;height:100%;width：100%;filter:alpha(opacity:0);opacity: 0;z-index:2;" accept="image/*">
		</div>
		<s:textfield label="账号" name="accounts"></s:textfield>
    	<s:textfield label="名称" name="realName"></s:textfield>
    	<s:textfield label="昵称" name="pickName"></s:textfield>
    	<s:textfield label="密码" name="pass"></s:textfield>
    	<s:textfield label="签名" name="say"></s:textfield>
    	<s:textfield label="权限" name="role_p"></s:textfield>
    	<s:textfield label="积分" name="myCase"></s:textfield>
    	<s:textfield label="等级" name="leaves"></s:textfield>
    	<s:submit value="确认添加"></s:submit>
    </s:form>
    <hr>
    <p>查询人员</p>
    <s:form action="loginAction_findAll">
    	<s:submit value="查询所有"></s:submit>
    </s:form>
    <s:form action="loginAction_findByName">
    	<s:textfield label="用户名" name="accounts"></s:textfield>
    	<s:submit value="用户名查询"></s:submit>
    </s:form>
    <s:form action="loginAction_find">
    	<s:textfield label="id号" name="id"></s:textfield>
    	<s:submit value="id查询"></s:submit>
    </s:form>
    
    <s:iterator value="friends">
			<table>
				<tr>
					<td>${id }</td>
					<td>${accounts }</td>
					<td>${realName }</td>
					<td>${pickName }</td>
					<td>${pass }</td>
					<td>${say }</td>
					<td>${role_p }</td>
					<td>${myCase }</td>
					<td>${leaves }</td>
					<td>
						<img src="${pageContext.request.contextPath }/upload/login/${picture }" style="width: 70px;height: 100px;">
					</td>
				</tr>
			</table>
		</s:iterator>
		<hr>
		<s:form action="loginAction_del">
    		<s:textfield label="id号" name="id"></s:textfield>
    		<s:submit value="id删除"></s:submit>
    	</s:form>
    	<hr>
    	<p>更新人员</p>
		<s:form action="loginAction_updata" method="post" enctype="multipart/form-data">
	    	<div style="position:relative;width: 70px;height: 100px;border: 1px solid #000;overflow: hidden;">
				<img id="imghead" style="position:absolute;height:100%;width:100%;z-index:1;" src="${pageContext.request.contextPath }/upload/login/temp.jpg">
				<input type="file" name="file" onchange="previewImage(this,70,100)" style="position:absolute;height:100%;width：100%;filter:alpha(opacity:0);opacity: 0;z-index:2;" accept="image/*">
			</div>
			
			<s:textfield label="id号" name="id"></s:textfield>
			<s:textfield label="账号" name="accounts"></s:textfield>
	    	<s:textfield label="名称" name="realName"></s:textfield>
	    	<s:textfield label="昵称" name="pickName"></s:textfield>
	    	<s:textfield label="密码" name="pass"></s:textfield>
	    	<s:textfield label="签名" name="say"></s:textfield>
	    	<s:textfield label="权限" name="role_p"></s:textfield>
	    	<s:textfield label="积分" name="myCase"></s:textfield>
	    	<s:textfield label="等级" name="leaves"></s:textfield>
	    	<s:submit value="确认添加"></s:submit>
	    </s:form>
    	
    	
    <hr>
  </body>
</html>
