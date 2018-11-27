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
<title>ä¼åç®¡ç</title>
</head>
<!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <script src="js/respond.min.js"></script>
  <script src="js/css3-mediaqueries.js"  type="text/javascript"></script>
  <![endif]-->
<body>
<div class="margin" id="page_style">
   <div class="operation clearfix same_module mb15">
    <ul class="choice_search">
     <li class="clearfix col-xs-2 col-lg-2 col-ms-3 "><label class="label_name ">ä¼ååç§°ï¼</label><input name="" type="text"  class="form-control col-xs-6 col-lg-5"/></li>
      <li class="clearfix col-xs-4 col-lg-5 col-ms-5 "><label class="label_name ">æ³¨åæ¶é´ï¼</label> 
     <input class="laydate-icon col-xs-4 col-lg-3" id="start" style=" margin-right:10px; height:28px; line-height:28px; float:left">
      <span  style=" float:left; padding:0px 10px; line-height:32px;">è³</span>
      <input class="laydate-icon col-xs-4 col-lg-3" id="end" style="height:28px; line-height:28px; float:left"></li>
     <button class="btn button_btn bg-deep-blue " onclick=""  type="button"><i class="fa  fa-search"></i>&nbsp;æç´¢</button>
    </ul>
  </div>
 <div class="h_products_list clearfix" id="Sellerber">
   <div class="Sellerber_left menu" id="menuBar">
    <div class="show_btn" id="rightArrow"><span></span></div>
    <div class="side_title"><a title="éè" class="close_btn"><span></span></a></div> 
    <div class="menu_style" id="menu_style">
    <div class="list_content">
     <div class="side_list">
        <div class="column_title"><h4 class="lighter smaller">ä¼åç­çº§åè¡¨</h4></div>
       <div class="st_tree_style tree">
      </div>
    </div>
  </div>
 </div>
