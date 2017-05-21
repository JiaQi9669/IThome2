<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/public.css"/>
		<link rel="stylesheet" href="${pageContext.request.contextPath }/css/Join.css" />
		<!-- Bootstrap -->
	    <link href="${pageContext.request.contextPath }/css/bootstrap.min.css" rel="stylesheet">
	    
      </head>
	<body style="padding: 0px;margin: 0px;">
		<div id="apply" style="padding-top:5px;margin-top: 20px;">
				<a href="applylist">《返回</a>
				<!-- <form id="Info" name="Info" action="applyadd" method="post" enctype="multipart/form-data"> -->
					<h1>报名人员信息表</h1>
					<!--人员信息  -->
					<s:iterator value="apply">
					<div class="clear" id="wrap">
						<div class="file-box fl">
							<img id="file_img" src="${pageContext.request.contextPath }/upload/apply/${picture }">
						</div>
						<div class="file-head fl">
							<div class="picshort">
								<label class="labelt" for="name">姓　　名：</label>
								<input type="text" name="stuName" class="my_ipt" value="${stuName }" id="name" disabled="disabled" maxlength="10"/>
							</div>
							<div class="picshort">
								<label class="labelt" for="sex">性　　别：</label>
								<input type="text" name="stuSex" class="my_ipt" value="${stuSex }" disabled="disabled" id="sex" maxlength="1"/>
							</div>
							<div class="picshort">
								<label class="labelt" for="room">寝　　室：</label>
								<input type="text" name="stuSleepRoom" value="${stuSleepRoom }" disabled="disabled"  class="my_ipt" id="room" maxlength="20"/>
							</div>
						</div>
						<div class="info_right fr">
							<br>
								<br>
								<center><b>所选技术</b></center><br>
			        			<p>${personHobby }</p>
						</div>
					</div>
					<div class="short">
						<label class="labelt" for="add">籍　　贯：</label>
						<input type="text" name="stuaddr" value="${stuaddr }" disabled="disabled" class="my_ipt" id="add" maxlength="30"/>
						<label class="labelt" for="born">出生日期：</label>
						<input type="text" name="stuBorn" value="${stuBorn }" disabled="disabled" class="my_ipt" id="born" />
					</div>
					<div class="short">
						<label class="labelt" for="id">学　　号：</label>
						<input type="text" name="stuID" value="${stuID }" disabled="disabled" class="my_ipt" id="id" maxlength="12"/>
						<label class="labelt" for="class">专业班级：</label>
						<input type="text" name="stuClass" value="${stuClass }" disabled="disabled" class="my_ipt" id="class" maxlength="20"/>
					</div>
					<div class="short">
						<label class="labelt" for="tel">手机号码：</label>
						<input type="text" name="stuPhone" class="my_ipt" value="${stuPhone }" disabled="disabled" id="tel" maxlength="11"/>
						<label class="labelt" for="qq">ＱＱ号码：</label>
						<input type="text" name="stuQq" value="${stuQq }" disabled="disabled" class="my_ipt" id="qq" maxlength="13"/>
					</div>
					<div class="short">
						<label class="labelt" for="emile">邮　　箱：</label>
						<input type="text" name="stuemail" value="${stuemail }" disabled="disabled" class="my_ipt" id="emile" maxlength="35"/>
					</div>
					<div class="long">
						<label class="labelt" for="spec">有哪些特长：</label>
						<input type="text" value="${stuGoodAt }" disabled="disabled" name="stuGoodAt" class="my_ipt" id="spec" maxlength="249"/>
					</div>
					<div class="long">
						<label class="labelt" for="assn">加入的社团：</label>
						<input type="text" value="${stuJoinParty }" disabled="disabled" name="stuJoinParty" class="my_ipt" id="assn" maxlength="240"/>
					</div>
					<hr />
					<div class="short">
						<label class="labelt" for="ans1">自我介绍</label><br/>
						<p class="my_texta" id="ans3">${stuAboutSelf }</p>
					</div>
					<div class="long">
						<label class="labelt" for="ans2">加入实验室的原因、对实验室的理解：</label><br/>
						<p class="my_texta" id="ans2">${aboutlab }</p>
					</div>
					<div class="long">
						<label class="labelt" for="ans3">如果你进入实验室你会如何规划在大学生活：</label><br />
						<p class="my_texta" id="ans3">${stuAboutFuture }</p>
					</div>
				</s:iterator>
				<!-- </form> -->
			</div>
	</body>
</html>
