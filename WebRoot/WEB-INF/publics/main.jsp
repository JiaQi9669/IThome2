<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta charset="UTF-8" >
		<Meta http-equiv="Page-Exit" Content="blendTrans(Duration=0.5)">
		<title>首页</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/public.css"/>
		<link rel="stylesheet" href="${pageContext.request.contextPath }/css/main.css" type="text/css">
		<!-- Bootstrap -->
	    <link href="${pageContext.request.contextPath }/css/bootstrap.min.css" rel="stylesheet">
	</head>
	<body>
	
	<jsp:include page="/WEB-INF/publics/menu.jsp"></jsp:include>
	
	<!--滚动图  -->
		<div id="decoroll2" class="imgfocus">
			<div id="decoimg_a2" class="imgbox">
				<div class="decoimg_b2"><a href="#"><img src="${pageContext.request.contextPath }/img/main/schoolbg.jpg"></a></div>
				<div class="decoimg_b2"><a href="#"><img src="${pageContext.request.contextPath }/img/main/schoolbg.png"></a></div>
				<div class="decoimg_b2"><a href="#"><img src="${pageContext.request.contextPath }/img/main/psb4LIF77K7.jpg"></a></div>
				<div class="decoimg_b2"><a href="#"><img src="${pageContext.request.contextPath }/img/main/faxianbei.png"></a></div>
			</div>
			<ul id="deconum2" class="num_a2">
				<li><a href="javascript:void(0)" hidefocus="true" target="_self"></a></li>
				<li><a href="javascript:void(0)" hidefocus="true" target="_self"></a></li>
				<li><a href="javascript:void(0)" hidefocus="true" target="_self"></a></li>
				<li><a href="javascript:void(0)" hidefocus="true" target="_self"></a></li>
			</ul>
		</div>
		<div id="bottom">
			<div class="run_wrap" id="run_wrap">
				<span class="run_head">竞赛信息</span>
				<div class="run_bar clear" id="run_bar">
					<div class="run_card fl">
						<div class="run_content clear">
							<img class="card_img  fl" src="${pageContext.request.contextPath }/img/lanqiao.png"/>
							<div class="card_dtl fl">
								<a href="http://www.lanqiao.org/#page1" target="_blank">蓝桥杯</a>
								<p>指导单位：教育部高校学生司。主办单位：教育部高等学校计算机科学与技术教学指导委员会 工业和信息化部人才交流中心。支持单位：中国软件行业协会。</p>
							</div>
						</div>
					</div>
					<div class="run_card fl">
						<div class="run_content clear">
							<img class="card_img  fl" src="${pageContext.request.contextPath }/img/eg-log.gif"/>
							<div class="card_dtl fl">
								<a href="http://www.jsjds.org/" target="_blank">中国大学生计算机设计大赛</a>
								<p>由教育部高校计算机类专业教导委、教育部高校软件工程专业教导委、教育部高校大学计算机课程教导委、教育部高校文科计算机基础教导分委、中国教育电视台联合主办。</p>
							</div>
						</div>
					</div>
					<div class="run_card fl">
						<div class="run_content clear">
							<img class="card_img  fl" src="${pageContext.request.contextPath }/img/ruanjianbei.png"/>
							<div class="card_dtl fl">
								<a href="http://www.cnsoftbei.com/" target="_blank">中国软件杯</a>
								<p>“中国软件杯”大学生软件设计大赛是一项面向中国在校学生的公益性赛事。大赛由国家工业和信息化部、教育部、江苏省人民政府共同主办。</p>
							</div>
						</div>
					</div>
					<div class="run_card fl">
						<div class="run_content clear">
							<img class="card_img  fl" src="${pageContext.request.contextPath }/img/faxianbei.png"/>
							<div class="card_dtl fl">
								<a href="http://www.dajiangsai.org/" target="_blank">发现杯</a>
								<p>“发现杯”中国大学生软件设计大奖赛是一场面向全国高校开展的软件设计大奖赛。大赛本着“发现人才、发现潜能、发现未来之星”的宗旨，邀请万家企业、千所高校、数万学子参与其中。</p>
							</div>
						</div>
					</div>
					<div class="run_card fl">
						<div class="run_content clear">
							<img class="card_img  fl" src="${pageContext.request.contextPath }/img/ydhlw.jpeg"/>
							<div class="card_dtl fl">
								<a href="http://miac.cug.edu.cn/" target="_blank">高校移动互联网应用开发创新赛</a>
								<p>全国高校移动互联网应用开发创新大赛，旨在提升高校学生积极参与移动互联网领域的研究兴趣，激发学生团队创新热情，提高技术应用与程序开发能力。</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="class_wrap clear gradient">
				<div class="class_head fl">
					<h3 class="class_name_h3">技术分类</h3>
					<p class="class_name_p">当前最热门的计算机技术</p>
				</div>
				
				<div class="class_name fl"><a class="class_name_a" href="http://baike.baidu.com/subview/29/12654100.htm" target="_blank">Java</a></div>
				<div class="class_name fl"><a class="class_name_a" href="http://baike.baidu.com/view/1219.htm" target="_blank">C语言</a></div>
				<div class="class_name fl"><a class="class_name_a" href="http://baike.baidu.com/view/824.htm" target="_blank">C++</a></div>
				<div class="class_name fl"><a class="class_name_a" href="http://baike.baidu.com/view/6590.htm" target="_blank">C#</a></div>
				
				<div class="class_name fl"><a class="class_name_a" href="http://baike.baidu.com/view/1685727.htm" target="_blank">Oracle数据库</a></div>
				<div class="class_name fl"><a class="class_name_a" href="http://baike.baidu.com/subview/24816/15308361.htm" target="_blank">mySQL</a></div>
				<div class="class_name fl"><a class="class_name_a" href="http://baike.baidu.com/view/1626075.htm" target="_blank">SQL Server</a></div>
				<div class="class_name fl"><a class="class_name_a" href="http://baike.baidu.com/subview/99/5828265.htm" target="_blank">PHP</a></div>
				
				<div class="class_name fl"><a class="class_name_a" href="http://baike.baidu.com/view/16168.htm" target="_blank">JavaScript</a></div>
				<div class="class_name fl"><a class="class_name_a" href="http://baike.baidu.com/view/692.htm" target="_blank">HTML</a></div>
				<div class="class_name fl"><a class="class_name_a" href="http://baike.baidu.com/subview/15916/5236733.htm" target="_blank">CSS</a></div>
				<div class="class_name fl"><a class="class_name_a" href="http://baike.baidu.com/view/127346.htm" target="_blank">Adobe Photoshop</a></div>
				
				<div class="class_name fl"><a class="class_name_a" href="http://baike.baidu.com/view/1634.htm" target="_blank">Linux</a></div>
				<div class="class_name fl"><a class="class_name_a" href="http://baike.baidu.com/subview/158983/8747673.htm" target="_blank">IOS</a></div>
				<div class="class_name fl"><a class="class_name_a" href="http://baike.baidu.com/subview/1241829/9322617.htm" target="_blank">Android</a></div>
				<div class="class_name fl"><a class="class_name_a" href="http://baike.baidu.com/view/20302.htm" target="_blank">UI</a></div>
			</div>
			
			<div class="section_games clear">
			    <a target="_blank" href="http://www.zzuli.edu.cn/s/12/t/403/p/102/c/6163/list.htm">
			    <div class="message1" id="mes1">
			    	<div class="M1" ><p>学校概况</p><p>学校的简单介绍</p></div>
			    </div></a>
				<a  target="_blank" href="http://news.zzuli.edu.cn/">
				<div class="message1" id="mes2">
					<div class="M2"><p>相关信息</p><p>学校近来相关信息</p></div>
				</div></a>
				<a target="_blank" href="http://news.zzuli.edu.cn/s/113/t/47/p/4/list.htm">
				<div class="message1" id="mes3">
					<div class="M3"><p>活动信息</p><p>学校近来活动信息</p></div>
				</div></a>
				<a target="_blank" href="http://news.zzuli.edu.cn/s/113/t/47/p/1/c/845/list.htm">
				<div class="message1" id="mes4">
					<div class="M4"><p>学科信息</p><p>学校各学科介绍</p></div>
				</div></a>
		  </div>
		</div>
		
		<!--底部区域  -->
		<jsp:include page="/WEB-INF/publics/bottom.jsp"></jsp:include>
		
		<script language="JavaScript" src="${pageContext.request.contextPath }/js/jquery-1.12.4.min.js"></script>
		<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/main.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/koala.min.1.5.js"></script>
		<script type="text/javascript">
			Qfast.add('widgets', { path: "${pageContext.request.contextPath }/js/terminator2.2.min.js", type: "js", requires: ['fx'] });
			Qfast(false, 'widgets', function () {
				K.tabs({
					id: 'decoroll2', //焦点图包裹id
					conId: "decoimg_a2", //大图域包裹id
					tabId: "deconum2", //小圆点数字提示id
					tabTn: "a",
					conCn: '.decoimg_b2', //大图域配置class
					auto: 1, //自动播放 1或0
					effect: 'fade', //效果配置
					eType: 'mouseover', // 鼠标事件
					pageBt: true, //是否有按钮切换页码
					bns: ['.prev', '.next'], //前后按钮配置class
					interval: 3000// 停顿时间
				});
			});
		</script>
	</body>
</html>