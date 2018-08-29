<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../js/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>

	<div class="container">
		<div class="alert alert-success">
			<div id="content" style="height: 500px;margin:0 auto;"></div>
		</div>
	</div>
	
	<script src='../js/jquery-3.2.1.min.js'></script>
	<script src='../js/echarts.min.js'></script>
	<script src='../js/china.js'></script>
	<script>  
		function randomData() {
		    return Math.round(Math.random()*1000);
		}
		/* var datas;
		var a;
		$(function (){
			$.getJSON ("json/place.json", function (data)  
		    {  
			    datas = data;
		        $.each (datas, function (i, item)  
		        {  
		            $ ("#disp").append ("<h3>" + item.name + "</h3>");  
		            $ ("#disp").append ("<p>" + item.value + "</p>");  
		        });
		        alert(datas[0].name);
		        a = datas[0].value;
		    });
		}); */
		/* $.getJSON ("json/place.json", function (data)  
	    {  
	        $.each (datas, function (i, item)  
	        {  
	            $ ("#disp").append ("<h3>" + item.city + "</h3>");  
	            $ ("#disp").append ("<p>" + item.value + "</p>");  
	        });
	    });  */
	    
		$(document).ready(function(){
			
			var data;
			var a;
			$.getJSON ("location.json", function (data)  
		    {  
		        /* a = data[0].number;
		        alert(a);
				data[0].number */
		        var myChart = echarts.init(document.getElementById('content'))
				myChart.setOption({
					title: {
				        text: 'iphone销量',
				        subtext: '纯属虚构',
				        left: 'center'
				    },
				    tooltip: {
				        trigger: 'item'
				    },
				    legend: {
				        orient: 'vertical',
				        left: 'left',
				        data:['iphone3']
				    },
				    visualMap: {
				        min: 0,
				        max: 2500,
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
				            name: 'iphone3',
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
				                {name: '天津',value: randomData() },
				                {name: '上海',value: randomData() },
				                {name: '重庆',value: randomData() },
				                {name: '河北',value: randomData() },
				                {name: '河南',value: randomData() },
				                {name: '云南',value: randomData() },
				                {name: '辽宁',value: randomData() },
				                {name: '黑龙江',value: randomData() },
				                {name: '湖南',value: randomData() },
				                {name: '安徽',value: randomData() },
				                {name: '山东',value: randomData() },
				                {name: '新疆',value: randomData() },
				                {name: '江苏',value: randomData() },
				                {name: '浙江',value: randomData() },
				                {name: '江西',value: randomData() },
				                {name: '湖北',value: randomData() },
				                {name: '广西',value: randomData() },
				                {name: '甘肃',value: randomData() },
				                {name: '山西',value: randomData() },
				                {name: '内蒙古',value: randomData() },
				                {name: '陕西',value: randomData() },
				                {name: '吉林',value: randomData() },
				                {name: '福建',value: randomData() },
				                {name: '贵州',value: randomData() },
				                {name: '广东',value: randomData() },
				                {name: '青海',value: randomData() },
				                {name: '西藏',value: randomData() },
				                {name: '四川',value: randomData() },
				                {name: '宁夏',value: randomData() },
				                {name: '海南',value: randomData() },
				                {name: '台湾',value: randomData() },
				                {name: '香港',value: randomData() },
				                {name: '澳门',value: randomData() }
				            ]
				        },
				    ]
				});
		        
		    });
		    
			
			/* var myChart = echarts.init(document.getElementById('main'))
			myChart.setOption({
				title: {
			        text: 'iphone销量',
			        subtext: '纯属虚构',
			        left: 'center'
			    },
			    tooltip: {
			        trigger: 'item'
			    },
			    legend: {
			        orient: 'vertical',
			        left: 'left',
			        data:['iphone3','iphone4','iphone5']
			    },
			    visualMap: {
			        min: 0,
			        max: 2500,
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
			            name: 'iphone3',
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
			                {name: '北京',value: a },
			                {name: '天津',value: randomData() },
			                {name: '上海',value: randomData() },
			                {name: '重庆',value: randomData() },
			                {name: '河北',value: randomData() },
			                {name: '河南',value: randomData() },
			                {name: '云南',value: randomData() },
			                {name: '辽宁',value: randomData() },
			                {name: '黑龙江',value: randomData() },
			                {name: '湖南',value: randomData() },
			                {name: '安徽',value: randomData() },
			                {name: '山东',value: randomData() },
			                {name: '新疆',value: randomData() },
			                {name: '江苏',value: randomData() },
			                {name: '浙江',value: randomData() },
			                {name: '江西',value: randomData() },
			                {name: '湖北',value: randomData() },
			                {name: '广西',value: randomData() },
			                {name: '甘肃',value: randomData() },
			                {name: '山西',value: randomData() },
			                {name: '内蒙古',value: randomData() },
			                {name: '陕西',value: randomData() },
			                {name: '吉林',value: randomData() },
			                {name: '福建',value: randomData() },
			                {name: '贵州',value: randomData() },
			                {name: '广东',value: randomData() },
			                {name: '青海',value: randomData() },
			                {name: '西藏',value: randomData() },
			                {name: '四川',value: randomData() },
			                {name: '宁夏',value: randomData() },
			                {name: '海南',value: randomData() },
			                {name: '台湾',value: randomData() },
			                {name: '香港',value: randomData() },
			                {name: '澳门',value: randomData() }
			            ]
			        },
			    ]
			}); */
		});
	</script>

</body>
</html>