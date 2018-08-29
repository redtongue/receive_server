<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
<title>bootstrap-table</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link href="../lib/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
<link href="../lib/bootstrap-table-master/src/bootstrap-table.css" rel="stylesheet">
<script src="../lib/JQuery/jquery-3.2.1.min.js"></script>
<script src="../lib/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script src="../lib/bootstrap-table-master/src/bootstrap-table.js"></script>
<script src="../lib/bootstrap-table-master/src/extensions/export/bootstrap-table-export.js"></script>
<script src="//rawgit.com/hhurz/tableExport.jquery.plugin/master/tableExport.js"></script>
<script src='../js/echarts.min.js'></script>
<script src='../js/china.js'></script>
</head>

<body>

	<div class="alert alert-success" id="eventsResult">Here is the result of Configuration<br/></div>
	
	<div>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="" id="show" class="btn btn-default" role="button">Refresh</a><br><hr/>
	</div>
	
	<table class="table table-striped table-hover">
	  <tbody>
	    <tr>
	      <td>Superior Manager Number</td>
	      <td>${sessionScope.supmanagernum}</td>
	      <td>Inferior Manager Number</td>
	      <td>${sessionScope.infemanagernum}</td>
	    </tr>
	    <tr>
	      <td>Message Number</td>
	      <td>${sessionScope.messagenum}</td>
	      <td>Message Users Number</td>
	      <td>${sessionScope.messageusernum}</td>
	    </tr>
	    <tr>
	      <td>Covered City Number</td>
	      <td>${sessionScope.citynum}</td>
	      <td>Connection Number</td>
	      <td>${sessionScope.connectionnum}</td>
	    </tr>
	     <tr>
	      <td>Text Message Number</td>
	      <td>${sessionScope.textnum}</td>
	      <td>Audio Message Number</td>
	      <td>${sessionScope.audionum}</td>
	    </tr>
	    <tr>
	      <td>Picture Message Number</td>
	      <td>${sessionScope.picnum}</td>
	      <td>Video Message Number</td>
	      <td>${sessionScope.videonum}</td>
	    </tr>
	  </tbody>
	</table>
	
</body>

</html>