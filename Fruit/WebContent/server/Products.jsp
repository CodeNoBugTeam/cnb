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
<!--[if lt IE 9]>
<script src="js/html5shiv.js" type="text/javascript"></script>
<script src="js/respond.min.js"></script>
<script src="js/css3-mediaqueries.js"  type="text/javascript"></script>
  <![endif]-->
<title>äº§ååè¡¨</title>
</head>
<body>
<div class="margin" id="page_style">
<div class="operation clearfix mb15 same_module">
<ul class="choice_search">
      <li class="clearfix col-xs-3 col-lg-3 col-ms-3 "><label class="label_name ">äº§ååç§°ï¼</label><input name="" type="text" class="form-control col-xs-8 col-lg-8 col-ms-8"></li>
      <li class="clearfix col-xs-5 col-lg-5 col-ms-5 "><label class="label_name ">æ·»å æ¶é´ï¼</label> 
      <input class="laydate-icon col-xs-4 col-lg-3 form-control Select_Date" id="start" >
      <span style=" float:left; padding:0px 10px; line-height:32px;">è³</span>
      <input class="laydate-icon col-xs-4 col-lg-3 form-control Select_Date" id="end">
       <button class="btn button_btn bg-deep-blue " onclick="" type="button"><i class="fa  fa-search"></i>&nbsp;æç´¢</button></li>
    </ul>
</div>
<!--åè¡¨å±ç¤º-->
<div class="h_products_list clearfix" id="Sellerber">
  <div class="Sellerber_left menu" id="menuBar">
    <div class="show_btn" id="rightArrow"><span></span></div>
    <div class="side_title"><a title="éè" class="close_btn"><span></span></a></div> 
    <div class="menu_style" id="menu_style">
    <div class="list_content">
     <div class="side_list">
        <div class="column_title"><h4 class="lighter smaller">äº§åç±»ååè¡¨</h4></div>
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
<a href="add_product.html" name="" class="btn button_btn bg-deep-blue" title="æ·»å äº§å"><i class="fa  fa-edit"></i>&nbsp;æ·»å äº§å</a>
<a href="add_product.html" name="" class="btn button_btn bg-deep-blue" title="æ·»å äº§å"><i class="fa  fa-edit"></i>&nbsp;æ·»å åç±»</a>
</span>
<div class="search  clearfix">
 <label class="label_name">ååæç´¢ï¼</label><input name="" type="text"  class="form-control col-xs-5"/><button class="btn button_btn bg-deep-blue " onclick=""  type="button"><i class="fa  fa-search"></i>&nbsp;æç´¢</button>
 <span>æ°éï¼3433ä»¶</span>