</div>
<div class="bkg_List_style list_Exhibition list_show padding15">
 <div class="bkg_List_operation clearfix searchs_style">
  <ul class="bkg_List_Button_operation">
   <li class="btn btn-danger"><a href="javascrpt:void()" class="btn_add"><em class="bkg_List_icon icon_add"></em>å é¤ç¨æ·</a></li>
   <li class="btn bg-deep-blue"><a href="javascrpt:void()" class="btn_add"><em class="bkg_List_icon icon_modify"></em>ä¿®æ¹ç¨æ·</a></li>
   <li class="btn btn-Dark-success"><a href="javascrpt:void()" class="btn_add"><em class="bkg_List_icon icon_close"></em>å³é­ç¨æ·</a></li>
  </ul>
 </div>
  <div class="datalist_show">
 <div class="bkg_List clearfix datatable_height confirm">
  <table class="table  table_list table_striped table-bordered">
   <thead>
    <tr>
     <th  width="40"><label><input type="checkbox" class="ace"><span class="lbl"></span></label></th>
     <th>ç¨æ·å</th>
     <th>çå®å§å</th>
     <th>æ§å«</th>
     <th>çµè¯</th>
     <th>é®ç®±</th>
     <th>å°å</th>
     <th>å å¥æ¶é´</th>
     <th>ç­çº§</th>
     <th>ç¶æ</th>
      <th>ç¼è¾</th>
    </tr>
   </thead>
   <tbody>
    <tr>
     <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>æ±æµ·å¤©å </td>
     <td><a href="javascript:" onClick="userinfo(this,121)">å¼ æç </a></td>
     <td>ç·</td>
     <td>1345665656</td>
     <td>4545455@qq.com</td>
     <td>æ±èåäº¬é¨è±å°åº</td>
     <td>2016-07-22 </td>
     <td>æ®éç¨æ·</td>
      <td class="td-status"><span class="label label-success radius">å¯ç¨</span></td>
        <td class="td-manage">
        <a onClick="member_stop(this,'10001')"  href="javascript:;" title="ä¸æ¶"  class="btn btn-xs btn-status">åç¨</a> 
        <a title="ç¼è¾" onclick="member_edit('ç¼è¾','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
        <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
       </td>
    </tr>
        <tr>
     <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>æ±æµ·å¤©å </td>
     <td><a href="javascript:" onClick="userinfo(this,121)">å¼ æç </a></td>
     <td>ç·</td>
     <td>1345665656</td>
     <td>4545455@qq.com</td>
     <td>æ±èåäº¬é¨è±å°åº</td>
     <td>2016-07-22 </td>
     <td>æ®éç¨æ·</td>
      <td class="td-status"><span class="label label-success radius">å¯ç¨</span></td>
        <td class="td-manage">
        <a onClick="member_stop(this,'10001')"  href="javascript:;" title="ä¸æ¶"  class="btn btn-xs btn-status">åç¨</a> 
        <a title="ç¼è¾" onclick="member_edit('ç¼è¾','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
        <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
       </td>
    </tr>
        <tr>
     <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>æ±æµ·å¤©å </td>
     <td><a href="javascript:" onClick="userinfo(this,121)">å¼ æç </a></td>
     <td>ç·</td>
     <td>1345665656</td>
     <td>4545455@qq.com</td>
     <td>æ±èåäº¬é¨è±å°åº</td>
     <td>2016-07-22 </td>
     <td>æ®éç¨æ·</td>
      <td class="td-status"><span class="label label-success radius">å¯ç¨</span></td>
        <td class="td-manage">
        <a onClick="member_stop(this,'10001')"  href="javascript:;" title="ä¸æ¶"  class="btn btn-xs btn-status">åç¨</a> 
        <a title="ç¼è¾" onclick="member_edit('ç¼è¾','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
        <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
       </td>
    </tr>    <tr>
     <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>æ±æµ·å¤©å </td>
     <td><a href="javascript:" onClick="userinfo(this,121)">å¼ æç </a></td>
     <td>ç·</td>
     <td>1345665656</td>
     <td>4545455@qq.com</td>
     <td>æ±èåäº¬é¨è±å°åº</td>
     <td>2016-07-22 </td>
     <td>æ®éç¨æ·</td>
      <td class="td-status"><span class="label label-success radius">å¯ç¨</span></td>
        <td class="td-manage">
        <a onClick="member_stop(this,'10001')"  href="javascript:;" title="ä¸æ¶"  class="btn btn-xs btn-status">åç¨</a> 
        <a title="ç¼è¾" onclick="member_edit('ç¼è¾','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
        <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
       </td>
    </tr>    <tr>
     <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>æ±æµ·å¤©å </td>
     <td><a href="javascript:" onClick="userinfo(this,121)">å¼ æç </a></td>
     <td>ç·</td>
     <td>1345665656</td>
     <td>4545455@qq.com</td>
     <td>æ±èåäº¬é¨è±å°åº</td>
     <td>2016-07-22 </td>
     <td>æ®éç¨æ·</td>
      <td class="td-status"><span class="label label-success radius">å¯ç¨</span></td>
        <td class="td-manage">
        <a onClick="member_stop(this,'10001')"  href="javascript:;" title="ä¸æ¶"  class="btn btn-xs btn-status">åç¨</a> 
        <a title="ç¼è¾" onclick="member_edit('ç¼è¾','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
        <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
       </td>
    </tr>    <tr>
     <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>æ±æµ·å¤©å </td>
     <td><a href="javascript:" onClick="userinfo(this,121)">å¼ æç </a></td>
     <td>ç·</td>
     <td>1345665656</td>
     <td>4545455@qq.com</td>
     <td>æ±èåäº¬é¨è±å°åº</td>
     <td>2016-07-22 </td>
     <td>æ®éç¨æ·</td>
      <td class="td-status"><span class="label label-success radius">å¯ç¨</span></td>
        <td class="td-manage">
        <a onClick="member_stop(this,'10001')"  href="javascript:;" title="ä¸æ¶"  class="btn btn-xs btn-status">åç¨</a> 
        <a title="ç¼è¾" onclick="member_edit('ç¼è¾','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
        <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
       </td>
    </tr>
        <tr>
     <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>æ±æµ·å¤©å </td>
     <td><a href="javascript:" onClick="userinfo(this,121)">å¼ æç </a></td>
     <td>ç·</td>
     <td>1345665656</td>
     <td>4545455@qq.com</td>
     <td>æ±èåäº¬é¨è±å°åº</td>
     <td>2016-07-22 </td>
     <td>æ®éç¨æ·</td>
      <td class="td-status"><span class="label label-success radius">å¯ç¨</span></td>
        <td class="td-manage">
        <a onClick="member_stop(this,'10001')"  href="javascript:;" title="ä¸æ¶"  class="btn btn-xs btn-status">åç¨</a> 
        <a title="ç¼è¾" onclick="member_edit('ç¼è¾','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
        <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
       </td>
    </tr>
        <tr>
     <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>æ±æµ·å¤©å </td>
     <td><a href="javascript:" onClick="userinfo(this,121)">å¼ æç </a></td>
     <td>ç·</td>
     <td>1345665656</td>
     <td>4545455@qq.com</td>
     <td>æ±èåäº¬é¨è±å°åº</td>
     <td>2016-07-22 </td>
     <td>æ®éç¨æ·</td>
      <td class="td-status"><span class="label label-success radius">å¯ç¨</span></td>
        <td class="td-manage">
        <a onClick="member_stop(this,'10001')"  href="javascript:;" title="ä¸æ¶"  class="btn btn-xs btn-status">åç¨</a> 
        <a title="ç¼è¾" onclick="member_edit('ç¼è¾','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
        <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
       </td>
    </tr>
        <tr>
     <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>æ±æµ·å¤©å </td>
     <td><a href="javascript:" onClick="userinfo(this,121)">å¼ æç </a></td>
     <td>ç·</td>
     <td>1345665656</td>
     <td>4545455@qq.com</td>
     <td>æ±èåäº¬é¨è±å°åº</td>
     <td>2016-07-22 </td>
     <td>æ®éç¨æ·</td>
      <td class="td-status"><span class="label label-success radius">å¯ç¨</span></td>
        <td class="td-manage">
        <a onClick="member_stop(this,'10001')"  href="javascript:;" title="ä¸æ¶"  class="btn btn-xs btn-status">åç¨</a> 
        <a title="ç¼è¾" onclick="member_edit('ç¼è¾','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
        <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
       </td>
    </tr>
        <tr>
     <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>æ±æµ·å¤©å </td>
     <td><a href="javascript:" onClick="userinfo(this,121)">å¼ æç </a></td>
     <td>ç·</td>
     <td>1345665656</td>
     <td>4545455@qq.com</td>
     <td>æ±èåäº¬é¨è±å°åº</td>
     <td>2016-07-22 </td>
     <td>æ®éç¨æ·</td>
      <td class="td-status"><span class="label label-success radius">å¯ç¨</span></td>
        <td class="td-manage">
        <a onClick="member_stop(this,'10001')"  href="javascript:;" title="ä¸æ¶"  class="btn btn-xs btn-status">åç¨</a> 
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
<!--æ·»å ç¨æ·å¾å±-->
<div class="add_menber" id="add_menber_style" style="display:none">
  
    <ul class=" page-content">
     <li><label class="label_name">ç¨&nbsp;&nbsp;æ· &nbsp;åï¼</label><span class="add_name"><input value="" name="ç¨æ·å" type="text"  class="text_add"/></span><div class="prompt r_f"></div></li>
     <li><label class="label_name">çå®å§åï¼</label><span class="add_name"><input name="çå®å§å" type="text"  class="text_add"/></span><div class="prompt r_f"></div></li>
     <li><label class="label_name">æ§&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;å«ï¼</label><span class="add_name">
     <label><input name="form-field-radio" type="radio" checked="checked" class="ace"><span class="lbl">ç·</span></label>&nbsp;&nbsp;&nbsp;
     <label><input name="form-field-radio" type="radio" class="ace"><span class="lbl">å¥³</span></label>&nbsp;&nbsp;&nbsp;
     <label><input name="form-field-radio" type="radio" class="ace"><span class="lbl">ä¿å¯</span></label>
     </span>
     <div class="prompt r_f"></div>
     </li>
     <li><label class="label_name">åºå®çµè¯ï¼</label><span class="add_name"><input name="åºå®çµè¯" type="text"  class="text_add"/></span><div class="prompt r_f"></div></li>
     <li><label class="label_name">ç§»å¨çµè¯ï¼</label><span class="add_name"><input name="ç§»å¨çµè¯" type="text"  class="text_add"/></span><div class="prompt r_f"></div></li>
     <li><label class="label_name">çµå­é®ç®±ï¼</label><span class="add_name"><input name="çµå­é®ç®±" type="text"  class="text_add"/></span><div class="prompt r_f"></div></li>
     <li class="adderss"><label class="label_name">å®¶åº­ä½åï¼</label><span class="add_name"><input name="å®¶åº­ä½å" type="text"  class="text_add" style=" width:350px"/></span><div class="prompt r_f"></div></li>
     <li><label class="label_name">ç¶&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;æï¼</label>
     <span class="add_name">
     <label><input name="form-field-radio1" type="radio" checked="checked" class="ace"><span class="lbl">å¼å¯</span></label>&nbsp;&nbsp;&nbsp;
     <label><input name="form-field-radio1" type="radio" class="ace"><span class="lbl">å³é­</span></label>
     </span>
     <div class="prompt r_f"></div></li>
    </ul>
 </div>
 <!--ç¨æ·ä¿¡æ¯-->
 <div class="userinfo_style" id="userinfo_style" style="display: none">
 	<div class="member_show" >
