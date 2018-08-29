<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
	<title>服务器管理</title>
	<meta http-equiv="content-type" content="text/html;charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="../css/index.css" />
	<link href="../lib/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
	<link href="../lib/bootstrap-table-master/src/bootstrap-table.css" rel="stylesheet">
	<script src="../lib/JQuery/jquery-3.2.1.min.js"></script>
	<script src="../lib/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
	<script src="../lib/bootstrap-table-master/src/bootstrap-table.js"></script>
	<script src="../lib/bootstrap-table-master/src/extensions/export/bootstrap-table-export.js"></script>
	<script src="//rawgit.com/hhurz/tableExport.jquery.plugin/master/tableExport.js"></script>
</head>
<body>
<div id="wrapper">
	<div id="header">
		<div id="logo">BUCT</div>
		<div id="title">即时通讯管理系统</div>
		<div id="menu">
			<div id="menu_container">
				<ul id="menu_items">
					<li class="menu_item on" style="border-radius:8px 0 0 8px" onmouseout="this.style.backgroundColor=''" onmouseover="this.style.backgroundColor='#77D1F6';this.style.borderRadius='8px 0 0 8px'"><a href="<%=path%>/content/Content_query.action">消息管理</a></li>
					<li class="menu_item" onmouseout="this.style.backgroundColor='';this.style.fontWeight='normal'" onmouseover="this.style.backgroundColor='#77D1F6';this.style.fontWeight='bold'"><a href="<%=path%>/users/Users_query.action">用户管理</a></li>
					<li class="menu_item" onmouseout="this.style.backgroundColor='';this.style.fontWeight='normal'" onmouseover="this.style.backgroundColor='#77D1F6';this.style.fontWeight='bold'">
						<%-- <a href="<%=path%>/announcement/Announcement_show.action" data-toggle="modal" data-target="#myModal">通知公告</a> --%>
						<a data-toggle="modal" data-target="#myModal">通知公告</a>
					</li><!-- class="btn btn-primary btn-lg" -->
					<li class="menu_item" onmouseout="this.style.backgroundColor='';this.style.fontWeight='normal'" onmouseover="this.style.backgroundColor='#77D1F6';this.style.fontWeight='bold'"><a href="<%=path%>/analysis/Location_success.jsp">数据分析</a></li>
					<%-- <li class="menu_item" onmouseout="this.style.backgroundColor='';this.style.fontWeight='normal'" onmouseover="this.style.backgroundColor='#77D1F6';this.style.fontWeight='bold'"><a href="<%=path%>/content/contentexceldownload.action">数据下载</a></li> --%>
					<li class="menu_item" onmouseout="this.style.backgroundColor='';this.style.fontWeight='normal'" onmouseover="this.style.backgroundColor='#77D1F6';this.style.fontWeight='bold'"><a href="<%=path%>/backup/backupmysql.action">数据备份</a></li>
					<li class="menu_item" style="border-radius:8px 0 0 8px;border:0px;" onmouseout="this.style.backgroundColor='';this.style.fontWeight='normal'" onmouseover="this.style.backgroundColor='#77D1F6';this.style.borderRadius='0 8px 8px 0';this.style.fontWeight='bold'"><a href="<%=path%>/log/Log_success.jsp">日志文件</a></li>
				</ul>
			</div>
		</div>
		<div id="user_info">
			<div id="welcome">欢迎${sessionScope.loginUserName}使用本系统</div>
			<div id="logout"><a href="<%=path%>/users/Users_logout.action">安全退出</a></div>
		</div>
	</div>
	<div id="navigator">
		<iframe src="../tree.jsp"></iframe>
    </div>
	<div id="main">
		<iframe name="MainFrame" src="Users_login_main.jsp"></iframe>
	</div>
	<div id="footer"></div>
</div>
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" 
						aria-hidden="true">x
				</button>
				<h4 class="modal-title" id="myModalLabel">
					${sessionScope.announcement.title}
				</h4>
			</div>
			<div class="modal-body">
				${sessionScope.announcement.content}
			</div>
			<div class="modal-footer">
			    Promulgator:${sessionScope.announcement.promulgator}&nbsp;
			    Sendtime:${sessionScope.announcement.time}&nbsp;&nbsp;
				<button type="button" class="btn btn-primary" 
						data-dismiss="modal">Close
				</button>
				<!-- <button type="button" class="btn btn-primary">
					Submit
				</button> -->
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->

</body>
<script>
	$(function () { $('#myModal').modal({
		keyboard: true
		show:true
	})});
</script>
<script type="text/javascript">
function screenAdapter(){
	document.getElementById('footer').style.top=document.documentElement.scrollTop+document.documentElement.clientHeight- document.getElementById('footer').offsetHeight+"px";
		document.getElementById('navigator').style.height=document.documentElement.clientHeight-100+"px";
		document.getElementById('main').style.height=document.documentElement.clientHeight-100+"px";
		document.getElementById('main').style.width=window.screen.width-230+"px";
}

window.onscroll=function(){screenAdapter();};
window.onresize=function(){screenAdapter();};
window.onload=function(){screenAdapter();};
</script>
</html>