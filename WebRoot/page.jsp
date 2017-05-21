<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<link rel="stylesheet" href="css/style.css" type="text/css"></link>
<div class="pagin">
	<div class="message">
		共<i class="blue_page"><s:property value="pageBean.pageCount"/></i>页，
		<i class="blue_page"><s:property value="pageBean.recordCount"/></i>条记录，
		当前显示第&nbsp;<i class="blue_page"><s:property value="pageBean.currentPage" />&nbsp;</i>页
	</div>
	<!--真分页遍历  -->
	<ul class="paginList">
		<s:iterator begin="pageBean.beginPageIndex" end="pageBean.endPageIndex" var="pageNums">
			<li class="paginItem ${pageBean.currentPage==pageNums?'current':''}"><a href="labAction_findPage?pageNum=${pageNums }">${pageNums }</a></li>
		</s:iterator>
	</ul>
</div>

<!--假分页辅助插件  -->
<%-- <script type="text/javascript">
	//分页页码
	function toPage(pageNum) {
		//添加一个隐藏域
		$("form").append("<input type='hidden' name='pageNum' value='"+pageNum+"'/>");
		alert("123");
		//提交表单
		$("form").submit();
		alert(pageNum);
	}
</script> --%>