</div>
</div>
 <div class="datalist_show">
  <div class="datatable_height confirm">
 <table class="table table_list table_striped table-bordered" id="">
  <thead>
    <th width="25px"><label><input type="checkbox" class="ace"><span class="lbl"></span></label></th>
	<th width="80px">äº§åç¼å·</th>
	<th width="80px">åç±»</th>
	<th width="250px">äº§ååç§°</th>
	<th width="100px">åä»·æ ¼</th>
	<th width="100px">ç°ä»·</th>
	<th width="100px">æå±å°åº/å½å®¶</th>				
	<th width="180px">å å¥æ¶é´</th>
	<th width="80px">å®¡æ ¸ç¶æ</th>
	<th width="70px">ç¶æ</th>                
	<th width="200px">æä½</th>  
  </thead>
  <tbody>
     <tr>
        <td width="25px"><label><input type="checkbox" class="ace" ><span class="lbl"></span></label></td>
        <td width="80px">45631</td>    
        <td width="80px">ææº</td>                
        <td width="250px"><u style="cursor:pointer" class="text-primary cor_bule" onclick="">å°ç±³ Max å¨ç½é é«éç 3GBåå­ 64GB ROM éè² ç§»å¨èéçµä¿¡4GææºY</u></td>
        <td width="100px">5467</td>
        <td width="100px">4525</td> 
        <td width="100px">æ³å½</td>         
        <td width="180px">2014-6-11 11:11:42</td>
        <td class="text-l">éè¿</td>
        <td class="td-status"><span class="label label-success radius">ä¸æ¶</span></td>
        <td class="td-manage">
        <a onClick="member_stop(this,'10001')"  href="javascript:;" title="ä¸æ¶"  class="btn btn-xs btn-status">ä¸æ¶</a> 
        <a title="ç¼è¾" onclick="member_edit('ç¼è¾','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
        <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
       </td>
	  </tr>
	     <tr>
        <td width="25px"><label><input type="checkbox" class="ace" ><span class="lbl"></span></label></td>
        <td width="80px">45631</td>    
        <td width="80px">ææº</td>                
        <td width="250px"><u style="cursor:pointer" class="text-primary cor_bule" onclick="">å°ç±³ Max å¨ç½é é«éç 3GBåå­ 64GB ROM éè² ç§»å¨èéçµä¿¡4GææºY</u></td>
        <td width="100px">5467</td>
        <td width="100px">4525</td> 
        <td width="100px">æ³å½</td>         
        <td width="180px">2014-6-11 11:11:42</td>
        <td class="text-l">éè¿</td>
        <td class="td-status"><span class="label label-success radius">ä¸æ¶</span></td>
        <td class="td-manage">
        <a onClick="member_stop(this,'10001')"  href="javascript:;" title="ä¸æ¶"  class="btn btn-xs btn-status">ä¸æ¶</a> 
        <a title="ç¼è¾" onclick="member_edit('ç¼è¾','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
        <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
       </td>
	  </tr>
	     <tr>
        <td width="25px"><label><input type="checkbox" class="ace" ><span class="lbl"></span></label></td>
        <td width="80px">45631</td>    
        <td width="80px">ææº</td>                
        <td width="250px"><u style="cursor:pointer" class="cor_bule" onclick="">å°ç±³ Max å¨ç½é é«éç 3GBåå­ 64GB ROM éè² ç§»å¨èéçµä¿¡4GææºY</u></td>
        <td width="100px">5467</td>
        <td width="100px">4525</td> 
        <td width="100px">æ³å½</td>         
        <td width="180px">2014-6-11 11:11:42</td>
        <td class="text-l">éè¿</td>
        <td class="td-status"><span class="label label-success radius">ä¸æ¶</span></td>
        <td class="td-manage">
        <a onClick="member_stop(this,'10001')"  href="javascript:;" title="ä¸æ¶"  class="btn btn-xs btn-status">ä¸æ¶</a> 
        <a title="ç¼è¾" onclick="member_edit('ç¼è¾','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
        <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
       </td>
	  </tr>
	     <tr>
        <td width="25px"><label><input type="checkbox" class="ace" ><span class="lbl"></span></label></td>
        <td width="80px">45631</td>    
        <td width="80px">ææº</td>                
        <td width="250px"><u style="cursor:pointer" class="cor_bule" onclick="">å°ç±³ Max å¨ç½é é«éç 3GBåå­ 64GB ROM éè² ç§»å¨èéçµä¿¡4GææºY</u></td>
        <td width="100px">5467</td>
        <td width="100px">4525</td> 
        <td width="100px">æ³å½</td>         
        <td width="180px">2014-6-11 11:11:42</td>
        <td class="text-l">éè¿</td>
        <td class="td-status"><span class="label label-success radius">ä¸æ¶</span></td>
        <td class="td-manage">
        <a onClick="member_stop(this,'10001')"  href="javascript:;" title="ä¸æ¶"  class="btn btn-xs btn-status">ä¸æ¶</a> 
        <a title="ç¼è¾" onclick="member_edit('ç¼è¾','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
        <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
       </td>
	  </tr>
	       <tr>
        <td width="25px"><label><input type="checkbox" class="ace" ><span class="lbl"></span></label></td>
        <td width="80px">45631</td>    
        <td width="80px">ææº</td>                
        <td width="250px"><u style="cursor:pointer" class="cor_bule" onclick="">å°ç±³ Max å¨ç½é é«éç 3GBåå­ 64GB ROM éè² ç§»å¨èéçµä¿¡4GææºY</u></td>
        <td width="100px">5467</td>
        <td width="100px">4525</td> 
        <td width="100px">æ³å½</td>         
        <td width="180px">2014-6-11 11:11:42</td>
        <td class="text-l">éè¿</td>
        <td class="td-status"><span class="label label-success radius">ä¸æ¶</span></td>
        <td class="td-manage">
        <a onClick="member_stop(this,'10001')"  href="javascript:;" title="ä¸æ¶"  class="btn btn-xs btn-status">ä¸æ¶</a> 
        <a title="ç¼è¾" onclick="member_edit('ç¼è¾','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
        <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
       </td>
	  </tr>
	       <tr>
        <td width="25px"><label><input type="checkbox" class="ace" ><span class="lbl"></span></label></td>
        <td width="80px">45631</td>    
        <td width="80px">ææº</td>                
        <td width="250px"><u style="cursor:pointer" class="cor_bule" onclick="">å°ç±³ Max å¨ç½é é«éç 3GBåå­ 64GB ROM éè² ç§»å¨èéçµä¿¡4GææºY</u></td>
        <td width="100px">5467</td>
        <td width="100px">4525</td> 
        <td width="100px">æ³å½</td>         
        <td width="180px">2014-6-11 11:11:42</td>
        <td class="text-l">éè¿</td>
        <td class="td-status"><span class="label label-success radius">ä¸æ¶</span></td>
        <td class="td-manage">
        <a onClick="member_stop(this,'10001')"  href="javascript:;" title="ä¸æ¶"  class="btn btn-xs btn-status">ä¸æ¶</a> 
        <a title="ç¼è¾" onclick="member_edit('ç¼è¾','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
        <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
       </td>
	  </tr>
	       <tr>
        <td width="25px"><label><input type="checkbox" class="ace" ><span class="lbl"></span></label></td>
        <td width="80px">45631</td>    
        <td width="80px">ææº</td>                
        <td width="250px"><u style="cursor:pointer" class="cor_bule" onclick="">å°ç±³ Max å¨ç½é é«éç 3GBåå­ 64GB ROM éè² ç§»å¨èéçµä¿¡4GææºY</u></td>
        <td width="100px">5467</td>
        <td width="100px">4525</td> 
        <td width="100px">æ³å½</td>         
        <td width="180px">2014-6-11 11:11:42</td>
        <td class="text-l">éè¿</td>
        <td class="td-status"><span class="label label-success radius">ä¸æ¶</span></td>
        <td class="td-manage">
        <a onClick="member_stop(this,'10001')"  href="javascript:;" title="ä¸æ¶"  class="btn btn-xs btn-status">ä¸æ¶</a> 
        <a title="ç¼è¾" onclick="member_edit('ç¼è¾','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
        <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
       </td>
	  </tr>     <tr>
        <td width="25px"><label><input type="checkbox" class="ace" ><span class="lbl"></span></label></td>
        <td width="80px">45631</td>    
        <td width="80px">ææº</td>                
        <td width="250px"><u style="cursor:pointer" class="cor_bule" onclick="">å°ç±³ Max å¨ç½é é«éç 3GBåå­ 64GB ROM éè² ç§»å¨èéçµä¿¡4GææºY</u></td>
        <td width="100px">5467</td>
        <td width="100px">4525</td> 
        <td width="100px">æ³å½</td>         
        <td width="180px">2014-6-11 11:11:42</td>
        <td class="text-l">éè¿</td>
        <td class="td-status"><span class="label label-success radius">ä¸æ¶</span></td>
        <td class="td-manage">
        <a onClick="member_stop(this,'10001')"  href="javascript:;" title="ä¸æ¶"  class="btn btn-xs btn-status">ä¸æ¶</a> 
        <a title="ç¼è¾" onclick="member_edit('ç¼è¾','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
        <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
       </td>
	  </tr>     <tr>
        <td width="25px"><label><input type="checkbox" class="ace" ><span class="lbl"></span></label></td>
        <td width="80px">45631</td>    
        <td width="80px">ææº</td>                
        <td width="250px"><u style="cursor:pointer" class="cor_bule" onclick="">å°ç±³ Max å¨ç½é é«éç 3GBåå­ 64GB ROM éè² ç§»å¨èéçµä¿¡4GææºY</u></td>
        <td width="100px">5467</td>
        <td width="100px">4525</td> 
        <td width="100px">æ³å½</td>         
        <td width="180px">2014-6-11 11:11:42</td>
        <td class="text-l">éè¿</td>
        <td class="td-status"><span class="label label-success radius">ä¸æ¶</span></td>
        <td class="td-manage">
        <a onClick="member_stop(this,'10001')"  href="javascript:;" title="ä¸æ¶"  class="btn btn-xs btn-status">ä¸æ¶</a> 
        <a title="ç¼è¾" onclick="member_edit('ç¼è¾','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
        <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
       </td>
	  </tr>     
       <tr>
        <td width="25px"><label><input type="checkbox" class="ace" ><span class="lbl"></span></label></td>
        <td width="80px">45631</td>    
        <td width="80px">ææº</td>                
        <td width="250px"><u style="cursor:pointer" class="cor_bule" onclick="">å°ç±³ Max å¨ç½é é«éç 3GBåå­ 64GB ROM éè² ç§»å¨èéçµä¿¡4GææºY</u></td>
        <td width="100px">5467</td>
        <td width="100px">4525</td> 
        <td width="100px">æ³å½</td>         
        <td width="180px">2014-6-11 11:11:42</td>
        <td class="text-l">éè¿</td>
        <td class="td-status"><span class="label label-success radius">ä¸æ¶</span></td>
        <td class="td-manage">
        <a onClick="member_stop(this,'10001')"  href="javascript:;" title="ä¸æ¶"  class="btn btn-xs btn-status">ä¸æ¶</a> 
        <a title="ç¼è¾" onclick="member_edit('ç¼è¾','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
        <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
       </td>
	  </tr>
     <tr>
        <td width="25px"><label><input type="checkbox" class="ace" ><span class="lbl"></span></label></td>
        <td width="80px">45631</td>    
        <td width="80px">ææº</td>                
        <td width="250px"><u style="cursor:pointer" class="cor_bule" onclick="">å°ç±³ Max å¨ç½é é«éç 3GBåå­ 64GB ROM éè² ç§»å¨èéçµä¿¡4GææºY</u></td>
        <td width="100px">5467</td>
        <td width="100px">4525</td> 
        <td width="100px">æ³å½</td>         
        <td width="180px">2014-6-11 11:11:42</td>
        <td class="text-l">éè¿</td>
        <td class="td-status"><span class="label label-success radius">ä¸æ¶</span></td>
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
/*äº§å-åç¨*/
function member_stop(obj,id){
	layer.confirm('ç¡®è®¤è¦ä¸æ¶è¯¥äº§ååï¼',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn btn-xs " onClick="member_start(this,id)" href="javascript:;" title="ä¸æ¶">ä¸æ¶</a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">å·²ä¸æ¶</span>');
		$(obj).remove();
		layer.msg('å·²ä¸æ¶!',{icon: 5,time:1000});
	});
}
/*äº§å-å¯ç¨*/
function member_start(obj,id){
	layer.confirm('ç¡®è®¤è¦ä¸æ¶æ¹è¯¥äº§ååï¼',function(index){
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
</script>
