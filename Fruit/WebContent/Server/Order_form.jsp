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
<script src="js/jquery.easy-pie-chart.min.js"></script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js" type="text/javascript"></script>
<script src="js/respond.min.js"></script>
<script src="js/css3-mediaqueries.js"  type="text/javascript"></script>
  <![endif]-->
<title>è®¢ååè¡¨</title>
</head>
<body>
<div class="margin" id="page_style">
<div class="operation clearfix mb15 same_module cover_style p0" id="Order_form_style">
       <div class="type_title">è´­ç©äº§åæ¯ä¾</div>
        <div class="hide_style clearfix">
       <div class="proportion"> <div class="easy-pie-chart percentage" data-percent="20" data-color="#D15B47"><span class="percent">20</span>%</div><span class="name">é£åç±»</span></div>									
       <div class="proportion"> <div class="easy-pie-chart percentage" data-percent="55" data-color="#87CEEB"><span class="percent">55</span>%</div><span class="name">æè£ç±»</span></div>									
       <div class="proportion"> <div class="easy-pie-chart percentage" data-percent="90" data-color="#87B87F"><span class="percent">90</span>%</div><span class="name">æ°ç éä»¶</span></div>
       <div class="proportion"> <div class="easy-pie-chart percentage" data-percent="30" data-color="#d63116"><span class="percent">30</span>%</div><span class="name">ææº</span></div>
       <div class="proportion"> <div class="easy-pie-chart percentage" data-percent="60" data-color="#ff6600"><span class="percent">60</span>%</div><span class="name">çµè</span></div>
       <div class="proportion"> <div class="easy-pie-chart percentage" data-percent="40" data-color="#2ab023"><span class="percent">40</span>%</div><span class="name">çµå­äº§å</span></div>
       <div class="proportion"> <div class="easy-pie-chart percentage" data-percent="46" data-color="#1e3ae6"><span class="percent">46</span>%</div><span class="name">å¨æ¿ç¨å</span></div>
       <div class="proportion"> <div class="easy-pie-chart percentage" data-percent="65" data-color="#c316a9"><span class="percent">65</span>%</div><span class="name">å®¶ç¨çµå¨</span></div>
       <div class="proportion"> <div class="easy-pie-chart percentage" data-percent="56" data-color="#13a9e1"><span class="percent">56</span>%</div><span class="name">å«æµ´</span></div>  
    </div>
</div>
<!--åè¡¨å±ç¤º-->
<div class="h_products_list clearfix" id="Sellerber">
  <div class="Sellerber_left menu" id="menuBar">
    <div class="show_btn" id="rightArrow"><span></span></div>
    <div class="side_title"><a title="éè" class="close_btn"><span></span></a></div> 
    <div class="menu_style" id="menu_style">
    <div class="list_content">
     <div class="side_list">
        <div class="column_title"><h4 class="lighter smaller">è®¢åç±»å</h4></div>
       <div class="st_tree_style tree">
      </div>
    </div>
  </div>
 </div>
</div>
<div class="list_Exhibition list_show padding15">
<div class="operation clearfix mb15 searchs_style">
<button class="btn button_btn btn-danger" type="button" onclick=""><i class="fa fa-trash-o"></i>&nbsp;å é¤</button>
<span class="submenu">
</span>
<div class="search  clearfix">
 <label class="label_name">ååæç´¢ï¼</label>
 <input class="laydate-icon col-xs-2 col-lg-2 form-control Select_Date" id="start" type="text">
 <span style=" float:left; padding:0px 10px; line-height:32px;">è³</span>
 <input class="laydate-icon col-xs-2 col-lg-2 form-control Select_Date" id="end" type="text">
 <input name="" type="text"  class="form-control col-xs-3 col-lg-4"/><button class="btn button_btn bg-deep-blue " onclick=""  type="button"><i class="fa  fa-search"></i>&nbsp;æç´¢</button>
 <span>æ°éï¼3433ä»¶</span>
