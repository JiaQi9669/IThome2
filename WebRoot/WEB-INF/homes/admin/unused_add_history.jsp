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
	<!--
    	作者：643213130@qq.com
    	时间：2016-11-18
    	描述：菜单栏目
  	-->
    <div class="crumb-wrap">
		<div class="crumb-list">
        	<i class="icon-font"></i>
        	<a  target="_parent">首页</a>
        	<span class="crumb-step">&gt;</span>
        	<span class="crumb-name">管理区</span>
        	<span class="crumb-step">&gt;</span>
        	<span class="crumb-name">历史管理</span>
        	<span class="crumb-step">&gt;</span>
        	<span class="crumb-name">添加历史</span>
		</div>
    </div>
    <!--/main-->
    <div class="">
        <div class="result-wrap">
            <div class="result-content">
                <form action="labaddhistorysu" method="post" id="myform" name="myform" enctype="multipart/form-data">
                    <table class="insert-tab" width="100%">
                        <tbody>
                        	<tr>
                                <th><i class="require-red">*</i>时间：</th>
                                <td>
                                    <input class="common-text required" autocomplete="off" id="title" name="dates" size="50" value="" type="text">
                                </td>
                            </tr>
                        	<tr>
                                <th><i class="require-red">*</i>历史照片：</th>
                                <td><input name="file" id="" type="file"></td>
                            </tr>
                            <tr>
                                <th>历史介绍：</th>
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