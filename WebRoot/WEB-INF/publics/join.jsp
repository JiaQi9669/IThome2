<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta charset="UTF-8">
		<title>加入</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/public.css"/>
		<link rel="stylesheet" href="${pageContext.request.contextPath }/css/Join.css" />
		<!-- Bootstrap -->
	    <link href="${pageContext.request.contextPath }/css/bootstrap.min.css" rel="stylesheet">
	
	    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	    <!--[if lt IE 9]>
	      <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	      <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
	    <![endif]-->
	    	
	</head>
	<body>
		
		<jsp:include page="/WEB-INF/publics/menu.jsp"></jsp:include>
		
		<div id="body">
			<div id="tip">
				<h1>报名须知</h1>
				<h2>一、关于我们</h2>
				<p>郑州轻工业学院软件综合实践与创新基地是隶属于郑州轻工学院工程训练中心的一个以软件学科教学辅助与软件储备人才培养为主要任务的创新型、实践型的校级软件学科实验室。下设郑轻软创团队和软件学科新生集训队。</p>
				<p>在过去的一年中团队曾代表学校参加软件学科各类竞赛，为学校和学院取得诸多荣誉。其中省级奖项三十余项，国级奖项五项，为学校开发和投用多套OA系统，在本校软件方面具有较大影响力。</p>
				<p>近两年，出自本实验室的毕业生，多被京东、群硕等知名公司录取......</p>
				<h2>二、招新对象</h2>
				<p>本次招新工作面向郑州轻工业学院软件学院 16 级全体学生。</p>
				<h2>三、招新要求</h2>
				<p>1.　自觉遵守创新基地各项规章制度。</p>
				<p>2.　具有较强责任心，细心耐心且具备较好沟通能力。</p>
				<p>3.　热爱编程、谦逊好学、具有一定的自学能力。</p>
				<p>4.　具有团队合作精神。</p>
				<p>5.　具有编程基础、美工基础者优先。</p>
				<p>6.　想成为、要成为软件大牛的同学。</p>
				<h2>四、成员待遇</h2>
				<p>凡通过本实验室选拔的同学，将获得实验室成员的标准配置，在老师和学长学姐们的带领下，走上浪潮之巅，做牛X的程序员，做高大上的软件，代表学校到全国各地参加各种软件学科类竞赛......</p>
				<p class="more">了解详情请加QQ群：<strong>572272821</strong></p>
			</div>
			<div id="apply">
				<form id="Info" name="Info" action="applyadd" method="post" enctype="multipart/form-data">
					<h1>招新报名表</h1>
					<div class="clear" id="wrap">
						<div class="file-box fl">
							<img id="file_img" src="${pageContext.request.contextPath }/img/default.jpg">
							<input type="file"  name="file" class="file" id="fileField" size="28" onchange="previewImage(this)"/>
						</div>
						<div class="file-head fl">
							<div class="picshort">
								<label class="labelt" for="name">姓　　名：</label>
								<input type="text" name="stuName" class="my_ipt" id="name" maxlength="10"/>
								<span class="publicSp" id="public1">不能为空！</span>
							</div>
							<div class="picshort">
								<label class="labelt" for="sex">性　　别：</label>
								<input type="text" name="stuSex" class="my_ipt" id="sex" placeholder="男/女" autocomplete="off" maxlength="1"/>
								<span class="publicSp" id="public2">不能为空！</span>
							</div>
							<div class="picshort">
								<label class="labelt" for="room">寝　　室：</label>
								<input type="text" name="stuSleepRoom"  class="my_ipt"  placeholder="1#510" autocomplete="off" id="room" maxlength="20"/>
								<span class="publicSp" id="public3">不能为空！</span>
							</div>
						</div>
						<div class="info_right fr">
							<label class="labelc" for="personHobby_1">
								<input type="checkbox" class="labelc_checkbox"  name="personHobby" value="Java" id="personHobby_1"/>
			        			<span>Java</span>
							</label><label class="labelc" for="personHobby_2">
								<input type="checkbox" class="labelc_checkbox" name="personHobby" value="Web" id="personHobby_2"/>
			        			<span>Web</span>
							</label><label class="labelc" for="personHobby_3">
								<input type="checkbox" class="labelc_checkbox" name="personHobby" value="PHP" id="personHobby_3"/>
		        				<span>PHP</span>
							</label><label class="labelc" for="personHobby_4">
								<input type="checkbox" class="labelc_checkbox" name="personHobby" value="C" id="personHobby_4"/>
			        			<span>C</span>
							</label><label class="labelc" for="personHobby_5">
								<input type="checkbox" class="labelc_checkbox" name="personHobby" value="C#" id="personHobby_5"/>
			        			<span>C#</span>
							</label><label class="labelc" for="personHobby_6">
								<input type="checkbox" class="labelc_checkbox" name="personHobby" value="C++" id="personHobby_6"/>
			        			<span>C++</span>
							</label><label class="labelc" for="personHobby_7">
								<input type="checkbox" class="labelc_checkbox" name="personHobby" value="Android" id="personHobby_7"/>
			        			<span>Android</span>
							</label><label class="labelc" for="personHobby_8">
								<input type="checkbox" class="labelc_checkbox" name="personHobby" value="PS" id="personHobby_8"/>
			        			<span>PS</span>
							</label><label class="labelc" for="personHobby_9">
								<input type="checkbox" class="labelc_checkbox" name="personHobby" value="其他" id="personHobby_9"/>
			        			<span>其他</span>
							</label>
						</div>
					</div>
					<div class="short">
						<label class="labelt" for="add">籍　　贯：</label>
						<input type="text" name="stuaddr" class="my_ipt" id="add" maxlength="30" placeholder="*省-*市-*县-*" autocomplete="off"/>
						<label class="labelt" for="born">出生日期：</label>
						<input type="text" name="stuBorn" class="my_ipt" id="born" placeholder="1999-01-01" autocomplete="off"/>
					</div>
					<div class="short">
						<label class="labelt" for="id">学　　号：</label>
						<input type="text" name="stuID" class="my_ipt" id="id" maxlength="12"/>
						<label class="labelt" for="class">专业班级：</label>
						<input type="text" name="stuClass" class="my_ipt" id="class" maxlength="20" placeholder="软件工程Java技术14-02" autocomplete="off"/>
					</div>
					<div class="short">
						<label class="labelt" for="tel">手机号码：</label>
						<input type="text" name="stuPhone" class="my_ipt" id="tel" maxlength="11"/>
						<label class="labelt" for="qq">ＱＱ号码：</label>
						<input type="text" name="stuQq" class="my_ipt" id="qq" maxlength="13"/>
					</div>
					<div class="short">
						<label class="labelt" for="emile">邮　　箱：</label>
						<input type="text" name="stuemail" class="my_ipt" id="emile" maxlength="35"/>
						<span class="publicSp" id="public4">不能为空！</span>
					</div>
					<div class="long">
						<label class="labelt" for="spec">有哪些特长：</label>
						<input type="text" name="stuGoodAt" class="my_ipt" id="spec" maxlength="249"/>
					</div>
					<div class="long">
						<label class="labelt" for="assn">加入的社团：</label>
						<input type="text" name="stuJoinParty" class="my_ipt" id="assn" maxlength="240"/>
					</div>
					<hr />
					<div class="short">
						<textarea class="my_texta" name="stuAboutSelf" placeholder="介绍一下自己吧："  maxlength="249"></textarea>
					</div>
					<div class="long">
						<label class="labelt" for="ans2">加入实验室的原因、对实验室的理解：</label><br/>
						<textarea class="my_texta" name="aboutlab" id="ans2" maxlength="249"></textarea>
					</div>
					<div class="long">
						<label class="labelt" for="ans3">如果你进入实验室你会如何规划在大学生活：</label><br />
						<textarea class="my_texta" name="stuAboutFuture" id="ans3" maxlength="249"></textarea>
					</div>
					<hr />
					<div class="long">
						<input type="submit" id="submit_btn" class="my_btn" id="enter" onClick="return check()" value="提交报名"/>
					</div>
				</form>
			</div>
		</div>

		<!--底部区域  -->
		<jsp:include page="/WEB-INF/publics/bottom.jsp"></jsp:include>
		
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.12.4.min.js" ></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/Join.js" ></script>
		<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
	</body>
</html>
