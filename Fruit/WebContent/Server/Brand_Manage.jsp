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
<script type="text/javascript" src="js/jquery.cookie.js"></script>
<script src="js/shopFrame.js" type="text/javascript"></script>
<script src="js/Sellerber.js" type="text/javascript"></script>
<script src="js/layer/layer.js" type="text/javascript"></script>
<script src="js/laydate/laydate.js" type="text/javascript"></script>
<script type="text/javascript" src="js/proTree.js" ></script>
<script src="js/dist/echarts.js" type="text/javascript"></script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js" type="text/javascript"></script>
<script src="js/respond.min.js"></script>
<script src="js/css3-mediaqueries.js"  type="text/javascript"></script>
  <![endif]-->
<title>åçç®¡ç</title>
</head>

<body>
<div class="margin" id="page_style">
 <div class="operation clearfix mb15 same_module">
<ul class="choice_search">
      <li class="clearfix col-xs-2 col-lg-3 col-ms-3 "><label class="label_name ">åçåç§°ï¼</label>
      <input placeholder="è¾å¥åçåç§°"  name="" type="text" class="form-control col-xs-8 col-lg-8 col-ms-8">
      </li>
      <li class="clearfix col-xs-2 col-lg-3 col-ms-3"><label class="label_name ">æ·»å æ¶é´ï¼</label>
      <input class="inline laydate-icon form-control Select_Date" id="start">
      </li>
      <li class="clearfix col-xs-2 col-lg-3 col-ms-3 ">
       <select name="" class="margin-right l_f select_style"><option  value="1">å½ååç</option><option value="2">å½å¤åç</option></select>
       <button type="button" class="btn button_btn bg-deep-blue "><i class="icon-search"></i>æ¥è¯¢</button></li>
    </ul>
	</div>
<div class="h_products_list clearfix mb15" id="Sellerber">
   <!--åçå±ç¤º-->
      <div class="Sellerber_left menu" id="menuBar">
    <div class="show_btn" id="rightArrow"><span></span></div>
    <div class="side_title"><a title="éè" class="close_btn"><span></span></a></div>
    <div class="menu_style" id="menu_style">
    <div class="list_content">
     <div class="side_list">
           <div id="main" style="height:250px;" class="side_list"></div>
    </div>
  </div>
 </div>
