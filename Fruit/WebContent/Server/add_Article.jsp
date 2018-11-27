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
<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js" type="text/javascript"></script>
<script src="js/respond.min.js"></script>
<script src="js/css3-mediaqueries.js"  type="text/javascript"></script>
  <![endif]-->
<title>æ·»å æç« </title>
</head>

<body>
<div class="margin" id="page_style">
  <div class="add_style">
    <ul>
  <li class="clearfix"><label class="label_name col-xs-1"><i>*</i>æ é¢åç§°ï¼&nbsp;&nbsp;</label><div class="Add_content col-xs-11"><input name="" type="text"  class="col-xs-6"/></div>  </li>
  <li class="clearfix"><label class="label_name col-xs-1"><i>*</i>ç®åæè¿°ï¼&nbsp;&nbsp;</label><div class="Add_content col-xs-11"><input name="" type="text" class="col-xs-4"/></div>
  </li>
     <li class="clearfix"><label class="label_name col-xs-1"><i>*</i>å³&nbsp;é®&nbsp;å­ï¼&nbsp;&nbsp;</label><div class="Add_content col-xs-11"><input name="" type="text" class="col-xs-4"/><em class="Prompt"> è¯·ç¨","åéå³é®å­</em></div>
     </li>
     <li class="clearfix">
   <label class="label_name col-xs-1"><i>*</i>æå±åç±»ï¼&nbsp;&nbsp;</label>
   <div class="Add_content col-xs-11">
   <span class="classification_name l_f"><label ><input type="radio" name="form-field-radio" class="ace"><span class="lbl">å¸®å©ä¸­å¿</span></label></span>
   <span class="classification_name l_f"><label ><input type="radio" name="form-field-radio" class="ace"><span class="lbl">è´­ç©æå</span></label></span>
   <span class="classification_name l_f"><label ><input type="radio" name="form-field-radio" class="ace"><span class="lbl">æ¯ä»æ¹å¼</span></label></span>
   <span class="classification_name l_f"><label ><input type="radio" name="form-field-radio" class="ace"><span class="lbl">å®åæå¡</span></label></span>
   <span class="classification_name l_f"><label ><input type="radio" name="form-field-radio" class="ace"><span class="lbl">ç¹è²æå¡</span></label></span>
   <span class="classification_name l_f"><label ><input type="radio" name="form-field-radio" class="ace"><span class="lbl">å¬å¸å¨æ</span></label></span>
   <span class="relative l_f">
   <button  type="button" onclick="add_category()" class="btn bg-deep-blue operation_btn margin-left">æ·»å åç±»</button>
   <div class="add_category_style">
     <p class="clearfix">
     <input name="" type="text"  class="l_f" style="width:260px;"/><button class="btn button_btn bg-deep-blue l_f" id="add_category" type="button">æ·»å </button>
     </p>
     <p class="Prompt"><em>è¯¥åç±»æå¤æ·»å 10ä¸ª</em></p>
   </div>
   </span>
   </div> 
   </li>
      <li class="clearfix"><label class="label_name col-xs-1"><i>*</i>åå®¹ä»ç»ï¼&nbsp;&nbsp;</label>
     <div class="Add_content col-xs-11"><script id="editor" type="text/plain" style="width:100%;height:500px;"></script></div>
     </li> 
  </ul>
  <div class="Button_operation btn_width">
    <button class="btn button_btn bg-deep-blue" type="button">ä¿å­å¹¶æäº¤</button>
    <button class="btn button_btn bg-orange" type="button">ä¿å­èç¨¿</button>
    <button class="btn button_btn bg-gray" type="button">åæ¶æ·»å </button>
 </div>
  </div>
</div>
</body>
</html>
   <!--å¤ææ¬ç¼è¾æ¡-->
    <script type="text/javascript" charset="utf-8" src="js/utf8-jsp/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="js/utf8-jsp/ueditor.all.min.js"> </script>
    <script type="text/javascript" charset="utf-8" src="js/utf8-jsp/lang/zh-cn/zh-cn.js"></script>
<script>
$(function(){
 var ue = UE.getEditor('editor');
});
 function add_category(){$(".add_category_style").toggle();}
 /*******æ»å¨æ¡*******/
$("body").niceScroll({  
	cursorcolor:"#888888",  
	cursoropacitymax:1,  
	touchbehavior:false,  
	cursorwidth:"5px",  
	cursorborder:"0",  
	cursorborderradius:"5px"  
});
</script>
