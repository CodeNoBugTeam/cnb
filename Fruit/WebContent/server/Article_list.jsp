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
<script src="js/jquery.dataTables.min.js"></script>
<script src="js/jquery.dataTables.bootstrap.js"></script>
<script src="js/layer/layer.js" type="text/javascript"></script>
<script src="js/laydate/laydate.js" type="text/javascript"></script>
<script type="text/javascript" src="js/proTree.js" ></script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js" type="text/javascript"></script>
<script src="js/respond.min.js"></script>
<script src="js/css3-mediaqueries.js"  type="text/javascript"></script>
  <![endif]-->
<title>æç« åè¡¨</title>
</head>
<body>
<div class="margin" id="page_style">
<!--åè¡¨å±ç¤º-->
<div class="h_products_list clearfix" id="Sellerber">
  <div class="Sellerber_left menu" id="menuBar">
    <div class="show_btn" id="rightArrow"><span></span></div>
    <div class="side_title"><a title="éè" class="close_btn"><span></span></a></div>
   
    <div class="menu_style" id="menu_style">
    <div class="list_content">
     <div class="side_list">
        <div class="column_title"><h4 class="lighter smaller">æç« åç±»</h4></div>
       <div class="st_tree_style tree">
      </div>
    </div>
  </div>
 </div>
</div>
<div class="list_Exhibition list_show padding15">
<div class="operation clearfix mb15  searchs_style">
<button class="btn button_btn btn-danger" type="button" onclick=""><i class="fa fa-trash-o"></i>&nbsp;å é¤</button>
<span class="submenu">
<a href="add_Article.html" name="" class="btn button_btn bg-deep-blue" title="æ·»å äº§å"><i class="fa  fa-edit"></i>&nbsp;æ·»å æç« </a>
<a href="add_product.html" name="" class="btn button_btn bg-deep-blue" title="æ·»å äº§å"><i class="fa  fa-edit"></i>&nbsp;æ·»å åç±»</a>
</span>
<div class="search  clearfix">
 <label class="label_name">æç´¢ï¼</label><input name="" type="text"  class="form-control col-xs-5"/><button class="btn button_btn bg-deep-blue " onclick=""  type="button"><i class="fa  fa-search"></i>&nbsp;æç´¢</button>
 <span>æ°éï¼3433ä»¶</span>