<div class="member_jbxx clearfix" >
  <img class="img" src="images/user.png">
  <dl  class="right_xxln">
  <dt><span class="">å¼ ä¸</span> <span class="">ä½é¢ï¼40</span></dt>
  <dd class="" style="margin-left:0">è¿å®¶ä¼å¾æï¼ä»ä¹ä¹æ²¡æçä¸</dd>
  </dl>
</div>
<div class="member_content">
  <ul>
   <li><label class="label_name">æ§å«ï¼</label><span class="name">ç·</span></li>
   <li><label class="label_name">ææºï¼</label><span class="name">13456765555</span></li>
   <li><label class="label_name">åºå®çµè¯ï¼</label><span class="name">021-454443344</span></li>
   <li><label class="label_name">é®ç®±ï¼</label><span class="name">admin@mail.com</span></li>
   <li><label class="label_name">å°åï¼</label><span class="name">æ±èåäº¬å¸é¨è±å°åºåä¸è·¯5å·ç´«èè±å­2æ4åå402</span></li>
   <li><label class="label_name">æ³¨åæ¶é´ï¼</label><span class="name">2014.12.20</span></li>
   <li><label class="label_name">ç§¯åï¼</label><span class="name">330</span></li>
   <li><label class="label_name">ç­çº§ï¼</label><span class="name">æ®éç¨æ·</span></li>
   
  </ul>
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
		mwidth:200,//èåæ å®½åº¦
		
	});
});
	//åå°ä¼ å¥ç æ é¢åè¡¨
