<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!--
    	作者：643213130@qq.com
    	时间：2016-11-18
    	描述：菜单栏目
    -->
<div class="topbar-wrap white" style="background-color:#bbb;">
    <div class="topbar-inner clearfix">
        <div class="topbar-logo-wrap clearfix">
            <h1 class="topbar-logo">郑州轻工业学院　软创基地——内部综合系统</h1>
          	<div class="topbar-name">
          		<span style="color: black;padding-top: 3px; ">用户：<strong>${admins.pickName }&nbsp;&nbsp;&nbsp;&nbsp;
          		<a style="font-size: 9px;" class="my_btn" href="toexit">退出登录</a></strong></span>
          		<span style="color: black; font-size: 9px;">当前在线：<strong>${linecount }</strong></span>
          		<span style="color: black;font-size: 9px;">累计访问量：<strong>${totalcount }</strong></span>
          	</div>
        </div>
    </div>
</div>

<div class="container clearfix">
	<!--
    	作者：643213130@qq.com
    	时间：2016-11-18
    	描述：菜单栏目
    -->
    <div class="sidebar-wrap">
        <div class="sidebar-title"><h1>菜单</h1></div>
        <div class="sidebar-content">
            <ul class="sidebar-list">
                <li>
                    <a href="javascript:void(0);" class="link"><i class="icon-font">&#xe001;</i>讨论区</a>
                    <ul class="sub-menu">
                       <li><a href="boardview" target="ifmain"><i class="icon-font">&#xe008;</i>浏览帖子</a></li>
                        <li><a href="postme?pageNum=1" target="ifmain"><i class="icon-font">&#xe005;</i>我的贴子</a></li>
                        <li><a href="postabout?pageNum=1" target="ifmain"><i class="icon-font">&#xe005;</i>与我相关</a></li>
                        <li><a href="postpushview" target="ifmain"><i class="icon-font">&#xe006;</i>发布问题</a></li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:void(0);" class="link"><i class="icon-font">&#xe003;</i>资源区</a>
                    <ul class="sub-menu">
                        <li><a href="dataview" target="ifmain"><i class="icon-font">&#xe008;</i>资源管理</a></li>                       
                    </ul>
                </li>
                <li>
                    <a href="javascript:void(0);" class="link"><i class="icon-font">&#xe065;</i>项目区</a>
                    <ul class="sub-menu">
                        <li><a href="projectsubl" target="ifmain"><i class="icon-font">&#xe046;</i>项目列表</a></li>
                        <li><a href="projectrelease" target="ifmain"><i class="icon-font">&#xe026;</i>发布项目</a></li>                       
                        <li><a href="projectme" target="ifmain"><i class="icon-font">&#xe046;</i>我发布的项目</a></li> 
                        <li><a href="projectjoin" target="ifmain"><i class="icon-font">&#xe046;</i>我参与的项目</a></li> 
                    </ul>
                </li>
                <li>
                    <a href="javascript:void(0);" class="link"><i class="icon-font">&#xe018;</i>管理区</a>
                    <ul class="sub-menu">
                    	<c:if test="${admins.role_p == '0'}">
                    		<li><a href="tomy" target="ifmain"><i class="icon-font">&#xe017;</i>个人管理</a></li>
                    	</c:if>
                    	<c:if test="${admins.role_p == '1'}">
                    		<li><a href="applylist" target="ifmain"><i class="icon-font">&#xe014;</i>招新人员</a></li>
	                        <li><a href="topeople" target="ifmain"><i class="icon-font">&#xe003;</i>基地成员</a></li>
	                        <li><a href="tomy" target="ifmain"><i class="icon-font">&#xe017;</i>个人管理</a></li>
	                        <li><a href="labadhistory" target="ifmain"><i class="icon-font">&#xe017;</i>动态通知</a></li>
	                        <li><a href="projectlistpro" target="ifmain"><i class="icon-font">&#xe017;</i>项目管理</a></li>
	                        <li><a href="boardlist" target="ifmain"><i class="icon-font">&#xe017;</i>论坛管理</a></li>
	                        <li><a href="datalist" target="ifmain"><i class="icon-font">&#xe017;</i>资源管理</a></li>
                    	</c:if>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <!--/main-->
    <div class="main-wrap">
    	<iframe id="iframepage" src="gohomes" name="ifmain" onload="changeFrameHeight()"></iframe>
    </div>
</div>