</div>
     <!--åçåè¡¨-->
    <div class="list_Exhibition list_show padding15">
      <div class="operation clearfix mb15  same_module">
       <span class="l_f">
        <a href="Add_Brand.html"  title="æ·»å åç" class="btn button_btn bg-deep-blue"><i class="fa fa-plus"></i>æ·»å åç</a>
        <a href="javascript:ovid()" class="btn  button_btn btn-danger"><i class="fa fa-trash"></i>æ¹éå é¤</a>
        <a href="javascript:ovid()" class="btn  button_btn btn-info">å½ååç</a>
        <a href="javascript:ovid()" class="btn button_btn btn-Dark-success">å½å¤åç</a>
       </span>
       <span class="r_f">å±ï¼<b>234</b>ä¸ªåç</span>
     </div>
      <div class=" datalist_show">
       <div class="datatable_height confirm">
       <table class="table table_list table_striped table-bordered" id="sample-table">
		<thead>
		 <tr>
				<th width="25px"><label><input type="checkbox" class="ace"><span class="lbl"></span></label></th>
				<th width="80px">ID</th>
				<th width="50px">æåº</th>
				<th width="120px">åçLOGO</th>
				<th width="120px">åçåç§°</th>
				<th width="130px">æå±å°åº/å½å®¶</th>
				<th width="150px">æ°é</th>
				<th width="180px">å å¥æ¶é´</th>
				<th width="70px">ç¶æ</th>                
				<th width="200px">æä½</th>
			</tr>
		</thead>
	<tbody>
		<tr>
          <td width="25px"><label><input type="checkbox" class="ace" ><span class="lbl"></span></label></td>
          <td width="80px">45631</td>
          <td width="50px"><input type="text" class="input-text text-c" value="1" style="width:60px"></td>
          <td><img src="product_img/logo/156.jpg"  width="130"/></td>
          <td><a href="javascript:ovid()" name="Brand_detailed.html" style="cursor:pointer" class="text-primary brond_name" onclick="generateOrders('561');" title="çå°æ²¹OLAY">çå°æ²¹OLAY</a></td>
          <td>æ³å½</td>
        
          <td>123</td>
          <td>2014-6-11 11:11:42</td>
          <td class="td-status"><span class="label label-success radius">å·²å¯ç¨</span></td>
          <td class="td-manage">
            <a onClick="member_stop(this,'10001')"  href="javascript:;" title="ä¸æ¶"  class="btn btn-xs btn-status">ä¸æ¶</a> 
            <a title="ç¼è¾" onclick="member_edit('ç¼è¾','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
            <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
          </td>
		</tr>
        <tr>
          <td><label><input type="checkbox" class="ace" ><span class="lbl"></span></label></td>
          <td>2045</td>
          <td><input type="text" class="input-text text-c" value="2" style="width:60px"></td>
          <td><img src="product_img/logo/34.jpg"  width="130"/></td>
          <td><u style="cursor:pointer" class="text-primary brond_name" onclick="generateOrders('5621');" title="çå°æ²¹OLAY">çå°æ²¹OLAY</u></td>
          <td>æ³å½</td>
          
          <td>123</td>
          <td>2014-6-11 11:11:42</td>
          <td class="td-status"><span class="label label-success radius">å·²å¯ç¨</span></td>
          <td class="td-manage">
             <a onClick="member_stop(this,'10001')"  href="javascript:;" title="ä¸æ¶"  class="btn btn-xs btn-status">ä¸æ¶</a> 
            <a title="ç¼è¾" onclick="member_edit('ç¼è¾','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
            <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
          </td>
		</tr>
         <tr>
          <td><label><input type="checkbox" class="ace" ><span class="lbl"></span></label></td>
          <td>2045</td>
          <td><input type="text" class="input-text text-c" value="2" style="width:60px"></td>
          <td><img src="product_img/logo/245.jpg"  width="130"/></td>
          <td><u style="cursor:pointer" class="text-primary brond_name" onclick="generateOrders('461');" title="å¾¡æ³¥å">å¾¡æ³¥å</u></td>
          <td>æ³å½</td>
        
          <td>123</td>
          <td>2014-6-11 11:11:42</td>
          <td class="td-status"><span class="label label-success radius">å·²å¯ç¨</span></td>
          <td class="td-manage">
          <a onClick="member_stop(this,'10001')"  href="javascript:;" title="ä¸æ¶"  class="btn btn-xs btn-status">ä¸æ¶</a> 
            <a title="ç¼è¾" onclick="member_edit('ç¼è¾','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
            <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
          </td>
		</tr>
         <tr>
          <td><label><input type="checkbox" class="ace" ><span class="lbl"></span></label></td>
          <td>2045</td>
          <td><input type="text" class="input-text text-c" value="2" style="width:60px"></td>
          <td><img src="product_img/logo/199.jpg"  width="130"/></td>
          <td><u style="cursor:pointer" class="text-primary brond_name" onclick="member_show('å¼ ä¸','member-show.html','10001','360','400')">èå§¿</u></td>
          <td>æ³å½</td>
     
          <td>123</td>
          <td>2014-6-11 11:11:42</td>
          <td class="td-status"><span class="label label-success radius">å·²å¯ç¨</span></td>
          <td class="td-manage">
             <a onClick="member_stop(this,'10001')"  href="javascript:;" title="ä¸æ¶"  class="btn btn-xs btn-status">ä¸æ¶</a> 
            <a title="ç¼è¾" onclick="member_edit('ç¼è¾','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
            <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
          </td>
		</tr>
         <tr>
          <td><label><input type="checkbox" class="ace" ><span class="lbl"></span></label></td>
          <td>2045</td>
          <td><input type="text" class="input-text text-c" value="2" style="width:60px"></td>
          <td><img src="product_img/logo/152.jpg"  width="130"/></td>
          <td><u style="cursor:pointer" class="text-primary brond_name" onclick="member_show('å¼ ä¸','member-show.html','10001','360','400')">ä¸å¡è</u></td>
          <td>æ³å½</td>
          
          <td>123</td>
          <td>2014-6-11 11:11:42</td>
          <td class="td-status"><span class="label label-success radius">å·²å¯ç¨</span></td>
          <td class="td-manage">
          <a onClick="member_stop(this,'10001')"  href="javascript:;" title="ä¸æ¶"  class="btn btn-xs btn-status">ä¸æ¶</a> 
            <a title="ç¼è¾" onclick="member_edit('ç¼è¾','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
            <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
          </td>
		</tr>
         <tr>
          <td><label><input type="checkbox" class="ace" ><span class="lbl"></span></label></td>
          <td>2045</td>
          <td><input type="text" class="input-text text-c" value="2" style="width:60px"></td>
          <td><img src="product_img/logo/42.jpg"  width="130"/></td>
          <td><u style="cursor:pointer" class="text-primary brond_name" onclick="member_show('å¼ ä¸','member-show.html','10001','360','400')">æ¯ååº¦</u></td>
          <td>æ³å½</td>
        
          <td>123</td>
          <td>2014-6-11 11:11:42</td>
          <td class="td-status"><span class="label label-success radius">å·²å¯ç¨</span></td>
          <td class="td-manage">
             <a onClick="member_stop(this,'10001')"  href="javascript:;" title="ä¸æ¶"  class="btn btn-xs btn-status">ä¸æ¶</a> 
            <a title="ç¼è¾" onclick="member_edit('ç¼è¾','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
            <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
          </td>
		</tr>
         <tr>
          <td><label><input type="checkbox" class="ace" ><span class="lbl"></span></label></td>
          <td>2045</td>
          <td><input type="text" class="input-text text-c" value="2" style="width:60px"></td>
          <td><img src="product_img/logo/42.jpg"  width="130"/></td>
          <td><u style="cursor:pointer" class="text-primary brond_name" onclick="member_show('å¼ ä¸','member-show.html','10001','360','400')">æ¯ååº¦</u></td>
          <td>æ³å½</td>
      
          <td>123</td>
          <td>2014-6-11 11:11:42</td>
          <td class="td-status"><span class="label label-success radius">å·²å¯ç¨</span></td>
          <td class="td-manage">
            <a onClick="member_stop(this,'10001')"  href="javascript:;" title="ä¸æ¶"  class="btn btn-xs btn-status">ä¸æ¶</a> 
            <a title="ç¼è¾" onclick="member_edit('ç¼è¾','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
            <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
          </td>
		</tr>
        </tbody>
        </table>
	   </div>
     </div>
	</div>
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
		mwidth:350,//å®½åº¦èªå®ä¹
		minStatue:true,
		
	});
});
function generateOrders(id){
	window.location.href = "Brand_detailed.html?="+id;
};
/*åç-æ¥ç*/
function member_show(title,url,id,w,h){
	layer_show(title,url,w,h);
}
/*åç-åç¨*/
/*äº§å-åç¨*/
function member_stop(obj,id){
	layer.confirm('ç¡®è®¤è¦ä¸æ¶è¯¥åçåï¼è¯¥åçä¸çææäº§åå°å¨é¨ä¸æ¶ã',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn btn-xs " onClick="member_start(this,id)" href="javascript:;" title="ä¸æ¶">ä¸æ¶</a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">å·²ä¸æ¶</span>');
		$(obj).remove();
		layer.msg('å·²ä¸æ¶!',{icon: 5,time:1000});
	});
}
/*äº§å-å¯ç¨*/
function member_start(obj,id){
	layer.confirm('ç¡®è®¤è¦ä¸æ¶æ¹è¯¥åçåï¼',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn btn-xs btn-status" onClick="member_stop(this,id)" href="javascript:;" title="ä¸æ¶">ä¸æ¶</a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">å·²ä¸æ¶</span>');
		$(obj).remove();
		layer.msg('å·²ä¸æ¶!',{icon: 6,time:1000});
	});
}
/*äº§å-ç¼è¾*/
function member_edit(title,url,id,w,h){
	layer_show(title,url,w,h);
}
/*äº§å-å é¤*/
function member_del(obj,id){
	layer.confirm('ç¡®è®¤è¦å é¤åï¼',function(index){
		$(obj).parents("tr").remove();
		layer.msg('å·²å é¤!',{icon:1,time:1000});
	});
}
	//è®¾ç½®æ¶é´
