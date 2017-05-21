<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>帖子</title>
        <script type="text/javascript" src="${pageContext.request.contextPath }/ckeditor_3.6.2/ckeditor/ckeditor.js"></script>  
        <script type="text/javascript">
            window.onload = function(){
            
                var replyBtn = document.getElementById("replyBtn");
                var replyDiv = document.getElementById("replyDiv");
                replyBtn.onclick =function(){
                 
                    if (replyDiv.style.display=="none") {
                        replyDiv.style.display="block";
                    }else if (replyDiv.style.display=="block"){
                        replyDiv.style.display="none";
                    }
                };
            };
            
        </script>
        <style type="text/css">
            table{ border-collapse: collapse; width: 95%;}
            th, tr,td{ border: 1px solid silver; background-color: #E3F2E1;}
            th{ height: 32px;}
            #nav{ margin:10px 0 10px 30px; font-size: 15px; }
            .left_td{width:15%; text-align: left; padding-left:30px;  }
            .right_td{width:70%; text-align: left;  padding-left: 30px; vertical-align: text-top; background-color: white;}
            #replyDiv{display: block; margin-left: 50px;  }
            #myImg{ width: 128px; height:128px; }
            #pmain li{ margin: 8px ;}
            #fastReply{ margin-top: 30px;}
        </style>
    </head>
    <body>
        <div id="nav">
          	<a style="color: green;" onClick="javascript :history.back(-1);">《返回上级</a>
        </div>
        
        <!-- 帖子主题 --><!--posts  -->
    <center>
      <div id="pmain">
        <table>
        	<!-- posts -->
        	<tr><th>人员</th><th>内容</th></tr>
            <!--楼主  -->
            <tr>
            <!--post  -->
            <s:iterator value="posta" var="posta">
                <td class="left_td" valign="top">
		  			<%--<c:url var="url" value="postlistbyborad">
		  				<c:param name="id" value="%{#posta.id }"></c:param>
		  			</c:url>
		  			<a href="${url }">浏览贴子</a> --%>
                    <br/><s:set value="#posta.id" var="ids"></s:set>
                    <s:if test="%{#posta.friend.picture != null && #posta.friend.picture != 'input' && #posta.friend.picture != '' }">
                        <img id="myImg" src="${pageContext.request.contextPath }/upload/login/${friend.picture }" />
                    </s:if>
                    <s:else>
                        <img src="${pageContext.request.contextPath }/images/bbsPhoto.jpg" />
                    </s:else>
                    <br/>
                    <ul>
                   <s:if test="%{#posta.friend.pickName != null}">
                        <li><h5><b>楼主：<s:property value="%{#posta.friend.pickName }"/></b></h5></li>
                        <li><h5><b>等级：<s:property value="%{#posta.friend.leaves}"/></b></h5></li>
                    </s:if>
                   	</ul>
                </td>
                
                <td class="right_td">
                	<label style="font-size: 9px;">
                	<b>发帖时间： <s:date format="yyyy-MM-dd hh:mm:ss" name="%{#posta.dates }" /></b></label><br>
                    <center><b><s:property value="%{#posta.name}" escape="false" /></b><br></center>
                    <s:property value="%{#posta.message }" escape="false"/>
               </td>
               </s:iterator>
            </tr>
            
            <!-- 回帖列表,循环tr #posta.reply-->
            <s:iterator value="replya" var="replys" status="indexs">
                <tr>
                    <td class="left_td"  valign="top">
                        <br/>
                        <s:if test="#replys.friend.picture != null && #replys.friend.picture != 'input' && #replys.friend.picture != '' ">
                            <img id="myImg" src="${pageContext.request.contextPath }/upload/login/${friend.picture }" />
                        </s:if>
                        <s:else>
                            <img src="${pageContext.request.contextPath }/images/bbsPhoto.jpg" />
                        </s:else>
                        <br/>
                        <ul>
                        <li><h5><b>${indexs.count }楼<s:property value="%{#replys.friend.pickName }"/></b></h5></li>
                        <li><h5><b>等级：<s:property value="%{#replys.friend.leaves}"/></b></h5></li>
                        </ul>
                    </td>
                    <td class="right_td">
                        <label style="font-size: 9px;">
	                	<b>发帖时间： <s:date format="yyyy-MM-dd hh:mm:ss" name="%{#replys.dates }" /></b></label><br>
	                    <s:property value="#replys.message" escape="false"/>
                    </td>
                </tr>
            </s:iterator> 
        
        <!--回复模块  -->
        	<!--post_id  -->
            <s:form action="replyadd?post_id=%{#posta.id }">
                <tr>
                    <td style="width:19.5%;"  valign="middle" align="center">
						<h2>回复</h2>
					</td>
                    <td style="height: 400px;"><textarea id="context" name="message" ></textarea></td>
                </tr>
                <tr style="height: 50px;">
                	<td></td>
                	<td>
						<input type="submit" value="" style="border:none;cursor:pointer;width:74px;height:31px;background:url('${pageContext.request.contextPath }/images/btn_reply.png') no-repeat;" />
					</td>
				</tr>
				<tr ><td style="border-width: 0px;"></td><td style="border-width: 0px;height: 50px;"></td> </tr>
            </s:form>
      </table>
            <script type="text/javascript">
                //<![CDATA[
                // Replace the <textarea id="editor1"> with a CKEditor instance using default configuration.
                CKEDITOR.replace( 'context',{
                    filebrowserImageUploadUrl  :'uploadImg.action',
                    filebrowserImageBrowseUrl  :'showImage.jsp?type=image',
                    toolbar :'Full',
                    width:'99%',
                    height:'49%',
                    filebrowserWindowWidth  : 700,
                    filebrowserWindowHeight : 500
                });
                //]]>
            </script>
  	</div>
  </center>

</body>
</html>