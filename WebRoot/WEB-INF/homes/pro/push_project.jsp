<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
		<title>发布项目</title>
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
        <!-- <div class="crumb-wrap">
            <div class="crumb-list">
            	<i class="icon-font"></i>
            	<a href="#" target="_parent">首页</a>
            	<span class="crumb-step">&gt;</span>
            	<span class="crumb-name">项目区</span>
            	<span class="crumb-step">&gt;</span>
            	<span class="crumb-name">发布项目</span>
            </div>
        </div> -->
       
    <!--/main-->
    <div>
        <div>
        	<center><p style="color: red;">自觉遵守法律法规</p>
        	<hr>
            <form name="myform" id="myform" action="projectadd" method="post" enctype="multipart/form-data">
              <table class="insert-tab" >
                        <tbody>
                            <tr>
                                <th><i class="require-red">*</i>项目名称：</th>
                                <td>
                                <input class="common-text required" autocomplete="off" id="title" name="name" size="50" type="text">
                               </td>
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>项目介绍：</th>
                                <td><textarea name="message" autocomplete="off" class="common-textarea" id="content" cols="50" rows="10"></textarea></td>
                            
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>模块数限制：</th>
                                <td>
                                <input class="common-text required" autocomplete="off" id="title" name="packNum" type="text">
                               </td>
                            </tr>
                             <tr>
                                <th><i class="require-red">*</i>项目资源文档：</th>
                                <td>
                                <input class="common-text required" autocomplete="off" id="title" name="file" size="50" type="file">
                                </td>
                            </tr>
                            <tr>
                                <th></th>
                                <td>
                                    <input class="btn btn-primary btn6 mr10" value="发布" type="submit">
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
