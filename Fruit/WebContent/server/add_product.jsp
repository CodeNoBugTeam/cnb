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
<script src="js/jquery.dataTables.min.js"></script>
<script src="js/jquery.dataTables.bootstrap.js"></script>
<script src="js/layer/layer.js" type="text/javascript"></script>
<script src="js/laydate/laydate.js" type="text/javascript"></script>
<script src="js/hsCheckData.js" type="text/javascript"></script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js" type="text/javascript"></script>
<script src="js/respond.min.js"></script>
<script src="js/css3-mediaqueries.js"  type="text/javascript"></script>
  <![endif]-->
<title>æ·»å äº§å</title>
</head>

<body>
<div class="margin inside_pages clearfix">
<div class="add_style clearfix relative">
  <!--åçå±ç¤º å½éè¿åçç®¡çæ·»å äº§åæ¯æ¾ç¤ºè¯¥-->
  <div class="Brand_title">
  	 <div class="Brand_img"><img src="product_img/logo/458.jpg"><h3>å¡å§¿å°</h3></div>
  </div>
 <ul>
  <li class="clearfix"><label class="label_name col-xs-1"><i>*</i>æ é¢åç§°ï¼&nbsp;&nbsp;</label><div class="Add_content col-xs-11"><input name="" type="text"  class="col-xs-6"/></div></li>
  <li class="clearfix"><label class="label_name col-xs-1"><i>*</i>ç®åæè¿°ï¼&nbsp;&nbsp;</label><div class="Add_content col-xs-11"><input name="" type="text" class="col-xs-4"/></div></li>
   <li class="clearfix"><label class="label_name col-xs-1"><i>*</i>å³&nbsp;é®&nbsp;å­ï¼&nbsp;&nbsp;</label><div class="Add_content col-xs-11"><input name="" type="text" class="col-xs-4"/><em class="Prompt"> è¯·ç¨","åéå³é®å­</em></div></li>
     <li class="clearfix"><label class="label_name col-xs-1"><i>*</i>éæ©åç±»ï¼&nbsp;&nbsp;</label><div class="Add_content col-xs-11">
     <span id="cityDanXuan" class="width200px fl_hsCheckData"></span></div>
     </li>
  <li class="clearfix">
   <label class="label_name col-xs-1"><i>*</i>åå¸æ ï¼&nbsp;&nbsp;</label>
   <div class="Add_content col-xs-11">
   <span class="classification_name l_f"><label ><input type="radio" name="form-field-radio" class="ace"><span class="lbl">æ°ååå¸</span></label></span>
   <span class="classification_name l_f"><label ><input type="radio" name="form-field-radio" class="ace"><span class="lbl">éæ¶ä¿é</span></label></span>
   <span class="classification_name l_f"><label ><input type="radio" name="form-field-radio" class="ace"><span class="lbl">ç¹ä»·å¤ç</span></label></span>
   <span class="relative l_f">
   <button  type="button" onclick="add_category()" class="btn bg-deep-blue operation_btn margin-left">æ·»å åç±»</button>
   <div class="add_category_style">
     <p class="clearfix">
     <input name="" type="text"  class="l_f form-control" style="width:220px;"/><button style="margin:0px" class="btn button_btn bg-deep-blue l_f" id="add_category" type="button">æ·»å </button>
     </p>
     <p class="Prompt"><em>è¯¥åç±»æå¤æ·»å 10ä¸ª</em></p>
   </div>
   </span>
   </div> 
   </li>
     <li class="clearfix">
      <div class="col-xs-4">
     <label class="label_name col-xs-3"><i>*</i>åååä»·ï¼&nbsp;&nbsp;</label> 
    <div class="Add_content col-xs-9">
    <input name="" type="text"  class="col-xs-7"/><em class="Prompt">å</em>
    </div>   
    </div>
    <div class="col-xs-4">
    <label class="label_name col-xs-3"><i>*</i>ååç°ä»·ï¼&nbsp;&nbsp;</label> 
    <div class="Add_content col-xs-9">
   <input name="" type="text"  class="col-xs-7"/><em class="Prompt">å</em>
    </div>   
    </div>
    <div class="col-xs-4">
    <label class="label_name col-xs-3"><i>*</i>ååæ°éï¼&nbsp;&nbsp;</label> 
    <div class="Add_content col-xs-9">
   <input name="" type="text"  class="col-xs-7"/><em class="Prompt">ä»¶</em>
    </div>   
    </div>
    </li>
   <li class="clearfix"><label class="label_name col-xs-1">è®¾ç½®æ¶é´ï¼&nbsp;&nbsp;</label> 
    <div class="Add_content col-xs-11">
    <label class="l_f checkbox_time"><input type="checkbox" name="checkbox" class="ace" id="checkbox"><span class="lbl">æ¯</span></label>
    <div class="Date_selection" style="display:none">
      <span class="label_name">å¼å§æ¥ï¼</span><p class="laydate-icon" id="start" style="width:200px; margin-right:10px; height:30px; line-height:30px; float:left"></p>
      <span class="label_name">ç»ææ¥ï¼</span><p class="laydate-icon" id="end" style="width:200px;height:30px; line-height:30px; float:left"></p>
    </div>
    </div>   
    </li>
    <li class="clearfix"><label class="label_name col-xs-1">è®¾ç½®è§æ ¼ï¼&nbsp;&nbsp;</label> 
    <div class="Add_content col-xs-11">    
       <input name="" type="text"  class="col-xs-6"/><em class="Prompt">å¦"é¢è²,å°ºå¯¸,åå·"ä¸­é´ä»¥è±æéå·éå¼</em>
    </div>   
    </li>
     <li class="clearfix">
      <div class="col-xs-4">
     <label class="label_name col-xs-3">æ¯å¦ä¸æ¶ï¼&nbsp;&nbsp;</label> 
    <div class="Add_content col-xs-9">
    <label><input type="radio" name="checkbox" class="ace" checked="checked"><span class="lbl">æ¯</span></label>
    <label><input type="radio" name="checkbox" class="ace"><span class="lbl">å¦</span></label>
    </div>   
    </div>
    <div class="col-xs-4">
    <label class="label_name col-xs-3">åè®¸è¯è®ºï¼&nbsp;&nbsp;</label> 
    <div class="Add_content col-xs-9">
       
    <label class="l_f checkbox_time"><input type="checkbox" name="checkbox" class="ace" checked="checked"><span class="lbl"></span></label>
    </div>   
    </div>
    </li>
      <li class="clearfix">
     <label class="label_name col-xs-1"><i>*</i>äº§åå¾çï¼&nbsp;&nbsp;</label>
     <div class="Add_content col-xs-11" id="Upload">
     <div class="images_Upload clearfix margin-bottom" id="images_Upload">
      <span class="Upload_img"><input name="" type="file" /></span>
      <a href="javascript:ovid()" class="operating delete_Upload" onclick="delete_Upload(this.id)"><i class="fa fa-remove"></i></a>
      <a href="javascript:ovid()" class="operating" title="é¢è§" onclick="preview_img(this.id)"><i class="fa  fa-image"></i></a>
    </div>
    <button type="button" class="add_Upload bg-deep-blue" id="add_Upload" onclick="add_Upload()"><i class="fa  fa-plus"></i></button>
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
var cityData=[
{
		"2":"é£å/ä¿å¥/é/é¥®æ",
		"childCity":[
			{"201":"é¢å"},
			{"202":"é¥¼å¹²"},
			{"203":"ç½é"},
			{"204":"å¤é"},
			{"205":"è¡èé"},
			{"206":"é¦è "},
			{"207":"ç«è¿è "},
			{"208":"çå¥¶"},
		]},
	{
		"3":"æ°ç å½±å",
		"childCity":[
			{"301":"é¢å"},
			{"302":"é¥¼å¹²"},
			{"303":"ç½é"},
			{"304":"å¤é"},
			{"305":"è¡èé"},
			{"306":"é¦è "},
			{"307":"ç«è¿è "},
			{"308":"çå¥¶"},
		]},
];
	$('#cityDanXuan').hsCheckData({
		isShowCheckBox: false, //é»è®¤ä¸ºfalse
		data: cityData
	});
