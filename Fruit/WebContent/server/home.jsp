<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link href="css/shop.css" type="text/css" rel="stylesheet" />
<link href="css/Sellerber.css" type="text/css"  rel="stylesheet" />
<link href="css/bkg_ui.css" type="text/css"  rel="stylesheet" />
<link href="font/css/font-awesome.min.css"  rel="stylesheet" type="text/css" />
<script src="js/jquery-1.9.1.min.js" type="text/javascript" ></script>
<script src="js/dist/echarts.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery.cookie.js"></script>
<script src="js/Sellerber.js" type="text/javascript"></script>
<script src="js/shopFrame.js" type="text/javascript"></script>

<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ZQVKW0dvz0tgMy6ZytmY5RxZ"></script>
<!-- å è½½ç¾åº¦å°å¾æ ·å¼ä¿¡æ¯çªå£ -->
<script type="text/javascript" src="http://api.map.baidu.com/library/SearchInfoWindow/1.5/src/SearchInfoWindow_min.js"></script>
<link rel="stylesheet" href="http://api.map.baidu.com/library/SearchInfoWindow/1.5/src/SearchInfoWindow_min.css" />
<!-- å è½½åå¸åè¡¨ -->
<script type="text/javascript" src="http://api.map.baidu.com/library/CityList/1.2/src/CityList_min.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/library/TextIconOverlay/1.2/src/TextIconOverlay_min.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/library/MarkerClusterer/1.2/src/MarkerClusterer_min.js"></script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js" type="text/javascript"></script>
<script src="js/respond.min.js"></script>
<script src="js/css3-mediaqueries.js"  type="text/javascript"></script>
  <![endif]-->
<title>é¦é¡µ</title>
</head>

<body>
<!---->
<div class="display_layer"><i class="fa fa-angle-left"></i></div>
<div class="Introduction_Box">
  <div class="close_layer"><i class="fa fa-close"></i></div>
<div id="main" style=""  class="data_sheets"></div>   
</div>
<div id="l-map" class="map_style"></div>
	<div id="result">
	  <div class="box_inset">
		 <dl>
    	<dt>åºæ¬æä½</dt>
        <dd>
                <div class="search_style">
                 <form action="#" method="get" class="sidebar_form">
		           <div class="input-group">
			       <input type="text" name="q" id="jiansuo1" class="form-control" title="è¯·è¾å¥å³é®å­è¿è¡æ¥è¯¢">
			       <span class="input-group-btn"><a class="btn_flat" href="javascript:" id="open1" onclick="refresh()" ><i class="fa fa-search"></i></a></span>
		         </div>
                 </form>
                </div>
        </dd>
        <dd>
        	<div class="area-text">
                        <b class="animation-line1"></b>
                        <h4>å£å¾è¯´æï¼</h4>
                         <p class="text_container">
                            <script>var s = 'ï¼å½æ¥VLRç»è®°ç¨æ·æ°ãæ¨æ¥VLRç»è®°ç¨æ·æ°ãä¸æå¹³åå¼å½æ¥è¯­é³ç½ç»æ¥éçãæ¨æ¥è¯­é³ç½ç»æ¥é'; var con = $('.text_container'); var index = 0; var length = s.length; var tId = null; function start(){ con.text(''); tId=setInterval(function(){ con.append(s.charAt(index)); if(index++ === length){ clearInterval(tId); index = 0; start() } },100); } start();</script>
                        </p>
                        <b class="animation-line2"></b>
                    </div>
        	
        </dd>
		  </dl>
	</div>
	</div>
	<!--åå¸åè¡¨-->
	<input type="text" id="jiansuo" value="">
	<div class="sel_container"><div class="city_select"><strong id="curCity">åäº¬å¸</strong> [<a id="curCityText" href="javascript:void(0)">æ´æ¢åå¸</a>]</div></div>
	<div class="map_popup" id="cityList" style="display:none;">
		<div class="popup_main">
			<div class="title">åå¸åè¡¨</div>
			<div class="cityList" id="citylist_container"></div>
			<button id="popup_close"></button>
		</div>
	</div>
</body>
</html>
<script type="text/javascript">
	//éèæ¾ç¤º