var arr = [{
		id: 1,
		name: "æ®éä¼å",
	    amount:234,
		pid: 0,
	    
	}, {
		id: 2,
		name: "ç½éä¼å",
		amount:64,
		pid: 0,
		
	}, {
		id: 3,
		name: "é»éä¼å",
		amount:64,
		pid: 0,
		
	}, {
		id: 4,
		name: "éé»ä¼å",
		amount:64,
		pid: 0,
		
	}, {
		id: 5,
		name: "ééä¼å",
		amount:64,
		pid: 0,
		
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
function userinfo(id){
	 layer.open({
        type: 1,
        title: 'ç¨æ·ä¿¡æ¯',
		maxmin: true, 
		shadeClose:false, //ç¹å»é®ç½©å³é­å±
        area : ['600px' , ''],
        content:$('#userinfo_style'),
	 })
				}
/*ç¨æ·-ç¼è¾*/
function member_edit(id){
	  layer.open({
        type: 1,
        title: 'ä¿®æ¹ç¨æ·ä¿¡æ¯',
		maxmin: true, 
		shadeClose:false, //ç¹å»é®ç½©å³é­å±
        area : ['800px' , ''],
        content:$('#add_menber_style'),
		btn:['æäº¤','åæ¶'],
		yes:function(index,layero){	
		 var num=0;
		 var str="";
     $(".add_menber input[type$='text']").each(function(n){
          if($(this).val()=="")
          {
               
			   layer.alert(str+=""+$(this).attr("name")+"ä¸è½ä¸ºç©ºï¼\r\n",{
                title: 'æç¤ºæ¡',				
				icon:0,								
          }); 
		    num++;
            return false;            
          } 
		 });
		  if(num>0){  return false;}	 	
          else{
			  layer.alert('æ·»å æåï¼',{
               title: 'æç¤ºæ¡',				
			icon:1,		
			  });
			   layer.close(index);	
		  }		  		     				
		}
    });
}
/*åç¨*/
function member_stop(obj,id){
	layer.confirm('ç¡®è®¤è¦åç¨æ¹ç¨æ·åï¼',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn btn-xs " onClick="member_start(this,id)" href="javascript:;" title="ä¸æ¶">ä¸æ¶</a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">å·²åç¨</span>');
		$(obj).remove();
		layer.msg('å·²ä¸æ¶!',{icon: 5,time:1000});
	});
}
/*å¯ç¨*/
function member_start(obj,id){
	layer.confirm('ç¡®è®¤å¯ç¨è¯¥ç¨æ·ï¼',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn btn-xs btn-status" onClick="member_stop(this,id)" href="javascript:;" title="ä¸æ¶">ä¸æ¶</a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">å·²å¯ç¨</span>');
		$(obj).remove();
		layer.msg('å·²ä¸æ¶!',{icon: 6,time:1000});
	});
}
	/*ç¨æ·-å é¤*/
function member_del(obj,id){
	layer.confirm('ç¡®è®¤è¦å é¤åï¼',function(index){
		$(obj).parents("tr").remove();
		layer.msg('å·²å é¤!',{icon:1,time:1000});
	});
}
/********************åè¡¨æä½js******************/
$('table th input:checkbox').on('click' , function(){
					var that = this;
					$(this).closest('table').find('tr > td:first-child input:checkbox')
					.each(function(){
						this.checked = that.checked;
						$(this).closest('tr').toggleClass('selected');
					});
						
});
</script>
