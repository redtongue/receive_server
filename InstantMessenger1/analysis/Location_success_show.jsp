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
	<script src='../js/china.js'></script>
</head>

<body>

	<div class="container">
		<div id="content" style="height:500px; margin:0 auto;"></div>
		<div id='dv'></div>
	</div>
	
	<script>  
		/* function randomData() {
		    return Math.round(Math.random()*1000);
		} */
	    
		$(document).ready(function(){
			
			var data;
			var a;
			/* $.getJSON ("location.json", function (data) */  
			$.getJSON ("../location/location.json", function (data)
		    {  
		        var myChart = echarts.init(document.getElementById('content'))
				myChart.setOption({
					title: {
				        text: '用户地域分布',
				        subtext: '中国区域',
				        left: 'center'
				    },
				    tooltip: {
				        trigger: 'item'
				    },
				    legend: {
				        orient: 'vertical',
				        left: 'left',
				        data:['number']
				    },
				    visualMap: {
				        min: 0,
				        max: 10,
				        left: 'left',
				        top: 'bottom',
				        text: ['高','低'],           // 文本，默认为数值文本
				        calculable: true
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
				            name: 'number',
				            type: 'map',
				            mapType: 'china',
				            roam: false,
				            label: {
				                normal: {
				                    show: true
				                },
				                emphasis: {
				                    show: true
				                }
				            },
				            data:[
				                {name: '北京',value: data[0].number },
				                {name: '天津',value: data[1].number },
				                {name: '上海',value: data[2].number },
				                {name: '重庆',value: data[3].number },
				                {name: '河北',value: data[4].number },
				                {name: '河南',value: data[5].number },
				                {name: '云南',value: data[6].number },
				                {name: '辽宁',value: data[7].number },
				                {name: '黑龙江',value: data[8].number },
				                {name: '湖南',value: data[9].number },
				                {name: '安徽',value: data[10].number },
				                {name: '山东',value: data[11].number },
				                {name: '新疆',value: data[12].number },
				                {name: '江苏',value: data[13].number },
				                {name: '浙江',value: data[14].number },
				                {name: '江西',value: data[15].number },
				                {name: '湖北',value: data[16].number },
				                {name: '广西',value: data[17].number },
				                {name: '甘肃',value: data[18].number },
				                {name: '山西',value: data[19].number },
				                {name: '内蒙古',value: data[20].number },
				                {name: '陕西',value: data[21].number },
				                {name: '吉林',value: data[22].number },
				                {name: '福建',value: data[23].number },
				                {name: '贵州',value: data[24].number },
				                {name: '广东',value: data[25].number },
				                {name: '青海',value: data[26].number },
				                {name: '西藏',value: data[27].number },
				                {name: '四川',value: data[28].number },
				                {name: '宁夏',value: data[29].number },
				                {name: '海南',value: data[30].number },
				                {name: '台湾',value: data[31].number },
				                {name: '香港',value: data[32].number },
				                {name: '澳门',value: data[33].number }
				            ]
				        },
				    ]
				});
		        
		    });
			
		});
	</script>

</body>
</html>