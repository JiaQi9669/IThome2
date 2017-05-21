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
		<title>添加板块</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css_admin/common.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css_admin/main.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js_admin/libs/modernizr.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js_admin/jquery.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js_admin/style.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js_admin/jquery-1.11.1.min.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js_admin/jquery-1.11.2.js" ></script>
    <script src="${pageContext.request.contextPath }/js_admin/bootstrap.js"></script>
	</head>
	<body>
    <!--/main-->
    <div>
        <div>
        	<center><p style="color: red;">请添加合理板块 <s:fielderror></s:fielderror></p>
        	<hr>
            <form name="myform" id="myform" action="packageadd?project_id=${projecta.id }&project_ids=${project_ids }" method="post" enctype="multipart/form-data">
              <table class="insert-tab" >
                        <tbody>
                            <tr>
                                <th><i class="require-red">*</i>版块名称：</th>
                                <td>
                                <input class="common-text required" autocomplete="off" id="title" name="name" size="50" type="text">
                               </td>
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>板块介绍：</th>
                                <td><textarea name="message" autocomplete="off" class="common-textarea" id="content" cols="50" rows="10"></textarea></td>
                            
                            </tr>
                             <tr>
                                <th><i class="require-red">*</i>模块文件：</th>
                                <td>
                                <input class="common-text required" autocomplete="off" id="title" name="file" type="file">
                               </td>
                            </tr>
                            <c:if test="${project_ids == 0 }">
                           	<tr>
                                <th><i class="require-red">*</i>子模块数限制：</th>
                                <td>
                                <input class="common-text required" autocomplete="off" id="title" name="packNum" type="text">
                               </td>
                            </tr>
                            </c:if>
                             <c:if test="${project_ids == 1 }">
                             	<input hidden="true" name="packNum" value="0" type="text">
                             </c:if>
                            <tr>
                                <th></th>
                                <td>
                                    <input class="btn btn-primary btn6 mr10" value="添加" type="submit">
                                    <input class="btn btn6" onclick="history.go(-1)" value="返回" type="button">
                                </td>
                            </tr>
                        </tbody></table>  
            </form>
            </center>
        </div>
    </div>
		
	</body>
</html>
