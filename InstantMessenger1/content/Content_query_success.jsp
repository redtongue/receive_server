<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
int adex = 1;
%>
<!DOCTYPE html>
<html>
	<meta http-equiv="content-type" content="text/html;charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="../css/default.css" />
	<link href="${pageContext.request.contextPath}/js/bootstrap.css" rel="stylesheet"> 
<style type="text/css">
* {
    background: none repeat scroll 0 0 transparent;
    border: 0 none;
    margin: 0;
    padding: 0;
    vertical-align: baseline;
	font-family:微软雅黑;
	overflow:hidden;
}
#navi{
	width:100%;
	position:relative;
	word-wrap:break-word;
	border-bottom:1px solid #065FB9;
	margin:0;
	padding:0;
	height:40px;
	line-height:40px;
	vertical-align:middle;
    background-image: -moz-linear-gradient(top,#EBEBEB, #BFBFBF);
    background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0, #EBEBEB),color-stop(1, 
#BFBFBF));
}
#naviDiv{
	font-size:14px;
	color:#333;
	padding-left:10px;
}
#tips{
	margin-top:10px;
	width:100%;
	height:40px;
}
#buttonGroup{
	padding-left:10px;
	float:left;
	height:35px;
}
.button{
	float:left;
	margin-right:10px;
	padding-left:10px;
	padding-right:10px;
	font-size:14px;
	width:70px;
	height:30px;
	line-height:30px;
	vertical-align:middle;
	text-align:center;
	cursor:pointer;
    border-color: #77D1F6;
    border-width: 1px;
    border-style: solid;
    border-radius: 6px 6px;
    -moz-box-shadow: 2px 2px 4px #282828;
    -webkit-box-shadow: 2px 2px 4px #282828;
    background-image: -moz-linear-gradient(top,#EBEBEB, #BFBFBF);
    background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0, #EBEBEB),color-stop(1, #BFBFBF));
}
#mainContainer{
	padding-left:10px;
	padding-right:10px;
	text-align:center;
	width:98%;
	font-size:12px;
	/* overflow-x:auto;
	overflow-y:auto;  */
	height:380px;
	overflow:auto;
}
#btn {
	width:40px; 
	height:40px; 
	display:none; 
	position:fixed; 
	right:65px; 
	bottom:10px; 
	background:url(images/top_bg.png) no-repeat left top;
}
#btn:hover {
	background:url(images/top_bg.png) no-repeat 0 -39px;
}
</style>
	<script type="text/javascript" src="Scrollscript.js"></script>
<body>

<div id="navi">
	<div id='naviDiv'>
		<span><img src="../images/arror.gif" width="7" height="11" border="0" alt=""></span>&nbsp;消息管理<span>&nbsp;
		<span><img src="../images/arror.gif" width="7" height="11" border="0" alt=""></span>&nbsp;<a href="<%=path%>/content/Content_query.action">消息列表</a><span>&nbsp;
	</div>
</div>
<div id="tips">
	<div id="buttonGroup">
		<div class="button" onmouseout="this.style.backgroundColor='';this.style.fontWeight='normal'" onmouseover="this.style.backgroundColor='#77D1F6';this.style.fontWeight='bold'">
			<a href="<%=path%>/content/Content_query_success.jsp">刷新</a>
		</div>
		<div class="button" onmouseout="this.style.backgroundColor='';this.style.fontWeight='normal'" onmouseover="this.style.backgroundColor='#77D1F6';this.style.fontWeight='bold'">
			<%-- <a href="<%=path%>/content/Content_queryjson.action">查找</a> --%>
			<a href="<%=path%>/content/Content_lookthrough_success.jsp">查找</a>
		</div>
	</div>
</div>

<a href="javascript:;" id="btn" title="回到顶部"></a>

<div id="mainContainer">
<!-- 从session中获取学生集合 -->

