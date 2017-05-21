<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="UTF-8">
    <title>个人管理</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css_admin/common.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css_admin/main.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js_admin/libs/modernizr.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js_admin/jquery.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js_admin/style.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js_admin/jquery-1.11.1.min.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js_admin/jquery-1.11.2.js" ></script>
    <script src="${pageContext.request.contextPath }/js_admin/bootstrap.js"></script>
	<style type="text/css">
   	table{
		text-align: center;
	}
   </style>
</head>
<body>
        <jsp:include page="/WEB-INF/homes/top_menu.jsp"></jsp:include>
        
        
        <div class="search-wrap">
            <div class="search-content">
            <s:iterator value="friends">
                <form action="#" method="post">
        	<table class="result-tab" width="100%">
        		<tr>
        			<th colspan="5" style="text-align: center;">个人信息一览|&nbsp;&nbsp;&nbsp;<a href="tomyupdate">修改信息</a></th>
        		</tr>
        		
                  <tr>
                   <td rowspan="4"style="width: 250px;"><img src="${pageContext.request.contextPath }/upload/login/${picture}" style="width: 250px;"></td><!--rowspan合并多列单元格-->
                   <td>姓名</td>
                   <td>${realName } </td>
                   <td>昵称</td>
                   <td>${pickName }</td>
                  </tr>
                  <tr>
                   <td>个性话语</td>
                   <td>${say } </td>
                   <td>身份</td>
                   <td>成员</td>
                 </tr>
                  <tr>
                   <td>等级</td>
                   <td>${leaves }</td>
                   <td>积分</td>
                   <td>${myCase }</td>
                 </tr>
                  <tr>
                   <td>基地账号</td>
                   <td>${accounts }</td>
                   <td>基地密码</td>
                   <td>。。。</td>
                 </tr>
               </table>
                </form>
                </s:iterator>
            </div>
        </div>
</body>
</html>