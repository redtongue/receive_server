<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<title>Insert title here</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="../lib/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="../lib/JQuery/jquery-3.2.1.min.js"></script>
	<script src="../lib/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
	<script src='../js/echarts.min.js'></script>
</head>

<body>

	<div class="alert alert-success" id="eventsResult">Here is the result of Analysis</div>
	
	<div>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="<%=path%>/analysis/Consumer_frequency_show.jsp" id="show" class="btn btn-default" role="button">Frequency Crowd</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="<%=path%>/analysis/Consumer_infrequent_show.jsp" id="show" class="btn btn-default" role="button">Infrequent Crowd</a>
	</div>
	<br>
	<div id="main" style="height: 360px;"></div>
	
	<script>  
		$(document).ready(function(){
			var data;
			$.getJSON ("../consumer/consumernumber.json", function (data)  
		    {  
		        var myChart = echarts.init(document.getElementById('main'))
				myChart.setOption({
					title: {
						 text: '用户数据分析',
					     subtext: '统计结果',
					     x: 'center'
				    },
				    tooltip: {
				        trigger: 'item',
				        formatter: "{a} <br/>{b}: {c} ({d}%)"
				    },
				    legend: {
				        orient: 'vertical',
				        x: 'left',
				        data:['Frequency','Infrequent']
				    },
				    toolbox: {
				        show: true,
				        orient: 'vertical',
				        left: 'right',
				        top: 'center',
				        feature: {
				            dataView: {readOnly: false},
				            restore: {},
				            saveAsImage: {}
				        }
				    },
				    series: [
				        {
				        	name:'使用频率',
				            type:'pie',
				            radius: ['50%', '70%'],
				            avoidLabelOverlap: false,
				            label: {
				                normal: {
				                    show: false,
				                    position: 'center'
				                },
				                emphasis: {
				                    show: true,
				                    textStyle: {
				                        fontSize: '30',
				                        fontWeight: 'bold'
				                    }
				                }
				            },
				            labelLine: {
				                normal: {
				                    show: false
				                }
				            },
				            data:[
				                /* {value: 10 , name:'Frequency'},
				                {value: 20, name:'Infrequent'}, */

				                {value: data[0].frequencyNum , name:'Frequency'},
				                {value: data[0].infrequentNum, name:'Infrequent'},
				            ]
				        }
				    ]
				});
		        
		    });
		});
	</script>

</body>
</html>