</div>
</div>
 <div class="datalist_show">
  <div class="datatable_height confirm">
 <table class="table table_list table_striped table-bordered" id="covar_list">
  <thead>
    <tr>
		<th width="25px"><label><input type="checkbox" class="ace"><span class="lbl"></span></label></th>
		<th width="120px">è®¢åç¼å·</th>
		<th width="250px">äº§ååç§°</th>
		<th width="100px">æ»ä»·</th>
		<th width="100px">ä¼æ </th>
		<th width="100px">è®¢åæ¶é´</th>				
		<th width="180px">æå±ç±»å</th>
		<th width="80px">æ°é</th>
		<th width="70px">ç¶æ</th>                
		<th width="200px">æä½</th>
	</tr>  
  </thead>
  <tbody>
     <tr>
         <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>20160705445622</td>
     <td class="order_product_name">
      <a href="#"><img src="product_img/p_1.jpg"  title="äº§ååç§°"/></a>
      <i class="fa fa-plus"></i>
       <a href="#"><img src="product_img/p_2.jpg"  title="äº§ååç§°"/></a>
     </td>
     <td>456.5</td>
     <td>14</td>
     <td>2016-7-5</td>
     <td>é£å</td>
     <td>2</td>
      <td class="td-status"><span class="label label-success radius">ä»£åè´§</span></td>
     <td>
     <a onClick="Delivery_stop(this,'10001')"  href="javascript:;" title="åè´§"  class="btn btn-xs btn-status">åè´§</a> 
     <a title="è®¢åè¯¦ç»"  href="order_detailed.html"  class="btn btn-xs btn-info" >è¯¦ç»</a> 
     <a title="å é¤" href="javascript:;"  onclick="Order_form_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>    
     </td>
     </tr>
     <tr>
     <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>20160705445622</td>
     <td class="order_product_name">
      <a href="#"><img src="product_img/p_1.jpg"  title="äº§ååç§°"/></a>
      <i class="fa fa-plus"></i>
       <a href="#"><img src="product_img/p_2.jpg"  title="äº§ååç§°"/></a>
     </td>
     <td>456.5</td>
     <td>14</td>
     <td>2016-7-5</td>
     <td>é£å</td>
     <td>2</td>
      <td class="td-status"><span class="label label-success radius">ä»£åè´§</span></td>
     <td>
     <a onClick="Delivery_stop(this,'10001')"  href="javascript:;" title="åè´§"  class="btn btn-xs btn-status">åè´§</a> 
     <a title="è®¢åè¯¦ç»"  href="order_detailed.html"  class="btn btn-xs btn-info" >è¯¦ç»</a> 
     <a title="å é¤" href="javascript:;"  onclick="Order_form_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>    
     </td>
     </tr>
     <tr>
     <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>20160705445622</td>
     <td class="order_product_name">
      <a href="#"><img src="product_img/p_1.jpg"  title="äº§ååç§°"/></a>
      <i class="fa fa-plus"></i>
       <a href="#"><img src="product_img/p_2.jpg"  title="äº§ååç§°"/></a>
     </td>
     <td>456.5</td>
     <td>14</td>
     <td>2016-7-5</td>
     <td>é£å</td>
     <td>2</td>
      <td class="td-status"><span class="label label-success radius">ä»£åè´§</span></td>
     <td>
     <a onClick="Delivery_stop(this,'10001')"  href="javascript:;" title="åè´§"  class="btn btn-xs btn-status">åè´§</a> 
     <a title="è®¢åè¯¦ç»"  href="order_detailed.html"  class="btn btn-xs btn-info" >è¯¦ç»</a> 
     <a title="å é¤" href="javascript:;"  onclick="Order_form_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>    
     </td>
     </tr>
     <tr>
     <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>20160705445622</td>
     <td class="order_product_name">
      <a href="#"><img src="product_img/p_1.jpg"  title="äº§ååç§°"/></a>
      <i class="fa fa-plus"></i>
       <a href="#"><img src="product_img/p_2.jpg"  title="äº§ååç§°"/></a>
     </td>
     <td>456.5</td>
     <td>14</td>
     <td>2016-7-5</td>
     <td>é£å</td>
     <td>2</td>
      <td class="td-status"><span class="label label-success radius">ä»£åè´§</span></td>
     <td>
     <a onClick="Delivery_stop(this,'10001')"  href="javascript:;" title="åè´§"  class="btn btn-xs btn-status">åè´§</a> 
     <a title="è®¢åè¯¦ç»"  href="order_detailed.html"  class="btn btn-xs btn-info" >è¯¦ç»</a> 
     <a title="å é¤" href="javascript:;"  onclick="Order_form_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>       
     </td>
     </tr>
     <tr>
     <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>20160705445622</td>
     <td class="order_product_name">
      <a href="#"><img src="product_img/p_12.jpg"  title="äº§ååç§°"/></a>
      <i class="fa fa-plus"></i>
       <a href="#"><img src="product_img/p_4.jpg"  title="äº§ååç§°"/></a>
     </td>
     <td>456.5</td>
     <td>14</td>
     <td>2016-7-5</td>
     <td>é£å</td>
     <td>2</td>
      <td class="td-status"><span class="label label-defaunt radius">ä»£åè´§</span></td>
     <td>
     <a title="è®¢åè¯¦ç»"  href="order_detailed.html"  class="btn btn-xs btn-info" >è¯¦ç»</a> 
     <a title="å é¤" href="javascript:;"  onclick="Order_form_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>      
     </td>
     </tr>
     <tr>
     <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>20160705445622</td>
     <td class="order_product_name">
      <a href="#"><img src="product_img/p_3.jpg"  title="äº§ååç§°"/></a>
      <i class="fa fa-plus"></i>
       <a href="#"><img src="product_img/p_7.jpg"  title="äº§ååç§°"/></a>
     </td>
     <td>456.5</td>
     <td>14</td>
     <td>2016-7-5</td>
     <td>é£å</td>
     <td>2</td>
       <td class="td-status"><span class="label label-defaunt radius">ä»£åè´§</span></td>
     <td>
     <a title="è®¢åè¯¦ç»"  href="order_detailed.html"  class="btn btn-xs btn-info" >è¯¦ç»</a> 
     <a title="å é¤" href="javascript:;"  onclick="Order_form_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>       
     </td>
     </tr>
          <tr>
     <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>20160705445622</td>
     <td class="order_product_name">
      <a href="#"><img src="product_img/p_3.jpg"  title="äº§ååç§°"/></a>
      <i class="fa fa-plus"></i>
       <a href="#"><img src="product_img/p_7.jpg"  title="äº§ååç§°"/></a>
     </td>
     <td>456.5</td>
     <td>14</td>
     <td>2016-7-5</td>
     <td>é£å</td>
     <td>2</td>
       <td class="td-status"><span class="label label-defaunt radius">ä»£åè´§</span></td>
     <td>
     <a title="è®¢åè¯¦ç»"  href="order_detailed.html"  class="btn btn-xs btn-info" >è¯¦ç»</a> 
     <a title="å é¤" href="javascript:;"  onclick="Order_form_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>       
     </td>
     </tr>
          <tr>
     <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>20160705445622</td>
     <td class="order_product_name">
      <a href="#"><img src="product_img/p_3.jpg"  title="äº§ååç§°"/></a>
      <i class="fa fa-plus"></i>
       <a href="#"><img src="product_img/p_7.jpg"  title="äº§ååç§°"/></a>
     </td>
     <td>456.5</td>
     <td>14</td>
     <td>2016-7-5</td>
     <td>é£å</td>
     <td>2</td>
       <td class="td-status"><span class="label label-defaunt radius">ä»£åè´§</span></td>
     <td>
     <a title="è®¢åè¯¦ç»"  href="order_detailed.html"  class="btn btn-xs btn-info" >è¯¦ç»</a> 
     <a title="å é¤" href="javascript:;"  onclick="Order_form_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>       
     </td>
     </tr>
          <tr>
     <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>20160705445622</td>
     <td class="order_product_name">
      <a href="#"><img src="product_img/p_3.jpg"  title="äº§ååç§°"/></a>
      <i class="fa fa-plus"></i>
       <a href="#"><img src="product_img/p_7.jpg"  title="äº§ååç§°"/></a>
     </td>
     <td>456.5</td>
     <td>14</td>
     <td>2016-7-5</td>
     <td>é£å</td>
     <td>2</td>
       <td class="td-status"><span class="label label-defaunt radius">ä»£åè´§</span></td>
     <td>
     <a title="è®¢åè¯¦ç»"  href="order_detailed.html"  class="btn btn-xs btn-info" >è¯¦ç»</a> 
     <a title="å é¤" href="javascript:;"  onclick="Order_form_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>       
     </td>
     </tr>
          <tr>
     <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>20160705445622</td>
     <td class="order_product_name">
      <a href="#"><img src="product_img/p_3.jpg"  title="äº§ååç§°"/></a>
      <i class="fa fa-plus"></i>
       <a href="#"><img src="product_img/p_7.jpg"  title="äº§ååç§°"/></a>
       <i class="fa fa-plus"></i>
       <a href="#"><img src="product_img/p_8.jpg"  title="äº§ååç§°"/></a>
     </td>
     <td>456.5</td>
     <td>14</td>
     <td>2016-7-5</td>
     <td>é£å</td>
     <td>2</td>
       <td class="td-status"><span class="label label-defaunt radius">ä»£åè´§</span></td>
     <td>
     <a title="è®¢åè¯¦ç»"  href="order_detailed.html"  class="btn btn-xs btn-info" >è¯¦ç»</a> 
     <a title="å é¤" href="javascript:;"  onclick="Order_form_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>       
     </td>
     </tr>
     </tbody>
     </table>
    </div>
    </div>
	</div>
   </div>
 </div>
  <!--åè´§-->
 <div id="Delivery_stop" style=" display:none">
  <div class="padding15">
    <div class="content_style">
  <div class="form-group"><label class="col-sm-2 control-label no-padding-right" for="form-field-1">å¿«éå¬å¸ </label>
       <div class="col-sm-9"><select class="form-control col-xs-8 col-sm-8 col-md-8" id="form-field-select-1">
																<option value="">--éæ©å¿«é--</option>
																<option value="1">å¤©å¤©å¿«é</option>
																<option value="2">åéå¿«é</option>
																<option value="3">ä¸­éå¿«é</option>
																<option value="4">é¡ºä¸°å¿«é</option>
																<option value="5">ç³éå¿«é</option>
																<option value="6">é®æ¿EMS</option>
																<option value="7">é®æ¿å°å</option>
																<option value="8">éµè¾¾å¿«é</option>
															</select></div>
	</div>
   <div class="form-group"><label class="col-sm-2 control-label no-padding-right" for="form-field-1"> å¿«éå· </label>
    <div class="col-xs-8 col-sm-8 col-md-8 col-lg-9"><input type="text" id="form-field-1" placeholder="å¿«éå·" class="col-xs-10 col-sm-8 col-xs-8" style="margin-left:0px;"></div>
	</div>
    <div class="form-group"><label class="col-sm-2 control-label no-padding-right" for="form-field-1">è´§å°ä»æ¬¾ </label>
     <div class="col-sm-9"><label class="col-sm-2 " style="display: block; margin-top:6px"><input name="checkbox" type="checkbox" class="ace" id="checkbox"><span class="lbl"></span></label></div>
	</div>
 </div>
  </div>
 </div>
