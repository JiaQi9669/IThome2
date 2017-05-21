<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
		<title>上传源码</title>
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
        	<center><p style="color: red;">自觉遵守法律法规，上传合法文件</p>
        	<hr>
            <form name="myform" id="myform" action="fileuploads?pack_id=${packagea.id }" method="post" enctype="multipart/form-data">
              <table class="insert-tab" >
                        <tbody>
                            <tr>
                                <th><i class="require-red">*</i>文件名称：</th>
                                <td>
                                <input class="common-text required" autocomplete="off" id="title" name="name" size="50" type="text">
                               </td>
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>文件介绍：</th>
                                <td><textarea name="message" autocomplete="off" class="common-textarea" id="content" cols="50" rows="10"></textarea></td>
                            
                            </tr>
                             <tr>
                                <th><i class="require-red">*</i>源码选择：</th>
                                <td>
                                <input class="common-text required" autocomplete="off" id="title" name="file" size="50" type="file">
                                </td>
                            </tr>
                            <tr>
                                <th></th>
                                <td>
                                    <input class="btn btn-primary btn6 mr10" value="立即上传" type="submit">
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
