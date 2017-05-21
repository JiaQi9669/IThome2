<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta charset="UTF-8">
		<title>活动</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/public.css"/>
		<link rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css" />

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
		
		<div class="threedbox">
			<div class="space">
				<div class="bone">
					<div class="mian" id="mian1"><div class="bar"></div></div>
					<div class="mian" id="mian2"><div class="bar"></div></div>
					<div class="mian" id="mian3"><div class="bar"></div></div>
					<div class="mian" id="mian4"><div class="bar"></div></div>
					<div class="mian" id="mian5"><div class="bar"></div></div>
					<div class="mian" id="mian6"><div class="bar"></div></div>
				</div>
			</div>
		</div>
		<div id="bottom">
			<div class="clear">
			<div class="view1 fl clear" id="view1">
				<div class="pic fl"><img src="${pageContext.request.contextPath }/img/main/66.jpg" /></div>
				<div class="text fl">
					<p>郑轻软件创新基地位于郑州轻工业学院科学校区第四教学楼五楼，有三百平米左右的514和516两个实验机房及后勤管理，会议室等功能房间，
						实验室拥有服务器及配套软硬件实验设备，并为学生配备了台式计算机、移动硬盘等计算设备及饮水机，空调，暖气等良好的环境条件。
					</p>
				</div>
				<div class="introduce fl"><span>我们的环境</span></div>
			</div>
			</div>
			<div class="clear">
			<div class="view2 fr clear" id="view2">
				<div class="pic fr"><img src="${pageContext.request.contextPath }/img/beijing/0.jpg" /></div>
				<div class="text fr">
					<p>实验室为每位成员准备了单独的实验台，含台式电脑，打印机等硬件设备。实验室内拥有大型服务器、空调、暖气、饮水机等设施，
					为每位成员提供良好的学习环境。每间实验室还拥有相关的书籍展柜，成员可以根据自己的兴趣选用对应的参考书。
					</p>
				</div>
				<div class="introduce fr" id="in2"><span>我们的现状</span></div>
			</div>
			</div>
			<div class="clear">
			<div class="view1 fl clear" id="view3">
				<div class="pic fl"><img src="${pageContext.request.contextPath }/img/teacher.jpg" /></div>
				<div class="text fl">
					<p>张志锋，硕士研究生，清华大学出版社特邀专家。指导学生参加省级和国家级程序大赛获奖多次被评为“学科竞赛优秀指导老师”，
					致力于培养学生开发团队，培养出一批优秀的软件开发人员。长期以来一直进行程序设计课程的改革，并编著《Java程序设计与项目实训教程》等众多优秀教材。</p>
				</div>
				<div class="introduce fl"><span>我们的老师</span></div>
			</div>
			</div>
			<div class="clear">
			<div class="view2 fr clear" id="view4">
				<div class="pic fr"><img src="${pageContext.request.contextPath }/img/beijing/54.jpg" /></div>
				<div class="text fr">
					<p>创新基地致力于学科竞赛、创新项目和全国计算机类大赛，旨在通过以项目驱动带动技术，技术强化思维的方式，
					让每位成员可以在经历基础培训后，选择自己感兴趣的方向继续发展。定期每个成员会相互组成小组进行一些项目的开发或者参加学科竞赛来提高自己的见识，丰富自己的眼界。</p>
				</div>
				<div class="introduce fr"><span>我们的誓言</span></div>
			</div>
			</div>
		</div>
		
		<!--底部区域  -->
		<jsp:include page="/WEB-INF/publics/bottom.jsp"></jsp:include>

		<script src="${pageContext.request.contextPath }/js/jquery-2.1.1.min.js"></script>
		<script src="${pageContext.request.contextPath }/js/rotate.js"></script>
		<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
	</body>
</html>