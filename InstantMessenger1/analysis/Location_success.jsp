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
	
	<div class="container">
		<div id="statistics" style="height:500px; margin:0 auto;"></div>
	</div>

	<script language='javascript'>document.location = '<%=path%>/analysis/Location_success_show.jsp'</script>
	
</body>

</html>