</body>
</html>
<script type="text/javascript">
	//è®¾ç½®åé¡µæ¡æ¶å¸å±
$(function() { 
	$("#Sellerber").frame({
		float : 'left',
		color_btn:'.skin_select',
		Sellerber_menu:'.list_content',
		page_content:'.list_show',//åå®¹
		datalist:".datatable_height",//æ°æ®åè¡¨é«åº¦åå¼
		header:65,//é¡¶é¨é«åº¦
		mwidth:200,//èåæ å®½åº¦
		minStatue:true,
		
	});
});
//åå°ä¼ å¥ç æ é¢åè¡¨
var arr = [{
		id: 1,
		name: "é£å/éç±»/ç¹äº§",
	    amount:234,
		pid: 0,
	    
	}, {
		id: 2,
		name: "æ°ç å®¶çµ",
		amount:64,
		pid: 0,
		
	}, {
		id: 3,
		name: "å®¶å·/å®¶å±",
		amount:64,
		pid: 0,
		
	}, {
		id: 4,
		name: "çµèåå¬",
		amount:64,
		pid: 0,
		
	}, {
		id: 5,
		name: "å¾ä¹¦å½±å",
		amount:64,
		pid: 0,
		
	}, {
		id: 6,
		name: "æ¯å©´ç¨å",
		amount:64,
		pid: 0,
		
	}, {
		id: 13,
		name: "çå¥¶",
		amount:64,
		pid:1
	}, {
		id: 14,
		name: "é¢å",
		amount:64,
		pid:1
	}, {
		id: 15,
		name: "é¥¼å¹²",
		amount:64,
		pid:1
	}, {
		id: 16,
		name: "ç½é",
		amount:64,
		pid:1
	}, {
		id: 17,
		name: "å¤é",
		amount:64,
		pid:1
	},  {
		id: 18,
		name: "çº¢é",
		amount:64,
		pid:1
	}, {
		id: 19,
		name: "é³å",
		amount:64,
		pid:2
	}, {
		id: 20,
		name: "å°ç®±",
		amount:64,
		pid:2
	}, {
		id: 21,
		name: "æ´è¡£æº",
		amount:64,
		pid:2
	}, {
		id: 21,
		name: "æ´è¡£æº",
		amount:64,
		pid:3
	}, {
		id: 21,
		name: "æ´è¡£æº",
		amount:64,
		pid:4
	}, {
		id: 21,
		name: "æ´è¡£æº",
		amount:64,
		pid:5
	}

];
//æ ç¶å¾æä»¶
$(".tree").ProTree({
	arr: arr,//æ°æ®
	simIcon: "fa fa-file-text-o",//åä¸ªæ é¢å­ä½å¾æ  ä¸ä¼ é»è®¤glyphicon-file
	mouIconOpen: "fa fa-folder-open",//å«å¤ä¸ªæ é¢çæå¼å­ä½å¾æ   ä¸ä¼ é»è®¤glyphicon-folder-open
	mouIconClose:"fa fa-folder",//å«å¤ä¸ªæ é¢çå³é­çå­ä½å¾æ   ä¸ä¼ é»è®¤glyphicon-folder-close

})
	/******æ¶é´è®¾ç½®*******/
  var start = {
    elem: '#start',
    format: 'YYYY-MM-DD',
   // min: laydate.now(), //è®¾å®æå°æ¥æä¸ºå½åæ¥æ
    max: '2099-06-16', //æå¤§æ¥æ
    istime: true,
    istoday: false,
    choose: function(datas){
         end.min = datas; //å¼å§æ¥éå¥½åï¼éç½®ç»ææ¥çæå°æ¥æ
         end.start = datas //å°ç»ææ¥çåå§å¼è®¾å®ä¸ºå¼å§æ¥
    }
};
var end = {
    elem: '#end',
    format: 'YYYY-MM-DD',
    //min: laydate.now(),
    max: '2099-06-16',
    istime: true,
    istoday: false,
    choose: function(datas){
        start.max = datas; //ç»ææ¥éå¥½åï¼éç½®å¼å§æ¥çæå¤§æ¥æ
    }
};
laydate(start);
laydate(end);
/*è®¢å-å é¤*/
function Order_form_del(obj,id){
	layer.confirm('ç¡®è®¤è¦å é¤åï¼',function(index){
		$(obj).parents("tr").remove();
		layer.msg('å·²å é¤!',{icon:1,time:1000});
	});
}
/**åè´§**/
function Delivery_stop(obj,id){
	layer.open({
        type: 1,
        title: 'åè´§',
		maxmin: true, 
		shadeClose:false,
        area : ['500px' , ''],
        content:$('#Delivery_stop'),
		btn:['ç¡®å®','åæ¶'],
		yes: function(index, layero){		
		if($('#form-field-1').val()==""){
			layer.alert('å¿«éå·ä¸è½ä¸ºç©ºï¼',{
               title: 'æç¤ºæ¡',				
			  icon:0,		
			  }) 
			
			}else{			
			 layer.confirm('æäº¤æåï¼',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style=" display:none" class="btn btn-xs btn-success" onClick="member_stop(this,id)" href="javascript:;" title="å·²åè´§"><i class="fa fa-cubes bigger-120"></i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">å·²åè´§</span>');
		$(obj).remove();
		layer.msg('å·²åè´§!',{icon: 6,time:1000});
			});  
			layer.close(index);    		  
		  }
		
		}
	})
};
		var oldie = /msie\s*(8|7|6)/.test(navigator.userAgent.toLowerCase());
			$('.easy-pie-chart.percentage').each(function(){
				$(this).easyPieChart({
					barColor: $(this).data('color'),
					trackColor: '#EEEEEE',
					scaleColor: false,
					lineCap: 'butt',
					lineWidth: 10,
					animate: oldie ? false : 1000,
					size:103
				}).css('color', $(this).data('color'));
			});
</script>