$(function(){
	var oWidth=$(".Introduction_Box").width();
	$(".display_layer").click(function(){
		$(".Introduction_Box").animate({
			left:50 +'%',
			marginLeft:-oWidth/2-13,
		},900);
		$(this).hide();
	});
	$(".close_layer").click(function(){
		$(".Introduction_Box").animate({
			left:100 + '%',
			marginLeft:'',
		},900);
		$(".display_layer").show();
	});
});
//åå§åå®½åº¦ãé«åº¦  
$(".map_style").height($(window).height());
	$(".map_style").width($(window).width());
	$(".Introduction_Box").width($(window).width()-20);
  //å½ææ¡£çªå£åçæ¹åæ¶ è§¦å  
    $(window).resize(function(){
	 $(".map_style").height($(window).height());
		$(".map_style").width($(window).width());
		$(".Introduction_Box").width($(window).width()-20);
})	
 require.config({
            paths: {
                echarts: './js/dist'
            }
        });
        require(
            [
                'echarts',
				'echarts/theme/macarons',
                'echarts/chart/line',   // æéå è½½æéå¾è¡¨ï¼å¦éå¨æç±»ååæ¢åè½ï¼å«å¿äºåæ¶å è½½ç¸åºå¾è¡¨
                'echarts/chart/bar'
            ],
            function (ec,theme) {
                var myChart = ec.init(document.getElementById('main'),theme);
               option = {
    title : {
        text: 'æè´­ä¹°è®¢åäº¤æè®°å½',
        subtext: 'å®æ¶è·åç¨æ·è®¢åè´­ä¹°è®°å½'
    },
    tooltip : {
        trigger: 'axis'
    },
    legend: {
        data:['ææè®¢å','å¾ä»æ¬¾','å·²ä»æ¬¾','ä»£åè´§']
    },
    toolbox: {
        show : true,
        feature : {
            mark : {show: true},
            dataView : {show: true, readOnly: false},
            magicType : {show: true, type: ['line', 'bar']},
            restore : {show: true},
            saveAsImage : {show: true}
        }
    },
    calculable : true,
    xAxis : [
        {
            type : 'category',
            data : ['1æ','2æ','3æ','4æ','5æ','6æ','7æ','8æ','9æ','10æ','11æ','12æ']
        }
    ],
    yAxis : [
        {
            type : 'value'
        }
    ],
    series : [
        {
            name:'ææè®¢å',
            type:'bar',
            data:[120, 49, 70, 232, 256, 767, 1356, 1622, 326, 200,164, 133],
            markPoint : {
                data : [
                    {type : 'max', name: 'æå¤§å¼'},
                    {type : 'min', name: 'æå°å¼'}
                ]
            }           
        },
        {
            name:'å¾ä»æ¬¾',
            type:'bar',
            data:[26, 59, 30, 84, 27, 77, 176, 1182, 487, 188, 60, 23],
            markPoint : {
                data : [
                    {name : 'å¹´æé«', value : 1182, xAxis: 7, yAxis: 1182, symbolSize:18},
                    {name : 'å¹´æä½', value : 23, xAxis: 11, yAxis: 3}
                ]
            },
           
			
        }
		, {
            name:'å·²ä»æ¬¾',
            type:'bar',
            data:[26, 59, 60, 264, 287, 77, 176, 122, 247, 148, 60, 23],
            markPoint : {
                data : [
                    {name : 'å¹´æé«', value : 172, xAxis: 7, yAxis: 172, symbolSize:18},
                    {name : 'å¹´æä½', value : 23, xAxis: 11, yAxis: 3}
                ]
            },
           
		}
		, {
            name:'ä»£åè´§',
            type:'bar',
            data:[26, 59, 80, 24, 87, 70, 175, 1072, 48, 18, 69, 63],
            markPoint : {
                data : [
                    {name : 'å¹´æé«', value : 1072, xAxis: 7, yAxis: 1072, symbolSize:18},
                    {name : 'å¹´æä½', value : 22, xAxis: 11, yAxis: 3}
                ]
            },
           
		}
    ]
};
                    
                myChart.setOption(option);
            }
        );	
function fanhui(){
	location.href = basePath+"/admin/index.action";
}
function refresh(){
	window.location.reload();
}

	
</script>