$(function(){
 var ue = UE.getEditor('editor');
});
$(document).ready(function(){
    var spotMax = 8;
  if($('div.images_Upload').size() >= spotMax) {$(obj).hide();}
  $("#add_Upload").on('click',function(){ 
       var cid =$('.images_Upload').each(function(i){ $(this).attr('id',"Uimages_Upload_"+i)});
       addSpot(this, spotMax, cid);
  });
});
function addSpot(obj, sm ,sid) {
	  $("#Upload").append("<div class='images_Upload clearfix margin-bottom' id='"+sid+"'>"+
	  "<span class='Upload_img'><input name='' type='file' /></span>"+
	  "<a href='javascript:ovid()' class='operating delete_Upload'><i class='fa fa-remove'></i></a>"+
	  "<a href='javascript:ovid()' class='operating' onclick='preview_img(this.id)'><i class='fa  fa-image'></i></a>"+
	  "</div>&nbsp;")  
	.find(".delete_Upload").click(function(){
		if($('div.images_Upload').size()==1){
			layer.msg('è¯·è³å°ä¿çä¸å¼ å¾ç!',{icon:0,time:1000});			
			}
			else{
				 $(this).parent().remove();
                 $('#add_Upload').show();
				} 				
				
  });
  if($('.delete_Upload').size() >= sm) {$(obj).hide();layer.msg('å½åä¸ºæå¤§å¾çæ·»å é!',{icon:0,time:1000});}}
 /*checkboxæ¿åäºä»¶*/
$('#checkbox').on('click',function(){
	if($('input[name="checkbox"]').prop("checked")){
		 $('.Date_selection ').css('display','block');
		}
	else{
		
		 $('.Date_selection').css('display','none');
		}	
	});
function add_category(){
	 $(".add_category_style").toggle();
	
	}
  /******æ¶é´è®¾ç½®*******/
  var start = {
    elem: '#start',
    format: 'YYYY/MM/DD hh:mm:ss',
    min: laydate.now(), //è®¾å®æå°æ¥æä¸ºå½åæ¥æ
    max: '2099-06-16 23:59:59', //æå¤§æ¥æ
    istime: true,
    istoday: false,
    choose: function(datas){
         end.min = datas; //å¼å§æ¥éå¥½åï¼éç½®ç»ææ¥çæå°æ¥æ
         end.start = datas //å°ç»ææ¥çåå§å¼è®¾å®ä¸ºå¼å§æ¥
    }
};
var end = {
    elem: '#end',
    format: 'YYYY/MM/DD hh:mm:ss',
    min: laydate.now(),
    max: '2099-06-16 23:59:59',
    istime: true,
    istoday: false,
    choose: function(datas){
        start.max = datas; //ç»ææ¥éå¥½åï¼éç½®å¼å§æ¥çæå¤§æ¥æ
    }
};
laydate(start);
laydate(end);
/*********æ»å¨äºä»¶*********/
$("body").niceScroll({  
	cursorcolor:"#888888",  
	cursoropacitymax:1,  
	touchbehavior:false,  
	cursorwidth:"5px",  
	cursorborder:"0",  
	cursorborderradius:"5px"  
});
</script>
