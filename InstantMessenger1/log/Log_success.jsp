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
</head>

<body>
	<div class="alert alert-success" id="eventsResult">Here is the result of Search</div>
	
	<div>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="<%=path%>/log/logexceldownload.action" id="show" class="btn btn-default" role="button">Download</a><br>
	</div>
	
	<table data-toggle="table"
       data-url="log.json"
       data-query-params="queryParams"
       data-pagination="true"
       data-search="true"
       data-height="380"
       data-show-refresh="true"
 	   data-show-toggle="true"
 	   data-show-columns="true">
    <thead>
    <tr>
        <th data-field="lid">ID</th>
        <th data-field="operation">Operation</th>
        <th data-field="handler">Handler</th>
        <th data-field="time">Time</th>
    </tr>
    </thead>
</table>
	<script type="text/javascript">
	function queryParams() {
	    return {
	        type: 'owner',
	        sort: 'updated',
	        direction: 'desc',
	        per_page: 100,
	        page: 1
	    };
	}
	</script>

</body>

</html>