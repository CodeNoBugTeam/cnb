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
<script src="js/Sellerber.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery.cookie.js"></script>
<script src="js/shopFrame.js" type="text/javascript"></script>
<script src="js/layer/layer.js" type="text/javascript"></script>
<script src="js/laydate/laydate.js" type="text/javascript"></script>
<script src="js/dist/echarts.js" type="text/javascript"></script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js" type="text/javascript"></script>
<script src="js/respond.min.js"></script>
<script src="js/css3-mediaqueries.js"  type="text/javascript"></script>
  <![endif]-->
<title>è®¢å</title>

</head>
<body>
<div class="margin order_style" id="page_style">
 <div class="clearfix mb15 same_module">
  <div class="col-xs-2 col-sm-2 col-md-2 col-lg-4">
   <a href="javascript:ovid()" class="tile-button btn_Plate bg-deep-blue">
   <div class="carousel Module_info">
   <div class="left_img bg_color_bule">
    <i class="fa fa-cny"></i>
    <h3>æäº¤æ»é¢</h3>
   </div>
   <div class="right_info">4567.89å</div>
   </div>
   </a>
  </div>
   <div class="col-xs-2 col-sm-2 col-md-2 col-lg-4">
   <a href="javascript:ovid()" class="tile-button btn_Plate bg-green">
   <div class="carousel Module_info">
   <div class="left_img bg_color_green">
    <i class="fa  fa-cny"></i>
    <h3>æ¯ä»æ»é¢</h3>
   </div>
   <div class="right_info">4567.89å</div>
   </div>
   </a>
  </div>
   <div class="col-xs-2 col-sm-2 col-md-2 col-lg-4">
   <a href="javascript:ovid()" class="tile-button btn_Plate bg-orange">
   <div class="carousel Module_info">
   <div class="left_img bg_color_orange">
    <i class="fa  fa-cny"></i>
    <h3>éæ¬¾æ»é¢</h3>
   </div>
   <div class="right_info">45672å</div>
   </div>
   </a>
  </div>
     <div class="col-xs-2 col-sm-2 col-md-2 col-lg-4">
   <a href="javascript:ovid()" class="tile-button btn_Plate bg-yellow">
   <div class="carousel Module_info">
   <div class="left_img bg_color_yellow">
    <i class="fa  fa-cny"></i>
    <h3>ä»£ä»æ¬¾é¢</h3>
   </div>
   <div class="right_info">3454å</div>
   </div>
   </a>
  </div>
   <div class="col-xs-2 col-sm-2 col-md-2 col-lg-4">
   <a href="javascript:ovid()" class="tile-button btn_Plate bg-red ">
   <div class="carousel Module_info">
   <div class="left_img bg_color_red">
    <i class="fa fa-shopping-cart"></i>
    <h3>è®¢åæ»é</h3>
   </div>
   <div class="right_info">4567ç¬</div>
   </div>
   </a>
  </div> 
  <div class="col-xs-2 col-sm-2 col-md-2 col-lg-4">
   <a href="javascript:ovid()" class="tile-button btn_Plate bg-purple">
   <div class="carousel Module_info">
   <div class="left_img bg_color_purple">
    <i class="fa  fa-clock-o "></i>
    <h3>å¾å¤ç</h3>
   </div>
   <div class="right_info">117ç¬</div>
   </div>
   </a>
  </div>
 </div>
<div class="h_products_list clearfix same_module" id="Sellerber">
      <div class="Sellerber_left menu" id="menuBar">
    <div class="show_btn" id="rightArrow"><span></span></div>
    <div class="side_title"><a title="éè" class="close_btn"><span></span></a></div>
   
    <div class="menu_style" id="menu_style">
    <div class="list_content">
     <div class="side_list">
           <!--å¾è¡¨å±ç¤ºå¿«-->
           
    </div>
  </div>
 </div>
</div> 
<div id="main" style="overflow:hidden; width:100%; overflow:auto; margin-top: 30px" class="list_Exhibition list_show">	</div> 
</div>
</div>
</body>
</html>
<script>
//è®¾ç½®åé¡µæ¡æ¶å¸å±
$(function() { 
	$("#Sellerber").frame({
		float : 'left',
		color_btn:'.skin_select',
		Sellerber_menu:'.list_content',
		page_content:'.list_show',//åå®¹
		datalist:".datatable_height",//æ°æ®åè¡¨é«åº¦åå¼
		header:65,//é¡¶é¨é«åº¦
		mwidth:400,//èåæ å®½åº¦
		minStatue:true,
		
	});
});
/*äº§å-å é¤*/
function picture_del(obj,id){
	layer.confirm('ç¡®è®¤è¦å é¤åï¼',{icon:0,},function(index){
		$(obj).parents("tr").remove();
		layer.msg('å·²å é¤!',{icon:1,time:1000});
	});
}
/*æ¶é´*/
	laydate({
    elem: '#start',
    event: 'focus' 
});
</script>
<script type="text/javascript">
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
                'echarts/chart/line',   // æéå è½½æéå¾è¡¨ï¼å¦éå¨æç±»ååæ¢åè½ï¼å«å¿äºåæ¶å è½½ç¸åºå¾è¡¨
                'echarts/chart/bar'
            ],
            function (ec,theme) {
                var myChart = ec.init(document.getElementById('main'),theme);
				option = {
					  title : {
        text: 'äº¤æç»è®¡',
        subtext: '',
        x:'center'
    },
    tooltip : {
        trigger: 'axis'
    },
    toolbox: {
        show : true,
        feature : {
            mark : {show: true},
            dataView : {show: true, readOnly: false},
            magicType: {show: true, type: ['line', 'bar']},
            restore : {show: true},
            saveAsImage : {show: true}
        }
    },
    calculable : true,
    legend: {
		 y : 'bottom',
		x:'center',
        data:['æäº¤è®¢å','å¤±è´¥è®¢å','æäº¤éé¢']
    },
    xAxis : [
        {
            type : 'category',
            data : ['1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','125','26','27','28','29','30','31']
        }
    ],
    yAxis : [
        {
            type : 'value',
            name : 'è®¢å',
            axisLabel : {
                formatter: '{value} å'
            }
        },
        {
            type : 'value',
            name : 'éé¢',
            axisLabel : {
                formatter: '{value} å'
            }
        }
    ],
    series : [

        {
            name:'æäº¤è®¢å',
            type:'bar',
            data:[20, 49, 70, 232, 26, 67, 136, 162, 36, 20, 64, 33,26, 67, 136, 162, 36, 20, 64,]
        },
        {
            name:'å¤±è´¥è®¢å',
            type:'bar',
            data:[2, 5, 9, 4, 2, 7, 1, 1, 4, 1, 0, 3,0, 0, 1, 2, 6, 2, 6,]
        },
        {
            name:'æäº¤éé¢',
            type:'line',
            yAxisIndex: 1,
            data:[2024, 2233, 3344, 4543, 6355, 1042, 2037, 2346, 2305, 1654, 2120, 6542,2656, 6547, 1346, 2162, 3456, 4520, 6664,]
        }
    ]
};			
	 myChart.setOption(option);
	})
</script>
