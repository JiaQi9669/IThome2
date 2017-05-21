<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta charset="UTF-8">
		<title>我们</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/public.css"/>
		<link rel="stylesheet" href="${pageContext.request.contextPath }/css/Us.css" />
		
		<!-- Bootstrap -->
	    <link href="${pageContext.request.contextPath }/css/bootstrap.min.css" rel="stylesheet">
	</head>
	<body>
		
		<jsp:include page="/WEB-INF/publics/menu.jsp"></jsp:include>
		
		<div class="tip">
			<dl class="list1">
				<dt>郑轻软创</dt>
				<dd>一个以软件行业为主，招收对软件行业有兴趣的能人志士的软件综合时间与创新基地</dd>
				<dt>我们的追求</dt>
				<dd>在成员有坚实专业知识基础上，组成团队进行项目开发使每一个成员都能在进入社会之前可以积累大量的项目经验</dd>
				<dt>我们的宗旨</dt>
				<dd>你现在可以不优秀，但是不能不努力</dd>
				<dt>我们的目标</dt>
				<dd>掌握自己喜欢的技术，做最牛逼的大神</dd>
			</dl>
		</div>
		<div class="us_container" >
			<div class="us_scrubber" id="us_scrubber">
			</div>
			<div class="us_content clear" id="us_content">
				
				<s:set var="years" value="0" scope="page"></s:set>
				<s:set var="month" value="0" scope="page"></s:set>
				
				<s:iterator value="labs" var="lab">
					
					<s:date name="#lab.dates" var="dataa" format="yyyy-MM-dd" />
					<s:set var="datas" value="#dataa"></s:set>
					<!--日期索引  -->
					<%-- <s:set var="strs"  value="#lab.dates.split('\\\\-')"></s:set> --%>
					<s:set var="strs"  value="#datas.split('\\\\-')"></s:set>
					
					<!-- 插入日期  -->
					<s:if test="%{#strs[0] == #years}">
					<!--同一年  -->
						<s:if test="%{#strs[1] == #month}">
						<!--同一月  -->
							<div class="content_item fl">
								<img class="content_item_media" src="${pageContext.request.contextPath }/upload/lab/${url_img }">
								<span class="content_item_head">
									<label style="font-size: 15px;"><s:property value="#lab.name"/></label><br>
									<label style="font-size: 12px;">${message } </label>
									<p style="font-size: 9px;">相关连接：<a href="${url_link }">${url_link }</a></p>
								</span>
							</div>
						</s:if>
						
						<s:else><!-- 不同月 -->
							<!-- 刷新索引：月 -->
							<s:set var="month" value="#strs[1]"></s:set>
							
							<div class="content_month cy<s:property value='%{#strs[0]}'/>" id="cy<s:property value='%{#strs[0]+""+#strs[1] }'/>"><s:property value='#strs[1]'/>月</div>
							<div class="content_item fl">
								<img class="content_item_media" src="${pageContext.request.contextPath }/upload/lab/${url_img }">
								<span class="content_item_head">
									<label style="font-size: 15px;"><s:property value="#lab.name"/></label><br>
									<label style="font-size: 12px;">${message } </label>
									<p style="font-size: 9px;">相关连接：<a href="${url_link }">${url_link }</a></p>
								</span>
							</div>
							
						</s:else>
					</s:if>
					<s:else><!-- 不同年 -->
						<!--刷新索引：年月  -->
						<s:set var="years" value="#strs[0]"></s:set>
						<s:set var="month" value="#strs[1]"></s:set>
						
						<div class="content_year"><s:property value="#strs[0]"/> </div>
						<div class="content_month cy<s:property value='%{#strs[0]}'/>" id="cy<s:property value='%{#strs[0]+""+#strs[1] }'/>"><s:property value='#strs[1]'/>月</div>
						<div class="content_item fl">
							<img class="content_item_media" src="${pageContext.request.contextPath }/upload/lab/${url_img }">
							<span class="content_item_head">
								<label style="font-size: 15px;"><s:property value="#lab.name"/></label><br>
								<label style="font-size: 12px;">${message } </label>
								<p style="font-size: 9px;">相关连接：<a href="${url_link }">${url_link }</a></p>
							</span>
						</div>
					</s:else>
					
				</s:iterator>
				
			</div>
		</div>
		
	    
	    <!--底部区域  -->
		<jsp:include page="/WEB-INF/publics/bottom.jsp"></jsp:include>
		
		<script src="${pageContext.request.contextPath }/js/jquery-2.1.1.min.js"></script>
		<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/Us.js" ></script>
	</body>
</html>