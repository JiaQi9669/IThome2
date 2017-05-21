<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<s:action name="board" id="boardList" executeResult="false" />
<s:action name="post" id="postList" executeResult="false" />
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
    <p>论坛功能测试</p>
    <s:fielderror></s:fielderror>
    <hr>
    <p>板块管理</p>
    <hr>
    <p>添加板块</p>

    <div id="preview" style="width: 70px;height: 100px;border: 1px solid #000;overflow: hidden;">
		<img id="imghead" width="100%" height="100%" src="${pageContext.request.contextPath }/upload/demos.png">
	</div>
    
   <s:form action="boardadd" method="post" enctype="multipart/form-data">
		<s:textfield label="名称" name="name"></s:textfield>
		<s:textarea label="详情" name="message"></s:textarea>
		<s:file name="file" onchange="previewImage(this,70,100)"></s:file>
    	<s:submit value="添加板块"></s:submit>
    </s:form>
    <hr>
    <p>删除板块</p>
    <s:form action="boarddel">
    	<s:textfield label="id" name="id"></s:textfield>
    	<s:submit value="删除板块"></s:submit>
    </s:form>
    <hr>
    <p>修改板块</p>
    <s:form action="boardupdata" method="post" enctype="multipart/form-data">
    	<s:textfield label="id" name="id"></s:textfield>
    	<s:textfield label="名称" name="name"></s:textfield>
		<s:textarea label="详情" name="message"></s:textarea>
		<s:file name="file" onchange="previewImage(this,70,100)"></s:file>
    	<s:submit value="修改板块"></s:submit>
    </s:form>
    <hr>
    <p>查询板块</p>
    <s:form action="boardfind">
    	<s:textfield label="id" name="id"></s:textfield>
    	<s:submit value="id查询板块"></s:submit>
    </s:form>
    <s:form action="boardfindAll">
    	<s:submit value="查询所有板块"></s:submit>
    </s:form>
    <s:iterator value="boards">
			<table>
				<tr>
					<td>${id }</td>
					<td>${name }</td>
					<td>${message }</td>
					<td>
						<img src="${pageContext.request.contextPath }/upload/talk/${url_img }" style="width: 50px;height: 50px;">
					</td>
					<%-- <td>${posts.length }</td> --%>
				</tr>
			</table>
	</s:iterator>
    <hr>
    
    <p>贴子管理</p>
    <hr>
    <p>添加贴子</p>
    <s:form action="postadd">
    	<s:textfield label="名字" name="name"></s:textfield>
    	<s:textfield label="信息" name="message"></s:textfield>
    	<s:select name="myboard" list="#boardList.boardList" label="选择板块"/>
    	<s:submit value="添加贴子"></s:submit>
    </s:form>
    <hr>
    <p>删除贴子</p>
    <s:form action="postdel">
    	<s:textfield label="id" name="id"></s:textfield>
    	<s:submit value="删除贴子"></s:submit>
    </s:form>
    <hr>
    <p>查询贴子</p>
    <s:form action="postfind">
    	<s:textfield label="id" name="id"></s:textfield>
    	<s:submit value="查询贴子"></s:submit>
    </s:form>
    <s:form action="postfindAll">
    	<s:submit value="查询所有"></s:submit>
    </s:form>
    <s:form action="postfindByName">
    	<s:textfield label="名字" name="name"></s:textfield>
    	<s:submit value="查询名字"></s:submit>
    </s:form>
    <s:form action="postfindHot">
    	<s:submit value="热度查询"></s:submit>
    </s:form>
    <s:iterator value="posts">
			<table>
				<tr>
					<td>${id }</td>
					<td>${name }</td>
					<td>${message }</td>
					<td>${dates }</td>
					<td>${count }</td>
					<td>${board.name }</td>
					<td>${friend }</td>
					<td>${reply }</td>
					<%-- <td>${posts.size }</td> --%>
				</tr>
			</table>
	</s:iterator>
    <hr>
    
    <p>回复管理</p>
    <hr>
    <p>回复板块</p>
    <s:form action="replyadd">
    	<s:textfield label="信息" name="message"></s:textfield>
    	<s:select name="posts" list="#postList.postList" label="选择所属贴子"/>
    	<s:submit value="添加回复"></s:submit>
    </s:form>
    <hr>
    <p>查询回复</p>
    <s:form action="replyfind">
     	<s:textfield label="id" name="id"></s:textfield>
    	<s:submit value="id查询"></s:submit>
    </s:form>
    <s:form action="replyfindAll">
    	<s:submit value="查询所有"></s:submit>
    </s:form>
    <s:form action="replyfindByDate">
    	<s:submit value="时序查询"></s:submit>
    </s:form>
    <s:iterator value="replys">
			<table>
				<tr>
					<td>${id }</td>
					<td>${message }</td>
					<td>${dates }</td>
					<td>${post.name }</td>
					<%-- <td>${friend }</td> --%>
				</tr>
			</table>
	</s:iterator>
    
  </body>
</html>