<table class="default" width="100%">
	<col width="2%">
	<col width="9%">
	<col width="9%">
	<col width="4%">
	<col width="4%">
	<col width="1%">
	<col width="25%">
	<col width="12%">
	<col width="15%">
	<col width="8%">
	<tr class="title">
		<td>序号</td>		
		<td>发送者手机号</td>
		<td>接受者手机号</td>  
		<td>发送者账号</td>
		<td>接受者账号</td>
		<td>数据类型</td>
		<td>存储地址</td>
		<td>发送时间</td>
		<td>内容</td>
		<td>操作</td>
	</tr>
	
	<!-- 遍历开始 -->
	<s:iterator value="#session.content_list" var="st">
	<tr class="list">
		<td><input type = "text" value="<%=adex++%>" readonly size="5"/></td>
		<td><s:property value="#st.ip1"/></td>
		<td><s:property value="#st.ip2"/></td>
		<td><s:property value="#st.account1"/></td>
		<td><s:property value="#st.account2"/></td>
		<td><s:property value="#st.sim1"/></td>
		<td><s:property value="#st.savepath"/></td>
		<td><s:date name="#st.sendtime" format="yyyy年MM月dd日HH时mm分ss秒"/></td>
		<%-- <td><s:property value="%{#st.flag == 0}"/></td> --%>
		<td>
			<s:if test="%{#st.flag == 0}">
				<a href="#" id="show" class="btn btn-default" role="button" data-toggle="popover" data-content="<s:property value="#st.text"/>" data-original-title="Check results">查看</a>
      		</s:if>
      		<s:elseif test="%{#st.flag == 1}">
      			<a href="#" id="show" class="btn btn-default" role="button" data-toggle="popover"
      			data-content='<div style="width:150px; height:150px;"><img src="../originalpicfile/<s:property value="#st.savepath"/>" alt="ERROR" style="width:100%"></div><hr/><center><a href="<%=path%>/content/download.action?filename=<s:property value="#st.savepath"/>&flag=<s:property value="#st.flag"/>" class="btn btn-primary" role="button" width="100%">Download</a></center>' data-original-title="Check results">查看</a>
      			<!-- <img src="../originalpicfile/faaeab93-b59e-47cd-945a-747f096abe17.jpg" alt="ERROR" style="width:100%"> -->
      		</s:elseif>
      		<s:elseif test="%{#st.flag == 2}">
      			<a href="#" id="show" class="btn btn-default" role="button" data-toggle="popover" data-content='<audio width="100" height="200" controls><source src="../originalaudiofile/<s:property value="#st.savepath"/>" type="audio/mpeg"></audio><hr/><center><a href="<%=path%>/content/download.action?filename=<s:property value="#st.savepath"/>&flag=<s:property value="#st.flag"/>" class="btn btn-primary" role="button" width="100%">Download</a></center>' data-original-title="Check results">查看</a> 
      		</s:elseif>
      		<s:elseif test="%{#st.flag == 3}">
      			<a href="#" id="show" class="btn btn-default" role="button" data-toggle="popover" data-content='<video width="250" height="180" controls><source src="../originalvideofile/<s:property value="#st.savepath"/>" type="video/mp4"><source src="../videofile/<s:property value="#st.savepath"/>" type="video/ogg"><source src="../videofile/<s:property value="#st.savepath"/>" type="video/webm"></video>' data-original-title="Check results">查看</a> 
      			<%-- <hr/><center><a href="<%=path%>/content/download.action?filename=<s:property value="#st.savepath"/>&flag=<s:property value="#st.flag"/>" class="btn btn-primary" role="button" width="100%">Download</a></center> --%>
      		</s:elseif>
		</td>
		<td><a href="<%=path%>/content/Content_delete.action?id=<s:property value="#st.id"/>" onclick="javascript: return confirm('真的要删除吗？');">删除</a></td>
	</tr>
	</s:iterator>
	<!-- 遍历结束 -->
</table>
</div>
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.js"></script> 

<script>
	$(function() {
		$('[data-toggle="popover"]').each(function() {
			var element = $(this);
			element.popover({trigger:'click',placement:'left', html:true});
		}).on("mouseenter", function (){
			var _this = this;
			$(this).popover("show");
			$(this).siblings(".popover").on("mouseleave", function () {
				$(_this).popover});
			}).on("mouseleave",function(){
				var _this = this;setTimeout(function(){
					if(!$(".popover:hover").length){
						$(_this).popover("hide")
					}
				},100);
		});
	});
</script>

<%-- <script> 
    $(function () {
         $("#example").popover({placement:'right'}); 
    }); 
</script> --%>
</body>
</html>