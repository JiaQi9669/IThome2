<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="UTF-8">
    <title>添加成员</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css_admin/common.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css_admin/main.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js_admin/libs/modernizr.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js_admin/jquery.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js_admin/style.js" ></script>
</head>
<body>
<div class="container clearfix">
    
    <div class="">

        <div class="search-wrap">
            <div class="search-content">
                <form action="#" method="post">
                    
                </form>
            </div>
        </div>
        
    </div>
    <!--/main-->
    <div class="">
    	<center><h2>添加成员</h2></center>
        <div class="result-wrap">
            <div class="result-content">
            	<center>
                <form action="toaddsuccess" method="post" id="myform" name="myform" enctype="multipart/form-data">
                    <table class="insert-tab" width="70%">
                        <tbody>
                            <tr>
                                <th><i class="require-red">*</i>姓名：</th>
                                <td>
                                    <input class="common-text required" autocomplete="off" id="title" name="realName" size="50" value="" type="text">
                                </td>
                            </tr>
                             <tr>
                                <th><i class="require-red">*</i>基地账号：</th>
                                <td>
                                    <input class="common-text required" autocomplete="off" id="title" name="accounts" size="50" value="" type="text">
                                </td>
                            </tr>
                            <tr>
                                <th></th>
                                <td>
                                    <input class="btn btn-primary btn6 mr10" value="确认添加" type="submit">
                                    <input class="btn btn6" onclick="history.go(-1)" value="返回" type="button">
                                </td>
                            </tr>
                        </tbody></table>
                </form>
                </center>
            </div>
        </div>
    
    </div>
</div>
</body>
</html>