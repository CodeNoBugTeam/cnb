<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="css/shop.css" type="text/css" rel="stylesheet" />
<link href="css/Sellerber.css" type="text/css"  rel="stylesheet" />
<link href="css/bkg_ui.css" type="text/css"  rel="stylesheet" />
<link href="font/css/font-awesome.min.css"  rel="stylesheet" type="text/css" />
<script src="js/jquery-1.9.1.min.js" type="text/javascript" ></script>
<script type="text/javascript" src="js/Validform/Validform.min.js"></script>
<script type="text/javascript" src="js/jquery.cookie.js"></script>
<script src="js/shopFrame.js" type="text/javascript"></script>
<script src="js/Sellerber.js" type="text/javascript"></script>
<script src="js/layer/layer.js" type="text/javascript"></script>
<script src="js/laydate/laydate.js" type="text/javascript"></script>
<script src="js/dist/echarts.js"></script>
</head>

<body>
<div id="map" style="width:100%; overflow:auto; overflow:hidden"></div>
</body>
</html>
<script>
 //åå§åå®½åº¦ãé«åº¦
    $("#map").height($(window).height()-20); 
	
    //å½ææ¡£çªå£åçæ¹åæ¶ è§¦å  
    $(window).resize(function(){
	$("#map").height($(window).height()-20); 
  });
//ç»è®¡
	        require.config({
            paths: {
                echarts: './js/dist'
            }
        });
        require(
            [
                'echarts',
				'echarts/theme/macarons',
                'echarts/chart/map',   // æéå è½½æéå¾è¡¨ï¼å¦éå¨æç±»ååæ¢åè½ï¼å«å¿äºåæ¶å è½½ç¸åºå¾è¡¨
                //'echarts/chart/bar'
            ],
            function (ec,theme) {
                var myChart = ec.init(document.getElementById('map'),theme);
				
				option = {
    title : {
        text: 'å¨å½è´­ç©è®¢åäº¤æé',
        subtext: 'çº¯å±èæ',
        x:'center'
    },
    tooltip : {
        trigger: 'item'
    },
    legend: {
        orient: 'vertical',
        x:'left',
        data:['è®¢åé','äº¤æé¢']
    },
    dataRange: {
        x: 'left',
        y: 'bottom',
        splitList: [
            {start: 1500},
            {start: 900, end: 1500},
            {start: 310, end: 1000},
            {start: 200, end: 300},
            {start: 10, end: 200, label: '10 å° 200'},
            {start: 5, end: 5, label: '5', color: 'black'},
            {end: 10}
        ],
        color: ['#E0022B', '#E09107', '#A3E00B']
    },
    toolbox: {
        show: true,
        orient : 'vertical',
        x: 'right',
        y: 'center',
        feature : {
            mark : {show: true},
            dataView : {show: true, readOnly: false},
            restore : {show: true},
            saveAsImage : {show: true}
        }
    },
    roamController: {
        show: true,
        x: 'right',
        mapTypeControl: {
            'china': true
        }
    },
    series : [
        {
            name: 'è®¢åé',
            type: 'map',
            mapType: 'china',
            roam: false,
            itemStyle:{
                normal:{
                    label:{
                        show:true,
                        textStyle: {
                           color: "rgb(249, 249, 249)"
                        }
                    }
                },
                emphasis:{label:{show:true}}
            },
            data:[
                {name: 'åäº¬',value: Math.round(Math.random()*2000)},
                {name: 'å¤©æ´¥',value: Math.round(Math.random()*2000)},
                {name: 'ä¸æµ·',value: Math.round(Math.random()*2000)},
                {name: 'éåº',value: Math.round(Math.random()*2000)},
                {name: 'æ²³å',value: 0},
                {name: 'æ²³å',value: Math.round(Math.random()*2000)},
                {name: 'äºå',value: 5},
                {name: 'è¾½å®',value: 305},
                {name: 'é»é¾æ±',value: Math.round(Math.random()*2000)},
                {name: 'æ¹å',value: 200},
                {name: 'å®å¾½',value: Math.round(Math.random()*2000)},
                {name: 'å±±ä¸',value: Math.round(Math.random()*2000)},
                {name: 'æ°ç',value: Math.round(Math.random()*2000)},
                {name: 'æ±è',value: Math.round(Math.random()*2000)},
                {name: 'æµæ±',value: Math.round(Math.random()*2000)},
                {name: 'æ±è¥¿',value: Math.round(Math.random()*2000)},
                {name: 'æ¹å',value: Math.round(Math.random()*2000)},
                {name: 'å¹¿è¥¿',value: Math.round(Math.random()*2000)},
                {name: 'çè',value: Math.round(Math.random()*2000)},
                {name: 'å±±è¥¿',value: Math.round(Math.random()*2000)},
                {name: 'åèå¤',value: Math.round(Math.random()*2000)},
                {name: 'éè¥¿',value: Math.round(Math.random()*2000)},
                {name: 'åæ',value: Math.round(Math.random()*2000)},
                {name: 'ç¦å»º',value: Math.round(Math.random()*2000)},
                {name: 'è´µå·',value: Math.round(Math.random()*2000)},
                {name: 'å¹¿ä¸',value: Math.round(Math.random()*2000)},
                {name: 'éæµ·',value: Math.round(Math.random()*2000)},
                {name: 'è¥¿è',value: Math.round(Math.random()*2000)},
                {name: 'åå·',value: Math.round(Math.random()*2000)},
                {name: 'å®å¤',value: Math.round(Math.random()*2000)},
                {name: 'æµ·å',value: Math.round(Math.random()*2000)},
                {name: 'å°æ¹¾',value: Math.round(Math.random()*2000)},
                {name: 'é¦æ¸¯',value: Math.round(Math.random()*2000)},
                {name: 'æ¾³é¨',value: Math.round(Math.random()*2000)}
            ]
        }
    ]
};
				
				
				
					 myChart.setOption(option);
			})
</script>
