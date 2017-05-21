<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		 <meta charset="UTF-8">
    <title>我参与的项目</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css_admin/common.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css_admin/main.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js_admin/libs/modernizr.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js_admin/jquery.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js_admin/style.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js_admin/jquery-1.11.1.min.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js_admin/jquery-1.11.2.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js_admin/dropDown.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js_admin/time.js" ></script>
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
		<div class="container clearfix" style="width: 98%;">  
       
    <!--/main-->
    <div>
        <div>
            <div>
                <form action="projectfindmyjoinBykey" method="post">
                    <table class="search-tab">
                        <tr>
                            <th width="70">板块名:</th>
                            <td><input class="common-text" placeholder="参与板块" name="name" autocomplete="off" type="text"></td>
                            <td><input class="btn btn-primary btn2" value="查询" type="submit"></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
        <div>
            <form name="myform" id="myform" method="post">
                <div class="result-title">
                </div>
                <div class="result-content">
                    <table class="result-tab" width="100%">
                        <tr>
                            <th class="tc" width="5%"></th>
                            <th>项目名称</th>
                            <th>项目信息</th>
                            <th>阅览量</th> 
                            <th>板块数</th> 
                            <th>参与模块</th>
                            <th>模块描述</th>             
                            <th>发布人</th>
                            <th>发布时间</th>
                            <th>操作</th>
                        </tr>
                      
                         <s:iterator value="pageBean.recordList">
                         <c:if test="${projects.name != null && projects.name != '' }">
                            <tr>
                               <td class="tc"><img src="${pageContext.request.contextPath }/images/project.gif"/></td>
	                           <td>
	                               <a href="projectintroduce?id=${projects.id }">${projects.name }</a>
	                           </td>
					           <td>${projects.message }</td>
					           <td>${projects.viewCounts }</td>
					           <td>${packNum }</td>
					           <td>${name }</td>
					           <td>${message }</td>
					           <td>${projects.friend.pickName }</td>
					           <td>${projects.dates }</td>
					           <td>
					           		<c:if test="${projects.projectstate == 0 }">
					           			<a href="packagedelJoin?id=${id }" class="btn btn-primary btn2">退出开发</a>
									</c:if>
									<c:if test="${projects.projectstate == 1 }">
										已结项
									</c:if>
					           </td>
					         </tr>
					     </c:if>
					     <c:if test="${fpackage.projects.name != null && fpackage.projects.name !='' }">
					      <tr>
					      	  <td class="tc"><img src="${pageContext.request.contextPath }/images/project.gif"/></td>
					           <td>
	                               <a  href="projectintroduce?id=${fpackage.projects.id }">${fpackage.projects.name }</a>
	                           </td>
	                           <td>${fpackage.projects.message }</td>
					           <td>${fpackage.projects.viewCounts }</td>
					           <td>${packNum }</td>
					           <td>${name }</td>
					           <td>${message }</td>
					           <td>${fpackage.friends.pickName }</td>
					           <td>${fpackage.dates }</td>
					           <td>
					           		<c:if test="${fpackage.projects.projectstate == 0 }">
					           			<a href="packagedelJoin?id=${id }" class="btn btn-primary btn2">退出开发</a>
									</c:if>
									<c:if test="${fpackage.projects.projectstate == 1 }">
										已结项
									</c:if>
					           </td>
					        </tr>
					     </c:if>
                        </s:iterator>
                    </table>
                    <div class="pagin">
		<div class="message">
			共<i class="blue_page"><s:property value="pageBean.pageCount" />
			</i>页， <i class="blue_page"><s:property value="pageBean.recordCount" />
			</i>条记录， 当前显示第&nbsp;<i class="blue_page">
			<s:if test="pageBean.currentPage == 0">
				1
			</s:if>
			<s:else>
				<s:property value="pageBean.currentPage" />
			</s:else>&nbsp;</i>页
			
		</div>
		
		<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<!--真分页遍历  -->
		<ul class="paginList">
			
			<s:iterator begin="pageBean.beginPageIndex"
				end="pageBean.endPageIndex" var="pageNums">
				<li class="paginItem ${pageBean.currentPage==pageNums?'current':''}">
					<c:if test="${pageBean.currentPage == pageNums }">
						<a>${pageNums }</a>
					</c:if>
					<c:if test="${pageBean.currentPage != pageNums }">
						<c:if test="${projecttype == 1 }">
							<a href="projectfindmyjoinBykey?name=${projectname }&pageNum=${pageNums }">${pageNums }</a>
						</c:if>
						<c:if test="${projecttype != 1 }">
							<a href="projectjoin?pageNum=${pageNums }">${pageNums }</a>
						</c:if>
					</c:if>
				</li>
			</s:iterator>
		</ul>
	</div>
                </div>
            </form>
        </div>
    </div>
    </div>
	</body>
</html>
