<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
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
<title>æ æ é¢ææ¡£</title>
</head>

<body>
<div class="margin" id="page_style">
    <div class="operation clearfix mb15 same_module">
<ul class="choice_search">
      <li class="clearfix col-xs-2 col-lg-3 col-ms-3 "><label class="label_name ">ç¨æ·åï¼</label>
      <input placeholder="ç¨æ·å"  name="" type="text" class="form-control col-xs-8 col-lg-8 col-ms-8">
      </li>
      <li class="clearfix col-xs-2 col-lg-3 col-ms-3"><label class="label_name ">çè¨æ¶é´ï¼</label>
      <input class="inline laydate-icon form-control Select_Date" id="start">
      </li>
      <li class="clearfix col-xs-2 col-lg-3 col-ms-3 ">
       <select name="" class="margin-right l_f select_style"><option  value="1">å·²æµè§</option><option value="2">æªæµè§</option></select>
       <button type="button" class="btn button_btn bg-deep-blue "><i class="icon-search"></i>æ¥è¯¢</button></li>
    </ul>
	</div>
	<div class="h_products_list clearfix " id="Sellerber">
     <div class="padding15 clearfix">
	   <div class="operation clearfix mb15  searchs_style">
       <span class="l_f">
        <a href="Add_Brand.html"  title="æ·»å åç" class="btn button_btn bg-deep-blue"><i class="fa fa-plus"></i>æ¹éåå¤</a>
        <a href="javascript:ovid()" class="btn  button_btn btn-danger"><i class="fa fa-trash"></i>æ¹éå é¤</a>
        <a href="javascript:ovid()" class="btn  button_btn bg-yellow"><i class="fa fa-commenting"></i>å·²åå¤</a>
        <a href="javascript:ovid()" class="btn  button_btn bg-green "><i class="fa  fa-comments-o"></i>æªåå¤</a>
       </span>
       <span class="r_f">å±ï¼<b>234</b>æ¡</span>
     </div>
     <div class=" datalist_show">
       <div class="datatable_height confirm">
          <table class="table table_list table_striped table-bordered" id="sample-table">
              <thead>
		 <tr>
          <th width="25"><label><input type="checkbox" class="ace"><span class="lbl"></span></label></th>
          <th width="150px">ç¨æ·å</th>
          <th width="">çè¨åå®¹</th>
          <th width="200px">æ¶é´</th>
          <th width="70">ç¶æ</th> 
          <th width="120">æ¯å¦åå¤</th>              
          <th width="250">æä½</th>
          </tr>
      </thead>
	<tbody>
		<tr>
          <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
          <td><u style="cursor:pointer"  class="text-primary" onclick="member_show('å¼ å°æ³','member-show.html','1031','500','400')">å¼ å°æ³</u></td>
          <td class="text-l">
          <a href="javascript:;" onclick="Guestbook_iew('12')">âç¬¬äºå±ä¸­å½æ é¡æ°´èæ¡å¼æèâåæ¶å¼å¹ï¼ä¸ºæä¸ä¸ªæçèæ¡å­£å¨é¢å¯å¨ãå¼æ­¤äº¬ä¸â618åè´¨çæ¬¢èâä¹éï¼ä¸­å½ç¹äº§æ é¡é¦ééä¸çº¿618ä»½...</a></td>
          <td>2016-6-11 11:11:42</td>
          <td class="td-status"><span class="label label-success radius">å·²æµè§</span></td>
          <td>æªåå¤</td>
          <td class="td-manage">
           <a title="ç¼è¾" onclick="member_edit('ç¼è¾','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >åå¤</a> 
           <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
          </td>
        </tr>
        	<tr>
          <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
          <td><u style="cursor:pointer"  class="text-primary" onclick="member_show('å¼ å°æ³','member-show.html','1031','500','400')">å¼ å°æ³</u></td>
          <td class="text-l">
          <a href="javascript:;" onclick="Guestbook_iew('12')">âç¬¬äºå±ä¸­å½æ é¡æ°´èæ¡å¼æèâåæ¶å¼å¹ï¼ä¸ºæä¸ä¸ªæçèæ¡å­£å¨é¢å¯å¨ãå¼æ­¤äº¬ä¸â618åè´¨çæ¬¢èâä¹éï¼ä¸­å½ç¹äº§æ é¡é¦ééä¸çº¿618ä»½...</a></td>
          <td>2016-6-11 11:11:42</td>
          <td class="td-status"><span class="label label-success radius">å·²æµè§</span></td>
          <td>æªåå¤</td>
          <td class="td-manage">
           <a title="ç¼è¾" onclick="member_edit('ç¼è¾','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >åå¤</a> 
           <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
          </td>
        </tr>
        	<tr>
          <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
          <td><u style="cursor:pointer"  class="text-primary" onclick="member_show('å¼ å°æ³','member-show.html','1031','500','400')">å¼ å°æ³</u></td>
          <td class="text-l">
          <a href="javascript:;" onclick="Guestbook_iew('12')">âç¬¬äºå±ä¸­å½æ é¡æ°´èæ¡å¼æèâåæ¶å¼å¹ï¼ä¸ºæä¸ä¸ªæçèæ¡å­£å¨é¢å¯å¨ãå¼æ­¤äº¬ä¸â618åè´¨çæ¬¢èâä¹éï¼ä¸­å½ç¹äº§æ é¡é¦ééä¸çº¿618ä»½...</a></td>
          <td>2016-6-11 11:11:42</td>
          <td class="td-status"><span class="label label-success radius">å·²æµè§</span></td>
          <td>æªåå¤</td>
          <td class="td-manage">
           <a title="ç¼è¾" onclick="member_edit('ç¼è¾','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >åå¤</a> 
           <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
          </td>
        </tr>
        	<tr>
          <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
          <td><u style="cursor:pointer"  class="text-primary" onclick="member_show('å¼ å°æ³','member-show.html','1031','500','400')">å¼ å°æ³</u></td>
          <td class="text-l">
          <a href="javascript:;" onclick="Guestbook_iew('12')">âç¬¬äºå±ä¸­å½æ é¡æ°´èæ¡å¼æèâåæ¶å¼å¹ï¼ä¸ºæä¸ä¸ªæçèæ¡å­£å¨é¢å¯å¨ãå¼æ­¤äº¬ä¸â618åè´¨çæ¬¢èâä¹éï¼ä¸­å½ç¹äº§æ é¡é¦ééä¸çº¿618ä»½...</a></td>
          <td>2016-6-11 11:11:42</td>
          <td class="td-status"><span class="label label-success radius">å·²æµè§</span></td>
          <td>æªåå¤</td>
          <td class="td-manage">
           <a title="ç¼è¾" onclick="member_edit('ç¼è¾','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >åå¤</a> 
           <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
          </td>
        </tr>
        	<tr>
          <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
          <td><u style="cursor:pointer"  class="text-primary" onclick="member_show('å¼ å°æ³','member-show.html','1031','500','400')">å¼ å°æ³</u></td>
          <td class="text-l">
          <a href="javascript:;" onclick="Guestbook_iew('12')">âç¬¬äºå±ä¸­å½æ é¡æ°´èæ¡å¼æèâåæ¶å¼å¹ï¼ä¸ºæä¸ä¸ªæçèæ¡å­£å¨é¢å¯å¨ãå¼æ­¤äº¬ä¸â618åè´¨çæ¬¢èâä¹éï¼ä¸­å½ç¹äº§æ é¡é¦ééä¸çº¿618ä»½...</a></td>
          <td>2016-6-11 11:11:42</td>
          <td class="td-status"><span class="label label-success radius">å·²æµè§</span></td>
          <td>å·²åå¤</td>
          <td class="td-manage">
           <a title="ç¼è¾" onclick="member_edit('ç¼è¾','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >åå¤</a> 
           <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
          </td>
        </tr>
        	<tr>
          <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
          <td><u style="cursor:pointer"  class="text-primary" onclick="member_show('å¼ å°æ³','member-show.html','1031','500','400')">å¼ å°æ³</u></td>
          <td class="text-l">
          <a href="javascript:;" onclick="Guestbook_iew('12')">âç¬¬äºå±ä¸­å½æ é¡æ°´èæ¡å¼æèâåæ¶å¼å¹ï¼ä¸ºæä¸ä¸ªæçèæ¡å­£å¨é¢å¯å¨ãå¼æ­¤äº¬ä¸â618åè´¨çæ¬¢èâä¹éï¼ä¸­å½ç¹äº§æ é¡é¦ééä¸çº¿618ä»½...</a></td>
          <td>2016-6-11 11:11:42</td>
          <td class="td-status"><span class="label label-success radius">å·²æµè§</span></td>
          <td>å·²åå¤</td>
          <td class="td-manage">
           <a title="ç¼è¾" onclick="member_edit('ç¼è¾','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >åå¤</a> 
           <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
          </td>
        </tr>
        	<tr>
          <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
          <td><u style="cursor:pointer"  class="text-primary" onclick="member_show('å¼ å°æ³','member-show.html','1031','500','400')">å¼ å°æ³</u></td>
          <td class="text-l">
          <a href="javascript:;" onclick="Guestbook_iew('12')">âç¬¬äºå±ä¸­å½æ é¡æ°´èæ¡å¼æèâåæ¶å¼å¹ï¼ä¸ºæä¸ä¸ªæçèæ¡å­£å¨é¢å¯å¨ãå¼æ­¤äº¬ä¸â618åè´¨çæ¬¢èâä¹éï¼ä¸­å½ç¹äº§æ é¡é¦ééä¸çº¿618ä»½...</a></td>
          <td>2016-6-11 11:11:42</td>
          <td class="td-status"><span class="label label-defaunt radius">æªæµè§</span></td>
          <td>æªåå¤</td>
          <td class="td-manage">
           <a title="ç¼è¾" onclick="member_edit('ç¼è¾','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >åå¤</a> 
           <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
          </td>
        </tr>
         	<tr>
          <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
          <td><u style="cursor:pointer"  class="text-primary" onclick="member_show('å¼ å°æ³','member-show.html','1031','500','400')">å¼ å°æ³</u></td>
          <td class="text-l">
          <a href="javascript:;" onclick="Guestbook_iew('12')">âç¬¬äºå±ä¸­å½æ é¡æ°´èæ¡å¼æèâåæ¶å¼å¹ï¼ä¸ºæä¸ä¸ªæçèæ¡å­£å¨é¢å¯å¨ãå¼æ­¤äº¬ä¸â618åè´¨çæ¬¢èâä¹éï¼ä¸­å½ç¹äº§æ é¡é¦ééä¸çº¿618ä»½...</a></td>
          <td>2016-6-11 11:11:42</td>
          <td class="td-status"><span class="label label-defaunt radius">æªæµè§</span></td>
          <td>æªåå¤</td>
          <td class="td-manage">
           <a title="ç¼è¾" onclick="member_edit('ç¼è¾','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >åå¤</a> 
           <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
          </td>
        </tr>
         	<tr>
          <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
          <td><u style="cursor:pointer"  class="text-primary" onclick="member_show('å¼ å°æ³','member-show.html','1031','500','400')">å¼ å°æ³</u></td>
          <td class="text-l">
          <a href="javascript:;" onclick="Guestbook_iew('12')">âç¬¬äºå±ä¸­å½æ é¡æ°´èæ¡å¼æèâåæ¶å¼å¹ï¼ä¸ºæä¸ä¸ªæçèæ¡å­£å¨é¢å¯å¨ãå¼æ­¤äº¬ä¸â618åè´¨çæ¬¢èâä¹éï¼ä¸­å½ç¹äº§æ é¡é¦ééä¸çº¿618ä»½...</a></td>
          <td>2016-6-11 11:11:42</td>
          <td class="td-status"><span class="label label-defaunt radius">æªæµè§</span></td>
          <td>æªåå¤</td>
          <td class="td-manage">
           <a title="ç¼è¾" onclick="member_edit('ç¼è¾','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >åå¤</a> 
           <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
          </td>
        </tr>
         	<tr>
          <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
          <td><u style="cursor:pointer"  class="text-primary" onclick="member_show('å¼ å°æ³','member-show.html','1031','500','400')">å¼ å°æ³</u></td>
          <td class="text-l">
          <a href="javascript:;" onclick="Guestbook_iew('12')">âç¬¬äºå±ä¸­å½æ é¡æ°´èæ¡å¼æèâåæ¶å¼å¹ï¼ä¸ºæä¸ä¸ªæçèæ¡å­£å¨é¢å¯å¨ãå¼æ­¤äº¬ä¸â618åè´¨çæ¬¢èâä¹éï¼ä¸­å½ç¹äº§æ é¡é¦ééä¸çº¿618ä»½...</a></td>
          <td>2016-6-11 11:11:42</td>
          <td class="td-status"><span class="label label-defaunt radius">æªæµè§</span></td>
          <td>æªåå¤</td>
          <td class="td-manage">
           <a title="ç¼è¾" onclick="member_edit('ç¼è¾','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >åå¤</a> 
           <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
          </td>
        </tr>
         	<tr>
          <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
          <td><u style="cursor:pointer"  class="text-primary" onclick="member_show('å¼ å°æ³','member-show.html','1031','500','400')">å¼ å°æ³</u></td>
          <td class="text-l">
          <a href="javascript:;" onclick="Guestbook_iew('12')">âç¬¬äºå±ä¸­å½æ é¡æ°´èæ¡å¼æèâåæ¶å¼å¹ï¼ä¸ºæä¸ä¸ªæçèæ¡å­£å¨é¢å¯å¨ãå¼æ­¤äº¬ä¸â618åè´¨çæ¬¢èâä¹éï¼ä¸­å½ç¹äº§æ é¡é¦ééä¸çº¿618ä»½...</a></td>
          <td>2016-6-11 11:11:42</td>
          <td class="td-status"><span class="label label-defaunt radius">æªæµè§</span></td>
          <td>æªåå¤</td>
          <td class="td-manage">
           <a title="ç¼è¾" onclick="member_edit('ç¼è¾','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >åå¤</a> 
           <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
          </td>
        </tr>
         	<tr>
          <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
          <td><u style="cursor:pointer"  class="text-primary" onclick="member_show('å¼ å°æ³','member-show.html','1031','500','400')">å¼ å°æ³</u></td>
          <td class="text-l">
          <a href="javascript:;" onclick="Guestbook_iew('12')">âç¬¬äºå±ä¸­å½æ é¡æ°´èæ¡å¼æèâåæ¶å¼å¹ï¼ä¸ºæä¸ä¸ªæçèæ¡å­£å¨é¢å¯å¨ãå¼æ­¤äº¬ä¸â618åè´¨çæ¬¢èâä¹éï¼ä¸­å½ç¹äº§æ é¡é¦ééä¸çº¿618ä»½...</a></td>
          <td>2016-6-11 11:11:42</td>
          <td class="td-status"><span class="label label-defaunt radius">æªæµè§</span></td>
          <td>æªåå¤</td>
          <td class="td-manage">
           <a title="ç¼è¾" onclick="member_edit('ç¼è¾','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >åå¤</a> 
           <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
          </td>
        </tr>
         	<tr>
          <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
          <td><u style="cursor:pointer"  class="text-primary" onclick="member_show('å¼ å°æ³','member-show.html','1031','500','400')">å¼ å°æ³</u></td>
          <td class="text-l">
          <a href="javascript:;" onclick="Guestbook_iew('12')">âç¬¬äºå±ä¸­å½æ é¡æ°´èæ¡å¼æèâåæ¶å¼å¹ï¼ä¸ºæä¸ä¸ªæçèæ¡å­£å¨é¢å¯å¨ãå¼æ­¤äº¬ä¸â618åè´¨çæ¬¢èâä¹éï¼ä¸­å½ç¹äº§æ é¡é¦ééä¸çº¿618ä»½...</a></td>
          <td>2016-6-11 11:11:42</td>
          <td class="td-status"><span class="label label-defaunt radius">æªæµè§</span></td>
          <td>æªåå¤</td>
          <td class="td-manage">
           <a title="ç¼è¾" onclick="member_edit('ç¼è¾','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >åå¤</a> 
           <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
          </td>
        </tr>
         	<tr>
          <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
          <td><u style="cursor:pointer"  class="text-primary" onclick="member_show('å¼ å°æ³','member-show.html','1031','500','400')">å¼ å°æ³</u></td>
          <td class="text-l">
          <a href="javascript:;" onclick="Guestbook_iew('12')">âç¬¬äºå±ä¸­å½æ é¡æ°´èæ¡å¼æèâåæ¶å¼å¹ï¼ä¸ºæä¸ä¸ªæçèæ¡å­£å¨é¢å¯å¨ãå¼æ­¤äº¬ä¸â618åè´¨çæ¬¢èâä¹éï¼ä¸­å½ç¹äº§æ é¡é¦ééä¸çº¿618ä»½...</a></td>
          <td>2016-6-11 11:11:42</td>
          <td class="td-status"><span class="label label-defaunt radius">æªæµè§</span></td>
          <td>æªåå¤</td>
          <td class="td-manage">
           <a title="ç¼è¾" onclick="member_edit('ç¼è¾','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >åå¤</a> 
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
<!--çè¨è¯¦ç»-->
<div id="Guestbook" style="display:none">
 <div class="content_style padding15">
  <div class="form-group"><label class="col-sm-2 control-label no-padding-right" for="form-field-1">çè¨ç¨æ· </label>
       <div class="col-sm-9">è¡æµ·å¤©å </div>
	</div>
   <div class="form-group"><label class="col-sm-2 control-label no-padding-right" for="form-field-1"> çè¨åå®¹ </label>
       <div class="col-sm-9">ä¸å¹´åçªï¼ä¸èµ·æ²æµ´äºä¸çéè²çé³åï¼ä¸èµ·åº¦è¿äºä¸åä¸ªæ¥å¤ï¼æä»¬å±åè°±åäºå¤å°åè°çç¯ç« ?æ¿éå»çé£äºéªäº®çæ¥å­ï¼é½åä½ç¾å¥½çè®°å¿ï¼æ°¸è¿çå¨å¿æ¿ãè®¤è¯æ¨ï¼ä¸è®ºæ¯çå½ä¸­çä¸æ®µææ²ï¼è¿æ¯æ°¸ä¹çç¥å·²ï¼æé½ä¼çæï¼å½æç²å¦æèå»ï¼ä¸åæ¥æéæ¥çæ¶åï¼è¿æ®µæå¾ä¼æ»æ¶¦æçå½çæ¯ä¸å»ãå¨æ­¤æåªæ³è¯´ï¼ææ¨çå¥½!æ è®ºä½ èº«å¨ä½æ¹ï¼æçç¥ç¦æ°¸è¿å¨æ¨èº«è¾¹!</div>
	</div>
    <div class="form-group"><label class="col-sm-2 control-label no-padding-right" for="form-field-1">æ¯å¦åå¤ </label>
       <div class="col-sm-9">
       <label><input name="checkbox" type="checkbox" class="ace" id="checkbox"><span class="lbl"> åå¤</span></label>
       <div class="Reply_style">
          <textarea name="æéæè¿°" class="form-control" id="form_textarea" placeholder="" onkeyup="checkLength(this);"></textarea>
          <span class="wordage">å©ä½å­æ°ï¼<span id="sy" style="color:Red;">200</span>å­</span>
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
		float : 'left',//æ¾ç¤ºæ¹å
		color_btn:'.skin_select',//æé®åç§°
		Sellerber_menu:'.list_content',//åå®¹é¡µ
		page_content:'.list_show',//åå®¹
		datalist:".datatable_height",//æ°æ®åè¡¨é«åº¦åå¼
		header:65,//é¡¶é¨é«åº¦
		mwidth:350,//å®½åº¦èªå®ä¹
		minStatue:true,//éèææ¾ç¤ºæ ç®
		
	});
});
	 /*ç¨æ·-æ¥ç*/