laydate({
    elem: '#start',
    event: 'focus' 
});
</script>
 <script type="text/javascript">
        require.config({
            paths: {
                echarts: './js/dist'
            }
        });
        require(
            [
                'echarts',
                'echarts/chart/pie',   // æéå è½½æéå¾è¡¨ï¼å¦éå¨æç±»ååæ¢åè½ï¼å«å¿äºåæ¶å è½½ç¸åºå¾è¡¨
                'echarts/chart/funnel'
            ],
            function (ec) {
                var myChart = ec.init(document.getElementById('main'));
			
			option = {
    title : {
        text: 'å½åå½å¤åçæ¯ä¾',
        subtext: '',
        x:'center'
    },
    tooltip : {
        trigger: 'item',
        formatter: "{a} <br/>{b} : {c} ({d}%)"
    },
    legend: {
        y : 'bottom',
		x:'center',
		bottom:30,
        data:['å½ååç','å½å¤åç']
    },
    toolbox: {
        show : false,
        feature : {
            mark : {show: false},
            dataView : {show: false, readOnly: false},
            magicType : {
                show: true, 
                type: ['pie', 'funnel'],
                option: {
                    funnel: {
                        x: '25%',
                        width: '50%',
                        funnelAlign: 'left',
                        max: 545
                    }
                }
            },
            restore : {show: true},
            saveAsImage : {show: true}
        }
    },
    calculable : true,
    series : [
        {
            name:'åçæ°é',
            type:'pie',
            radius : '45%',
            center: ['50%', '50%'],
            data:[
                {value:335, name:'å½ååç'},
                {value:210, name:'å½å¤åç'},

            ]
        }
    ]
};
   myChart.setOption(option);
}
);
</script>