<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="../lib/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="../lib/JQuery/jquery-3.2.1.min.js"></script>
	<script src="../lib/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
	<script src='../js/echarts.min.js'></script>
	<title>Insert title here</title>
	
</head>
<body>
	<div class="alert alert-success" id="eventsResult">Here is the result of Analysis</div>

	<div>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a onclick="window.history.back()" id="show" class="btn btn-default" role="button">FallBack</a>
	</div>
	
	<div id="main" style="height: 380px; width: 650px; margin:0 auto;"></div>
	<script>
		$(document).ready(function()
		{
			var data;
			$.getJSON ("../confile/confileStatistics.json", function (data)  
		    {  
				var myChart = echarts.init(document.getElementById('main'));
				myChart.setOption({
					color: ['#3398DB'],
					title: {
						text: '文件数据分析',
						subtext: '统计结果',
					    left: 'center'
				    },
				    tooltip: {
				    	trigger: 'axis',
				        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
				            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
				        }
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
				    legend: {
						data: ['统计']
					},
					xAxis: [{
						type : 'category',	
				        data : ['Text', 'Audio', 'Picture', 'Video'],
						axisTick: {
		            		alignWithLabel: true
		        		}
				    }],
				    yAxis: [{
				    	type : 'value'
					}],
				    series : [{
				            name:'数量',
				            type:'bar',
				            /* data:[10, 52, 200, 334] */
				    		data:[data[0].textNum, data[0].audioNum, data[0].pictureNum, data[0].videoNum]
				    }]
				});
		    });
		});
		
	</script>
</body>
</html>