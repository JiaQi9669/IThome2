<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>成员管理</title>
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
    <jsp:include page="/WEB-INF/homes/top_menu.jsp"></jsp:include>
    
    <center>
    <s:iterator value="friends">
    <div class="search-wrap">
        <div class="search-content">
            <form action="toupdatepersons" method="post">
	        	<table class="result-tab" width="90%">
               
                   		 <!-- <tr>
                                <th><i class="require-red">*</i>个人照片</th>
                                <td><input name="file" id="" type="file"></td>
                            </tr> -->
                            <tr>
                                <th><i class="require-red">*</i>姓名：</th>
                                <td>
                                    <input class="common-text required" autocomplete="off" id="title" name="realName" size="50" value=${realName }  type="text">
                                </td>
                            </tr>
                             <tr>
                                <th><i class="require-red">*</i>昵称：</th>
                                <td>
                                    <input class="common-text required" autocomplete="off" id="title" name="pickName" size="50" value=${pickName } type="text">
                                </td>
                            </tr>
                             <tr>
                                <th><i class="require-red">*</i>个性话语：</th>
                                <td>
                                    <input class="common-text required" autocomplete="off" id="title" name="say" size="50" value=${say }  type="text">
                                </td>
                            </tr>
                             <tr>
                                <th><i class="require-red">*</i>积分：</th>
                                <td>
                                    <input class="common-text required" autocomplete="off" id="title" name="myCase" size="50" value=${myCase } type="text">
                                </td>
                            </tr>
                             <tr>
                                <th><i class="require-red">*</i>等级：</th>
                                <td>
                                    <input class="common-text required" autocomplete="off" id="title" name="leaves" size="50" value=${leaves } type="text">
                                </td>
                            </tr>
                             <tr>
                                <th><i class="require-red">*</i>权限：</th>
                                <td>
                                    <input class="common-text required" autocomplete="off" id="title" name="role_p" size="50" value=${role_p } type="text">
                                </td>
                            </tr>
                             <tr>
                                <th><i class="require-red">*</i>基地账号：</th>
                                <td>
                                    <input class="common-text required" autocomplete="off" id="title" name="accounts" size="50" value=${accounts } type="text">
                                </td>
                            </tr>
                             <tr>
                                <th><i class="require-red">*</i>基地密码：</th>
                                <td>
                                    <input class="common-text required" autocomplete="off" id="title" name="pass" size="50" value=${pass }  type="text">
                                </td>
                            </tr>
                            <tr>
                                <th><input name="id" value=${id } type="hidden" /></th>
                                <td>
                                	<input class="btn btn-primary btn6 mr10" value="修改" type="submit">
                                    <input class="btn btn6" onclick="history.go(-1)" value="返回" type="button">
                                </td>
                            </tr>
                            
                </table>
            </form>
        </div>
        
    </div>
    </s:iterator>
    </center>
</body>
</html>