function member_show(title,url,id,w,h){
	layer_show(title,url+'#?='+id,w,h);
}
/*çè¨-å é¤*/
function member_del(obj,id){
	layer.confirm('ç¡®è®¤è¦å é¤åï¼',function(index){
		$(obj).parents("tr").remove();
		layer.msg('å·²å é¤!',{icon:1,time:1000});
	});
}

/*checkboxæ¿åäºä»¶*/
$('#checkbox').on('click',function(){
	if($('input[name="checkbox"]').prop("checked")){
		 $('.Reply_style').css('display','block');
		}
	else{
		
		 $('.Reply_style').css('display','none');
		}	
	})
/*çè¨æ¥ç*/
function Guestbook_iew(id){
	var index = layer.open({
        type: 1,
        title: 'çè¨ä¿¡æ¯',
		maxmin: true, 
		shadeClose:false,
        area : ['600px' , ''],
        content:$('#Guestbook'),
		btn:['ç¡®å®','åæ¶'],
		yes: function(index, layero){		 
		  if($('input[name="checkbox"]').prop("checked")){			 
			 if($('.form-control').val()==""){
				layer.alert('åå¤åå®¹ä¸è½ä¸ºç©ºï¼',{
               title: 'æç¤ºæ¡',				
			  icon:0,		
			  }) 
			 }else{			
			      layer.alert('ç¡®å®åå¤è¯¥åå®¹ï¼',{
				   title: 'æç¤ºæ¡',				
				   icon:0,	
				   btn:['ç¡®å®','åæ¶'],	
				   yes: function(index){					   
					     layer.closeAll();
					   }
				  }); 		  
		   }			
	      }else{			
			 layer.alert('æ¯å¦è¦åæ¶åå¤ï¼',{
               title: 'æç¤ºæ¡',				
			icon:0,		
			  }); 
			  layer.close(index);      		  
		  }
	   }
	})	
};
	/*å­æ°éå¶*/
function checkLength(which) {
	var maxChars = 200; //
	if(which.value.length > maxChars){
	   layer.open({
	   icon:2,
	   title:'æç¤ºæ¡',
	   content:'æ¨è¾å¥çå­æ°è¶è¿éå¶!',	
    });
		// è¶è¿éå¶çå­æ°äºå°±å° ææ¬æ¡ä¸­çåå®¹æè§å®çå­æ° æªå
		which.value = which.value.substring(0,maxChars);
		return false;
	}else{
		var curr = maxChars - which.value.length; //250 åå» å½åè¾å¥ç
		document.getElementById("sy").innerHTML = curr.toString();
		return true;
	}
};
</script>
