<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="UTF-8">
    <title>添加历史</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css_admin//common.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css_admin//main.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js_admin//libs/modernizr.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js_admin//jquery.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js_admin//style.js" ></script>
</head>
<body>
<div class="container clearfix">
    <!--/main-->
    <div class="">
        <div class="result-wrap">
            <div class="result-content">
                <form action="labaddhistorysu" method="post" id="myform" name="myform" enctype="multipart/form-data">
                    <table class="insert-tab" width="100%">
                        <tbody>
                        	<tr>
                                <th><i class="require-red">*</i>通知标题：</th>
                                <td>
                                    <input name="name" class="common-text required" autocomplete="off" type="text">
                                </td>
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>相关连接：</th>
                                <td>
                                    <input name="url_link" class="common-text required" autocomplete="off" type="text">
                                </td>
                            </tr>
                        	<tr>
                                <th><i class="require-red">*</i>相关图片：</th>
                                <td><input name="file" id="" type="file"></td>
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>通知类型：</th>
                                <td>
                                    <input name="types" class="common-text required" type="text">
                                </td>
                            </tr>
                            <tr>
                                <th>相关介绍：</th>
                                <td><textarea name="message" autocomplete="off" class="common-textarea" id="content" cols="30" style="width: 80%;" rows="4"></textarea></td>
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
            </div>
        </div>
    
    </div>
</div>
</body>
</html>