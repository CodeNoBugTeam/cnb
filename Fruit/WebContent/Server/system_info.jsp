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
<script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
<script src="js/Sellerber.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery.cookie.js"></script>
<script src="js/shopFrame.js" type="text/javascript"></script>
<script src="js/layer/layer.js" type="text/javascript"></script>
<script src="js/laydate/laydate.js" type="text/javascript"></script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js" type="text/javascript"></script>
<script src="js/respond.min.js"></script>
<script src="js/css3-mediaqueries.js"  type="text/javascript"></script>
  <![endif]-->
<title>ç³»ç»ä¿¡æ¯</title>
</head>

<body>
<div class="margin">
 <div class="System_Setup slideBox" id="System_Setup">
  <div class="hd">
  <ul>
   <li>åºæ¬è®¾ç½®</li>
   <li>æ¾ç¤ºè®¾ç½®</li>
   <li>é®ä»¶è®¾ç½®</li>
   <li>èç³»æ¹å¼è®¾ç½®</li>
  </ul>
  </div>
  <div class="bd">
   <ul>
     <div class="add_style">
  <li class="clearfix"><label class="label_name col-xs-1">åºéºåç§°ï¼&nbsp;&nbsp;</label><div class="Add_content col-xs-11"><input name="" type="text"  class="col-xs-6"/></div>  </li>
  <li class="clearfix"><label class="label_name col-xs-1">åºéºæè¿°ï¼&nbsp;&nbsp;</label><div class="Add_content col-xs-11"><input name="" type="text" class="col-xs-4"/><em class="Prompt">ä¸å¥è¯ç®åæè¿°ä¸åºéº</em></div>
  </li>
  <li class="clearfix"><label class="label_name col-xs-1">å³&nbsp;é®&nbsp;å­ï¼&nbsp;&nbsp;</label><div class="Add_content col-xs-11"><input name="" type="text" class="col-xs-4"/><em class="Prompt"> è¯·ç¨","åéå³é®å­</em></div>
     </li>
     <li class="clearfix">
     <label class="label_name col-xs-1">åºéºä»ç»ï¼&nbsp;&nbsp;</label><div class="Add_content col-xs-11"><textarea name="" cols="" rows="" class="col-xs-6" style="height:150px;"></textarea></div> 
      </li>
     <li class="clearfix">
     <label class="label_name col-xs-1">åºéºlogoï¼&nbsp;&nbsp;</label>
     <div class="Add_content col-xs-11" id="Upload">
     <div class="images_Upload clearfix" id="images_Upload">
      <span class="Upload_img"><input name="" type="file" /></span>
      <a href="javascript:ovid()" class="operating" title="é¢è§" onclick="preview_img()"><i class="fa  fa-image"></i></a>
      <em class="Prompt">è¯·ä½¿ç¨120*120å¤§å°çå¾ç</em>
    </div>
     </div>
     </li>
     <li class="clearfix">
     <label class="label_name col-xs-1">å¬å¸åç§°ï¼&nbsp;&nbsp;</label><div class="Add_content col-xs-11"><input name="" type="text"  class="col-xs-6"/></div> 
      </li>
       <li class="clearfix">
     <label class="label_name col-xs-1">å¬å¸å°åï¼&nbsp;&nbsp;</label><div class="Add_content col-xs-11"><input name="" type="text"  class="col-xs-6"/></div> 
      </li>
       <li class="clearfix">
     <label class="label_name col-xs-1">å¬å¸çµè¯ï¼&nbsp;&nbsp;</label><div class="Add_content col-xs-11"><input name="" type="text"  class="col-xs-6"/></div> 
      </li>
       <li class="clearfix">
     <label class="label_name col-xs-1">çµå­é®ç®±ï¼&nbsp;&nbsp;</label><div class="Add_content col-xs-11"><input name="" type="text"  class="col-xs-6"  placeholder="your@domain.com"/></div> 
      </li>
         <li class="clearfix">
     <label class="label_name col-xs-1">ç»è®¡ä»£ç ï¼&nbsp;&nbsp;</label><div class="Add_content col-xs-11"><textarea name="" cols="" rows="" class="col-xs-6" style="height:150px;"></textarea></div> 
      </li>
      <li class="clearfix">
     <label class="label_name col-xs-1"></label><div class="Add_content col-xs-11"><button class="btn button_btn bg-deep-blue" type="button">ä¿å­æäº¤</button></div> 
      </li>
    </div>
   </ul>
   <ul>
   <div class="add_style">  
    <li class="clearfix">
     <label class="label_name col-xs-1">è½®æ­å¾æ°éï¼&nbsp;&nbsp;</label><div class="Add_content col-xs-11"><input name="" type="text"  class="col-xs-3"/></div> 
      </li>
      <li class="clearfix">
     <label class="label_name col-xs-1">ä»·æ ¼æ¾ç¤ºï¼&nbsp;&nbsp;</label><div class="Add_content col-xs-11"><input name="" type="text"  class="col-xs-3"/><em class="Prompt">å°ä»¥åèäºå¥å½¢å¼ä¿çå°æ°</em></div> 
      </li>
       <li class="clearfix">
     <label class="label_name col-xs-1">æ ç®æ°éï¼&nbsp;&nbsp;</label><div class="Add_content col-xs-11"><input name="" type="text"  class="col-xs-2"/><em class="Prompt">ä¸è¶è¿10ä¸ª</em></div> 
      </li>
        <li class="clearfix">
     <label class="label_name col-xs-1">äº§åæ°éï¼&nbsp;&nbsp;</label><div class="Add_content col-xs-11"><input name="" type="text"  class="col-xs-2"/></div> 
      </li>
        <li class="clearfix">
     <label class="label_name col-xs-1"></label><div class="Add_content col-xs-11"><button class="btn button_btn bg-deep-blue" type="button">ä¿å­æäº¤</button></div> 
      </li>
     </div>
   </ul>
   <ul></ul>
   <ul>
    <div class="add_style">  
    <li class="clearfix">
     <label class="label_name col-xs-1">å¬å¸çµè¯ï¼&nbsp;&nbsp;</label><div class="Add_content col-xs-11"><input name="" type="text"  class="col-xs-3"/><em class="Prompt">å¤ä¸ªçµè¯å·²","éå¼</em></div> 
      </li>
       <li class="clearfix">
     <label class="label_name col-xs-1">å¬å¸ä¼ çï¼&nbsp;&nbsp;</label><div class="Add_content col-xs-11"><input name="" type="text"  class="col-xs-3"/><em class="Prompt">å¤ä¸ªçµè¯å·²","éå¼</em></div> 
      </li>
       <li class="clearfix">
     <label class="label_name col-xs-1">èç³»äººï¼&nbsp;&nbsp;</label>
     <div class="Add_content col-xs-11">
     <input name="" type="text"  class="col-xs-1"/><span class="l_f margin-zy">-</span><input name="" type="text"  class="col-xs-2"/>     
     </div> 
      </li>
        <li class="clearfix">
     <label class="label_name col-xs-1">é®ç®±å°åï¼&nbsp;&nbsp;</label><div class="Add_content col-xs-11"><input name="" type="text"  class="col-xs-3"/></div> 
      </li>
      <li class="clearfix">
     <label class="label_name col-xs-1">é®ç®±å¯ç ï¼&nbsp;&nbsp;</label><div class="Add_content col-xs-11"><input name="" type="password"  class="col-xs-3"/></div> 
      </li>
        <li class="clearfix">
     <label class="label_name col-xs-1">æå¡å¨ç«¯å£ï¼&nbsp;&nbsp;</label><div class="Add_content col-xs-11"><input name="" type="text"  class="col-xs-1"/></div> 
      </li>
      <li class="clearfix">
     <label class="label_name col-xs-1">SSLå®å¨åè®®ï¼&nbsp;&nbsp;</label>
     <div class="Add_content col-xs-11">
     <label><input type="radio" name="checkbox" class="ace" checked="checked"><span class="lbl">æ¯</span></label>
    <label><input type="radio" name="checkbox" class="ace"><span class="lbl">å¦</span></label>
    </div> 
      </li>
       <li class="clearfix">
     <label class="label_name col-xs-1"></label><div class="Add_content col-xs-11"><button class="btn button_btn bg-deep-blue" type="button">ä¿å­æäº¤</button></div> 
      </li>
      </div>
          
   </ul>
  </div>
 
 </div>
</div>
<div id="Picture_Preview" style="display:none">
   <img src="images/dp_logo.jpg"  width="120px" height="120px"/>
</div>
</body>
</html>
<script>
jQuery(".slideBox").slide({trigger:"click",easing:"easeOutElastic"});
/*****************/
function preview_img(){
	  layer.open({
	  type: 1,
	  title: false,
	  closeBtn: 0,
	  area: '120px',
	  skin: 'layui-layer-nobg', //æ²¡æèæ¯è²
	  shadeClose: true,
	  content: $('#Picture_Preview')
	});
	
	}
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
