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
    <title>资源管理</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css_admin/common.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css_admin/main.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js_admin/libs/modernizr.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js_admin/jquery.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js_admin/style.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js_admin/jquery-1.11.1.min.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js_admin/jquery-1.11.2.js" ></script>
    <script src="${pageContext.request.contextPath }/js_admin/bootstrap.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/pages.css" type="text/css"></link>
   <style type="text/css">
   	table{
		text-align: center;
	}
   </style>
</head>
<body>
    <jsp:include page="/WEB-INF/homes/top_menu.jsp"></jsp:include>
    
    <div class="result-wrap">
        <form name="myform" id="myform" method="post" action="datafindByKeyWord">
            <div class="result-title">
                <div class="result-list">
                     <a id="updateOrd" href="javascript:void(0)"><i class="icon-font"></i>查询资源</a>
                        <input class="common-text" placeholder="关键字" name="name" type="text">
                        <input class="btn btn-primary btn2" value="查询" type="submit">
                </div>
            </div>
        </form>
            <div class="result-content">
                <table class="result-tab" width="100%">
                <tr>
                <th colspan="10"style="text-align: center;">
               		 资源总览
                </th>
                </tr>
                    <tr>
                    	<th class="tc" width="5%"></th>
                    	<th>编号</th>
                        <th>资源名</th>
                        <th>详情</th>
                        <th>上传日期</th>
                        <th>上传人</th>
                        <th>所属类别</th>
                        <th>下载量</th>
                        <th>下载</th>
                        <th>操作</th>
                    </tr>
                    <!--datas  -->
                     <s:iterator value="pageBean.recordList" status="index">
	                	<tr>
		                	<td class="tc"><input name="id[]" value="" type="checkbox"></td>
		                	<td>${index.count }</td>
	                        <td>${name }</td>
	                        <td>${message }</td>
	                        <td>${dates }</td>
	                        <td>${friends }</td>
	                        <td>${data_class.name }</td>
	                        <td>${down_num }</td>
	                        <td>
	                        <!-- 构建一个url -->
	                        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		  					<c:url var="url" value="datadown">
		  						<c:param name="fileName" value="${url_data }"></c:param>
		  					</c:url>
		  					<a href="${url }">下载</a>
		  					</td>
		  					
		  					<td>
		  					<c:url var="url" value="datadel">
		  						<c:param name="id" value="${id }"></c:param>
		  					</c:url>
		  					<a href="${url }">删除</a>
		  					</td>
	                    </tr>
	                </s:iterator>
                </table>
            </div>
       
    </div>
    <div class="pagin">
		<div class="message">
			共<i class="blue_page"><s:property value="pageBean.pageCount" />
			</i>页， <i class="blue_page"><s:property value="pageBean.recordCount" />
			</i>条记录， 当前显示第&nbsp;<i class="blue_page"> <s:if
					test="pageBean.currentPage == 0">
				1
			</s:if> <s:else>
					<s:property value="pageBean.currentPage" />
				</s:else>&nbsp;</i>页

		</div>

		<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
		<!--真分页遍历  -->
		<ul class="paginList">

			<s:iterator begin="pageBean.beginPageIndex"
				end="pageBean.endPageIndex" var="pageNums">
				<li class="paginItem ${pageBean.currentPage==pageNums?'current':''}">
					<c:if test="${pageBean.currentPage == pageNums }">
						<a>${pageNums }</a>
					</c:if>
					<c:if test="${pageBean.currentPage != pageNums }">
						<c:if test="${searchType == 1 }">
							<a href="datafindByKeyWord?name=${searchName }&pageNum=${pageNums }">${pageNums }</a>
						</c:if>
						<c:if test="${searchType != 1 }">
							<a href="datalist?pageNum=${pageNums }">${pageNums }</a>
						</c:if>
					</c:if>
				</li>
			</s:iterator>
		</ul>
	</div>
</body>
</html>