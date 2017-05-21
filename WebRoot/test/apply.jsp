<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'view.jsp' starting page</title>
  	<script type="text/javascript" src="${pageContext.request.contextPath }/js/imgchange.js"></script>
  	</head>
  
  <body>
    <a href="test_index">《返回</a>
    <p>招新报名所需功能</p>
    <s:fielderror></s:fielderror>
    <hr>
    <p>申请报名</p>
    <s:form action="applyAction_add" method="post" enctype="multipart/form-data">
    	<div id="preview" style="position:relative;width: 70px;height: 100px;border: 1px solid #000;overflow: hidden;">
			<img id="imghead" style="position:absolute;height:100%;width:100%;z-index:1;" src="${pageContext.request.contextPath }/upload/demos.png">
			<input type="file" name="file" onchange="previewImage(this,70,100)" style="position:absolute;height:100%;width：100%;filter:alpha(opacity:0);opacity: 0;z-index:2;" accept="image/*">
		</div>
    	<s:textfield label="名称" name="stuName"></s:textfield>
    	<s:textfield label="性别" name="stuSex"></s:textfield>
    	<s:textfield label="出生年月" name="stuBorn"></s:textfield>
    	<s:textfield label="专业班级" name="stuClass"></s:textfield>
    	<s:textfield label="学号" name="stuID"></s:textfield>
    	<s:textfield label="电话" name="stuPhone"></s:textfield>
    	<s:textfield label="QQ号" name="stuQq"></s:textfield>
    	<s:textfield label="寝室" name="stuSleepRoom"></s:textfield>
    	<s:textfield label="加入社团" name="stuJoinParty"></s:textfield>
    	<s:textfield label="特长" name="stuGoodAt"></s:textfield>
    	<s:textfield label="自我介绍" name="stuAboutSelf"></s:textfield>
    	<s:textfield label="大学打算" name="stuAboutFuture"></s:textfield>
    	<s:textfield label="报名类型" name="applytype"></s:textfield>
    	
    	<s:textfield label="籍贯" name="stuaddr"></s:textfield>
    	<s:textfield label="邮箱" name="stuemail"></s:textfield>
    	<s:textfield label="对实验室的理解" name="aboutlab"></s:textfield>
    	<s:submit value="确认添加"></s:submit>
    </s:form>
    <hr>
    <p>查询报名所有</p>
    	<s:form action="applyAction_findAll">
    		<s:submit value="确认查询"></s:submit>
    	</s:form>
    	<s:iterator value="apply">
			<table>
				<tr>
					<td>${id }</td>
					<td>${stuName }</td>
					<td>${stuSex }</td>
					<td>${stuBorn }</td>
					<td>${stuClass }</td>
					<td>${stuID }</td>
					<td>${stuPhone }</td>
					<td>${stuQq }</td>
					<td>${stuSleepRoom }</td>
					<td>${stuJoinParty }</td>
					<td>${stuGoodAt }</td>
					<td>${stuAboutSelf }</td>
					<td>${stuAboutFuture }</td>
					<td><a href="${url_link }">${url_link }</a>
					</td>
					<td>
						<img src="${pageContext.request.contextPath }/upload/apply/${picture }" style="width: 70px;height: 100px;">
					</td>
					<td>${applytype }</td>
					<td>${dates }</td>
				</tr>
			</table>
		</s:iterator>
    <hr>
    <p>通过id查询</p>
    	<s:form action="applyAction_find">
    		<s:textfield label="编号" name="id"></s:textfield>
    		<s:submit value="确认查询"></s:submit>
    	</s:form>
    <hr>
    <p>导出excel表</p>
    	<s:form action="applyAction_getMessage">
    		<s:submit value="确认查询"></s:submit>
    	</s:form>
    <hr>
    
  </body>
</html>