</div>
</div>
 <div class=" datalist_show">
  <div class="datatable_height confirm">
 <table class="table table_list table_striped table-bordered" id="">
    <thead>
		 <tr>
				<th width="25"><label><input type="checkbox" class="ace"><span class="lbl"></span></label></th>
                <th width="100">æå±åç±»</th>
                <th  width="80px">æåº</th>
				<th width="220px">æ é¢</th>
				<th width="">ç®ä»</th>
				<th width="150px">æ·»å æ¶é´</th>
                <th width="80px">ç¶æ</th>                
				<th width="250px">æä½</th>
			</tr>
		</thead>
        <tbody>
         <tr>
          <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
          <td>å¸®å©ä¸­å¿</td>
          <td>2</td>
          <td> è®¢åå·²æäº¤æåï¼å¦ä½ä»æ¬¾ï¼</td>
          <td class="displayPart" displayLength="60">ä»æ¬¾æ¹å¼åä¸ºä»¥ä¸å ç§ï¼ï¼æ³¨ï¼åæ¬¾è®¢åè¯·æ¨å¨è®¢åæäº¤å24å°æ¶åå®ææ¯ä»ï¼ å¦åè®¢åä¼èªå¨åæ¶ï¼</td>
          <td>2016-7-25 12:34</td>
          <td class="td-status">å¾åå¸</td>
          <td class="td-manage">
              <a onClick="member_stop(this,'10001')"  href="javascript:;" title="åå¸"  class="btn btn-xs btn-status">åå¸</a> 
              <a title="ç¼è¾" onclick="member_edit('ç¼è¾','add_Article.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
            <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
          </td>
         </tr>
         <tr>
          <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
          <td>å¸®å©ä¸­å¿</td>
          <td>3</td>
          <td> ææå¨çå°åºæ¯æè´§å°ä»æ¬¾åï¼</td>
          <td class="displayPart" displayLength="60">ä»æ¬¾æ¹å¼åä¸ºä»¥ä¸å ç§ï¼ï¼æ³¨ï¼åæ¬¾è®¢åè¯·æ¨å¨è®¢åæäº¤å24å°æ¶åå®ææ¯ä»ï¼ å¦åè®¢åä¼èªå¨åæ¶ï¼</td>
          <td>2016-7-25 12:34</td>
          <td class="td-status"><span class="label label-success radius">å·²åå¸</span></td>
          <td class="td-manage">   
                <a title="ç¼è¾" onclick="member_edit('ç¼è¾','add_Article.html','4','','510')" href="add_Article.html"  class="btn btn-xs btn-info" >ç¼è¾</a> 
            <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
          </td>
         </tr>
         <tr>
          <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
          <td>å¸®å©ä¸­å¿</td>
          <td>1</td>
          <td> æ¯ä»æ¹å¼æåªäºï¼å¦ä½æ¯ä»ï¼</td>
          <td class="displayPart" displayLength="60">ä»æ¬¾æ¹å¼åä¸ºä»¥ä¸å ç§ï¼ï¼æ³¨ï¼åæ¬¾è®¢åè¯·æ¨å¨è®¢åæäº¤å24å°æ¶åå®ææ¯ä»ï¼ å¦åè®¢åä¼èªå¨åæ¶ï¼</td>
          <td>2016-7-25 12:34</td>
          <td class="td-status">å¾åå¸</td>
          <td class="td-manage">
            <a onClick="member_stop(this,'10001')"  href="javascript:;" title="åå¸"  class="btn btn-xs btn-status">åå¸</a>    
           <a title="ç¼è¾" onclick="member_edit('ç¼è¾','add_Article.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
            <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
          </td>
         </tr>
            <tr>
          <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
          <td>å¸®å©ä¸­å¿</td>
          <td>3</td>
          <td> ææå¨çå°åºæ¯æè´§å°ä»æ¬¾åï¼</td>
          <td class="displayPart" displayLength="60">ä»æ¬¾æ¹å¼åä¸ºä»¥ä¸å ç§ï¼ï¼æ³¨ï¼åæ¬¾è®¢åè¯·æ¨å¨è®¢åæäº¤å24å°æ¶åå®ææ¯ä»ï¼ å¦åè®¢åä¼èªå¨åæ¶ï¼</td>
          <td>2016-7-25 12:34</td>
          <td class="td-status"><span class="label label-success radius">å·²åå¸</span></td>
          <td class="td-manage">   
                <a title="ç¼è¾" onclick="member_edit('ç¼è¾','add_Article.html','4','','510')" href="add_Article.html"  class="btn btn-xs btn-info" >ç¼è¾</a> 
            <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
          </td>
         </tr>
            <tr>
          <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
          <td>å¸®å©ä¸­å¿</td>
          <td>3</td>
          <td> ææå¨çå°åºæ¯æè´§å°ä»æ¬¾åï¼</td>
          <td class="displayPart" displayLength="60">ä»æ¬¾æ¹å¼åä¸ºä»¥ä¸å ç§ï¼ï¼æ³¨ï¼åæ¬¾è®¢åè¯·æ¨å¨è®¢åæäº¤å24å°æ¶åå®ææ¯ä»ï¼ å¦åè®¢åä¼èªå¨åæ¶ï¼</td>
          <td>2016-7-25 12:34</td>
          <td class="td-status"><span class="label label-success radius">å·²åå¸</span></td>
          <td class="td-manage">   
                <a title="ç¼è¾" onclick="member_edit('ç¼è¾','add_Article.html','4','','510')" href="add_Article.html"  class="btn btn-xs btn-info" >ç¼è¾</a> 
            <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
          </td>
         </tr>
            <tr>
          <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
          <td>å¸¸è§é®é¢</td>
          <td>3</td>
          <td> ææå¨çå°åºæ¯æè´§å°ä»æ¬¾åï¼</td>
          <td class="displayPart" displayLength="60">ä»æ¬¾æ¹å¼åä¸ºä»¥ä¸å ç§ï¼ï¼æ³¨ï¼åæ¬¾è®¢åè¯·æ¨å¨è®¢åæäº¤å24å°æ¶åå®ææ¯ä»ï¼ å¦åè®¢åä¼èªå¨åæ¶ï¼</td>
          <td>2016-7-25 12:34</td>
          <td class="td-status"><span class="label label-success radius">å·²åå¸</span></td>
          <td class="td-manage">   
                <a title="ç¼è¾" onclick="member_edit('ç¼è¾','add_Article.html','4','','510')" href="add_Article.html"  class="btn btn-xs btn-info" >ç¼è¾</a> 
            <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
          </td>
         </tr>
            <tr>
          <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
          <td>å¸¸è§é®é¢</td>
          <td>3</td>
          <td> ææå¨çå°åºæ¯æè´§å°ä»æ¬¾åï¼</td>
          <td class="displayPart" displayLength="60">ä»æ¬¾æ¹å¼åä¸ºä»¥ä¸å ç§ï¼ï¼æ³¨ï¼åæ¬¾è®¢åè¯·æ¨å¨è®¢åæäº¤å24å°æ¶åå®ææ¯ä»ï¼ å¦åè®¢åä¼èªå¨åæ¶ï¼</td>
          <td>2016-7-25 12:34</td>
          <td class="td-status"><span class="label label-success radius">å·²åå¸</span></td>
          <td class="td-manage">   
                <a title="ç¼è¾" onclick="member_edit('ç¼è¾','add_Article.html','4','','510')" href="add_Article.html"  class="btn btn-xs btn-info" >ç¼è¾</a> 
            <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
          </td>
         </tr>
           <tr>
          <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
          <td>å¸®å©ä¸­å¿</td>
          <td>2</td>
          <td> è®¢åå·²æäº¤æåï¼å¦ä½ä»æ¬¾ï¼</td>
          <td class="displayPart" displayLength="60">ä»æ¬¾æ¹å¼åä¸ºä»¥ä¸å ç§ï¼ï¼æ³¨ï¼åæ¬¾è®¢åè¯·æ¨å¨è®¢åæäº¤å24å°æ¶åå®ææ¯ä»ï¼ å¦åè®¢åä¼èªå¨åæ¶ï¼</td>
          <td>2016-7-25 12:34</td>
          <td class="td-status">å¾åå¸</td>
          <td class="td-manage">
              <a onClick="member_stop(this,'10001')"  href="javascript:;" title="åå¸"  class="btn btn-xs btn-status">åå¸</a> 
              <a title="ç¼è¾" onclick="member_edit('ç¼è¾','add_Article.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
            <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
          </td>
         </tr>
           <tr>
          <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
          <td>å¸®å©ä¸­å¿</td>
          <td>2</td>
          <td> è®¢åå·²æäº¤æåï¼å¦ä½ä»æ¬¾ï¼</td>
          <td class="displayPart" displayLength="60">ä»æ¬¾æ¹å¼åä¸ºä»¥ä¸å ç§ï¼ï¼æ³¨ï¼åæ¬¾è®¢åè¯·æ¨å¨è®¢åæäº¤å24å°æ¶åå®ææ¯ä»ï¼ å¦åè®¢åä¼èªå¨åæ¶ï¼</td>
          <td>2016-7-25 12:34</td>
          <td class="td-status">å¾åå¸</td>
          <td class="td-manage">
              <a onClick="member_stop(this,'10001')"  href="javascript:;" title="åå¸"  class="btn btn-xs btn-status">åå¸</a> 
              <a title="ç¼è¾" onclick="member_edit('ç¼è¾','add_Article.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
            <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
          </td>
         </tr>
           <tr>
          <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
          <td>å¸®å©ä¸­å¿</td>
          <td>2</td>
          <td> è®¢åå·²æäº¤æåï¼å¦ä½ä»æ¬¾ï¼</td>
          <td class="displayPart" displayLength="60">ä»æ¬¾æ¹å¼åä¸ºä»¥ä¸å ç§ï¼ï¼æ³¨ï¼åæ¬¾è®¢åè¯·æ¨å¨è®¢åæäº¤å24å°æ¶åå®ææ¯ä»ï¼ å¦åè®¢åä¼èªå¨åæ¶ï¼</td>
          <td>2016-7-25 12:34</td>
          <td class="td-status">å¾åå¸</td>
          <td class="td-manage">
              <a onClick="member_stop(this,'10001')"  href="javascript:;" title="åå¸"  class="btn btn-xs btn-status">åå¸</a> 
              <a title="ç¼è¾" onclick="member_edit('ç¼è¾','add_Article.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
            <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
          </td>
         </tr>
           <tr>
          <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
          <td>å¸®å©ä¸­å¿</td>
          <td>2</td>
          <td> è®¢åå·²æäº¤æåï¼å¦ä½ä»æ¬¾ï¼</td>
          <td class="displayPart" displayLength="60">ä»æ¬¾æ¹å¼åä¸ºä»¥ä¸å ç§ï¼ï¼æ³¨ï¼åæ¬¾è®¢åè¯·æ¨å¨è®¢åæäº¤å24å°æ¶åå®ææ¯ä»ï¼ å¦åè®¢åä¼èªå¨åæ¶ï¼</td>
          <td>2016-7-25 12:34</td>
          <td class="td-status">å¾åå¸</td>
          <td class="td-manage">
              <a onClick="member_stop(this,'10001')"  href="javascript:;" title="åå¸"  class="btn btn-xs btn-status">åå¸</a> 
              <a title="ç¼è¾" onclick="member_edit('ç¼è¾','add_Article.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
            <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
          </td>
         </tr>
           <tr>
          <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
          <td>å¸®å©ä¸­å¿</td>
          <td>2</td>
          <td> è®¢åå·²æäº¤æåï¼å¦ä½ä»æ¬¾ï¼</td>
          <td class="displayPart" displayLength="60">ä»æ¬¾æ¹å¼åä¸ºä»¥ä¸å ç§ï¼ï¼æ³¨ï¼åæ¬¾è®¢åè¯·æ¨å¨è®¢åæäº¤å24å°æ¶åå®ææ¯ä»ï¼ å¦åè®¢åä¼èªå¨åæ¶ï¼</td>
          <td>2016-7-25 12:34</td>
          <td class="td-status">å¾åå¸</td>
          <td class="td-manage">
              <a onClick="member_stop(this,'10001')"  href="javascript:;" title="åå¸"  class="btn btn-xs btn-status">åå¸</a> 
              <a title="ç¼è¾" onclick="member_edit('ç¼è¾','add_Article.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
            <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
          </td>
         </tr>
           <tr>
          <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
          <td>å¸®å©ä¸­å¿</td>
          <td>2</td>
          <td> è®¢åå·²æäº¤æåï¼å¦ä½ä»æ¬¾ï¼</td>
          <td class="displayPart" displayLength="60">ä»æ¬¾æ¹å¼åä¸ºä»¥ä¸å ç§ï¼ï¼æ³¨ï¼åæ¬¾è®¢åè¯·æ¨å¨è®¢åæäº¤å24å°æ¶åå®ææ¯ä»ï¼ å¦åè®¢åä¼èªå¨åæ¶ï¼</td>
          <td>2016-7-25 12:34</td>
          <td class="td-status">å¾åå¸</td>
          <td class="td-manage">
              <a onClick="member_stop(this,'10001')"  href="javascript:;" title="åå¸"  class="btn btn-xs btn-status">åå¸</a> 
              <a title="ç¼è¾" onclick="member_edit('ç¼è¾','add_Article.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
            <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
          </td>
         </tr>
           <tr>
          <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
          <td>å¸®å©ä¸­å¿</td>
          <td>2</td>
          <td> è®¢åå·²æäº¤æåï¼å¦ä½ä»æ¬¾ï¼</td>
          <td class="displayPart" displayLength="60">ä»æ¬¾æ¹å¼åä¸ºä»¥ä¸å ç§ï¼ï¼æ³¨ï¼åæ¬¾è®¢åè¯·æ¨å¨è®¢åæäº¤å24å°æ¶åå®ææ¯ä»ï¼ å¦åè®¢åä¼èªå¨åæ¶ï¼</td>
          <td>2016-7-25 12:34</td>
          <td class="td-status">å¾åå¸</td>
          <td class="td-manage">
              <a onClick="member_stop(this,'10001')"  href="javascript:;" title="åå¸"  class="btn btn-xs btn-status">åå¸</a> 
              <a title="ç¼è¾" onclick="member_edit('ç¼è¾','add_Article.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
            <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
          </td>
         </tr>
           <tr>
          <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
          <td>å¸®å©ä¸­å¿</td>
          <td>2</td>
          <td> è®¢åå·²æäº¤æåï¼å¦ä½ä»æ¬¾ï¼</td>
          <td class="displayPart" displayLength="60">ä»æ¬¾æ¹å¼åä¸ºä»¥ä¸å ç§ï¼ï¼æ³¨ï¼åæ¬¾è®¢åè¯·æ¨å¨è®¢åæäº¤å24å°æ¶åå®ææ¯ä»ï¼ å¦åè®¢åä¼èªå¨åæ¶ï¼</td>
          <td>2016-7-25 12:34</td>
          <td class="td-status">å¾åå¸</td>
          <td class="td-manage">
              <a onClick="member_stop(this,'10001')"  href="javascript:;" title="åå¸"  class="btn btn-xs btn-status">åå¸</a> 
              <a title="ç¼è¾" onclick="member_edit('ç¼è¾','add_Article.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
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
	$(function () { $(".displayPart").displayPart();  });
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
		name: "å¸®å©ä¸­å¿",
	    amount:234,
		pid: 0,
	    
	}, {
		id: 2,
		name: "å¸¸è§é®é¢",
		amount:64,
		pid: 0,
		
	}, {
		id: 3,
		name: "å®¢ææå¡",
		amount:64,
		pid: 0,
		
	}, {
		id: 4,
		name: "è´­ç©æå",
		amount:64,
		pid: 0,
		
	}, {
		id: 5,
		name: "ééæ¹å¼",
		amount:64,
		pid: 0,
		
	}, 
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
	layer.confirm('ç¡®è®¤åå¸è¯¥ä¿¡æ¯ï¼',function(index){
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">å·²åå¸</span>');
		$(obj).remove();
		layer.msg('å·²åå¸!',{icon: 6,time:1000});
	});
}
/*å é¤*/
function member_del(obj,id){
	layer.confirm('ç¡®è®¤è¦å é¤åï¼',function(index){
		$(obj).parents("tr").remove();
		layer.msg('å·²å é¤!',{icon:1,time:1000});
	});
}
</script>
