<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
	<meta http-equiv="content-type" content="text/html;charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="../css/default.css" />
<style type="text/css">
* {
    background: none repeat scroll 0 0 transparent;
    border: 1 none;
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
	margin-top:20px;
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
	text-align:left;
	width:98%;
	font-size:16px;
}
</style>
<body>
<script type="text/javascript" src="../js/Calendar3.js"></script>

<div id="navi">
	<div id='naviDiv'>
		<span><img src="../images/arror.gif" width="7" height="11" border="0" alt=""></span>&nbsp;用户管理<span>&nbsp;
		<span><img src="../images/arror.gif" width="7" height="11" border="0" alt=""></span>&nbsp;<a href="<%=path%>/users/Users_query.action">个人信息管理</a><span>&nbsp;
	</div>
</div>
<div id="tips">
</div>
<div id="mainContainer">
<!-- 从session中获取学生集合 -->
<strong>修改个人信息</strong>
<br>
<br>

<form name="modifyForm" action="<%=path%>/users/Users_selfsave.action" method="post">
<table width="400" >
  <tr>
    <td width="30%">ID：</td>
    <td><input type="text" name="uid" readonly="true" value='<s:property value="#session.selfshow_users.uid"/>'/></td>
  </tr>
  <tr>
    <td width="30%">姓名：</td>
    <td><input type="text" name="username" readonly="true" value='<s:property value="#session.selfshow_users.username"/>'/></td>
  </tr>
  <tr>
    <td width="30%">密码：</td>
    <td><input type="text" name="password" /></td>    <%-- value='<s:property value="#session.selfshow_users.password"/>' --%>
  </tr>
  <tr>
    <td width="30%">确认密码：</td>
    <td><input type="text" name="passwordconfirm" /></td>
  </tr>
  <tr>
    <td>级别：</td>
    <td>
      <s:if test='%{#session.selfshow_users.level==1}'>
         <input type="radio" name="level" value="1" checked="checked" disabled/>高级
         <input type="radio" name="level" value="2" disabled/>低级
      </s:if>
      <s:else>
         <input type="radio" name="level" value="1" disabled/>高级
         <input type="radio" name="level" value="2" checked="checked" disabled/>低级
      </s:else>
      </td>
  </tr>
  <%-- <tr>
    <td>出生日期：</td>
    <td><input name="birthday" type="text" id="control_date" size="20"
      maxlength="10" onclick="new Calendar().show(this);" readonly="readonly" 
      value="<s:date name="#session.modify_students.birthday" format="yyyy-MM-dd"/>"
      />
    </td>
  </tr>
  <tr>
    <td>地址：</td>
    <td><input type="text" name="address" value='<s:property value="#session.modify_students.address"/>'/></td>
  </tr> --%>
  <tr>
    <td colspan="2" align="center"><input class="button" type="submit" value="修改"></td>
  </tr>
</table>
</form>
<s:fielderror/>
</div>
</body>
</html>