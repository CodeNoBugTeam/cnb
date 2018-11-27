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
<script src="js/shopFrame.min.js" type="text/javascript"></script>
<script src="js/Sellerber.js" type="text/javascript"></script>
<script src="js/layer/layer.js" type="text/javascript"></script>
<script src="js/jquery.dataTables.min.js"></script>
<script src="js/jquery.dataTables.bootstrap.js"></script>
<title>æéè®¾ç½®</title>
</head>
<!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <script src="js/respond.min.js"></script>
  <script src="js/css3-mediaqueries.js"  type="text/javascript"></script>
  <![endif]-->
<body>
<div class="margin Configure_style " id="Competence">
<div class="h_products_list">
<div class=" add_Competence_style l_f width50" id="add_Competence_style">
  <div class="title_name">æ·»å æé</div>
   <ul class="add_Authority_style">
    <li class="clearfix"><label class="label_name col-xs-2 col-lg-2">æéåç§°ï¼</label><span class="col-xs-9"><input name="" type="text"  class="col-xs-5"/></span></li>
    <li class="clearfix"><label class="col-xs-2 col-lg-2 label_name" for="form-field-1">æéæè¿°ï¼</label>
    <span class="col-xs-9"><textarea name="æéæè¿°" class="form-control col-xs-10" id="form_textarea" placeholder="" onkeyup="checkLength(this);"></textarea><span class="wordage">å©ä½å­æ°ï¼<span id="sy" style="color:Red;">200</span>å­</span></span>
    </li>
    <li class="clearfix"><label class="col-xs-2 col-lg-2 label_name" for="form-field-1">éæ©ç¨æ·ï¼</label>
    <div class="col-xs-9 admin_name clearfix">
       <label class="middle"><input class="ace" type="checkbox" id="id-disable-check"><span class="lbl"> sm123456</span></label>
       <label class="middle"><input class="ace" type="checkbox" id="id-disable-check1"><span class="lbl"> admin</span></label>
       <label class="middle"><input class="ace" type="checkbox" id="id-disable-check2"><span class="lbl"> admin123456</span></label>
       <label class="middle"><input class="ace" type="checkbox" id="id-disable-check3"><span class="lbl"> style_name</span></label>
       <label class="middle"><input class="ace" type="checkbox" id="id-disable-check4"><span class="lbl"> username</span></label>
       <label class="middle"><input class="ace" type="checkbox" id="id-disable-check5"><span class="lbl"> adminname</span></label>
       <label class="middle"><input class="ace" type="checkbox" id="id-disable-check6"><span class="lbl"> sm12345</span></label>
       <label class="middle"><input class="ace" type="checkbox" id="id-disable-check7"><span class="lbl">åæµ·å¤©å¤©</span></label>
	</div></li>
   </ul>
</div>
<div class="Competence_list ">
<div class="title_name">æéåé</div>
  <div class="list_cont clearfix">
  <div class="list_height">
   <div class="clearfix col-lg-6 ">
    <dl class="Competence_name"> 
     <dt class="Columns_One"><label class="middle"><input class="ace" type="checkbox" id="id-disable-check8"><span class="lbl">ååç®¡ç</span></label></dt>
     <dd class="permission_list clearfix">
     <label class="middle"><input class="ace" type="checkbox" id="id-disable-check9"><span class="lbl">åååè¡¨</span></label>
     <label class="middle"><input class="ace" type="checkbox" id="id-disable-check10"><span class="lbl">åçç®¡ç</span></label>
     <label class="middle"><input class="ace" type="checkbox" id="id-disable-check11"><span class="lbl">åç±»ç®¡ç</span></label>
     </dd>
    </dl>
   </div>
   <div class="clearfix col-lg-6">
   <dl class="Competence_name">
    <dt class="Columns_One"><label class="middle"><input class="ace" type="checkbox" id="id-disable-check18"><span class="lbl">è´¦æ·ç®¡ç</span></label></dt>
    <dd class="permission_list clearfix">
     <label class="middle"><input class="ace" type="checkbox" id="id-disable-check12"><span class="lbl">æ¯ä»æ¹å¼</span></label>
     <label class="middle"><input class="ace" type="checkbox" id="id-disable-check13"><span class="lbl">æ¯ä»è®¾ç½®</span></label>
     <label class="middle"><input class="ace" type="checkbox" id="id-disable-check14"><span class="lbl">è´¦æ·è®¾ç½®</span></label>
    </dd>
   </dl>
   </div>
   <div class="clearfix  col-lg-6">
   <dl class="Competence_name">
    <dt class="Columns_One"><label class="middle"><input class="ace" type="checkbox" id="id-disable-check17"><span class="lbl">å¹¿åç®¡ç</span></label></dt>
    <dd class="permission_list clearfix">
     <label class="middle"><input class="ace" type="checkbox" id="id-disable-check15"><span class="lbl">å¹¿ååè¡¨</span></label>
     <label class="middle"><input class="ace" type="checkbox" id="id-disable-check16"><span class="lbl">å¹¿ååç±»</span></label>
    </dd>
   </dl>
   </div>
    <div class="clearfix col-lg-6">
   <dl class="Competence_name">
    <dt class="Columns_One"><label class="middle"><input class="ace" type="checkbox" id="id-disable-check27"><span class="lbl">ç®¡çåç§°</span></label></dt>
    <dd class="permission_list clearfix">
     <label class="middle"><input class="ace" type="checkbox" id="id-disable-check21"><span class="lbl">æ ç®åç§°</span></label>
     <label class="middle"><input class="ace" type="checkbox" id="id-disable-check22"><span class="lbl">æ ç®åç§°</span></label>
     <label class="middle"><input class="ace" type="checkbox" id="id-disable-check23"><span class="lbl">æ ç®åç§°</span></label>
     <label class="middle"><input class="ace" type="checkbox" id="id-disable-check24"><span class="lbl">æ ç®åç§°</span></label>
     <label class="middle"><input class="ace" type="checkbox" id="id-disable-check25"><span class="lbl">æ ç®åç§°</span></label>
     <label class="middle"><input class="ace" type="checkbox" id="id-disable-check26"><span class="lbl">æ ç®åç§°</span></label>
    </dd>
   </dl>
   </div>
   </div>
  </div>
</div>
</div>
<!--æé®æä½-->
<div class="Button_operation btn_width">
    <button class="btn button_btn btn-danger" type="button">æäº¤</button>
    <button class="btn button_btn bg-gray" type="button">åæ¶æ·»å </button>
    <a href="javascript:ovid()" onclick="javascript :history.back(-1);" class="btn btn-info button_btn"><i class="fa fa-reply"></i> è¿åä¸ä¸æ­¥</a>
 </div>
</div>
</body>
</html>
<script type="text/javascript">
	$(function() { 
	$("#Competence").frame({
		color_btn:'.skin_select',
		Sellerber_menu:'.add_Competence_style  ',
		page_content:' .Competence_list ',//åå®¹
		header:65,//é¡¶é¨é«åº¦
		menu:450,//æ å®½åº¦
	});
});
/*******æ»å¨æ¡*******/
$(".Competence_list .list_cont ").niceScroll({  
	cursorcolor:"#888888",  
	cursoropacitymax:1,  
	touchbehavior:true,  
	cursorwidth:"5px",  
	cursorborder:"0",  
	cursorborderradius:"5px"  
});
 $(".list_height").height($(window).height()-170);  
 //å½ææ¡£çªå£åçæ¹åæ¶ è§¦å  
    $(window).resize(function(){ 
	 $(".list_height").height($(window).height()-170);
});
/*å­æ°éå¶*/
function checkLength(which) {
	var maxChars = 200; //
	if(which.value.length > maxChars){
	   layer.open({
	   icon:2,
	   title:'æç¤ºæ¡',
	   content:'æ¨åºå¥çå­æ°è¶å¤éå¶!',	
    });
		// è¶è¿éå¶çå­æ°äºå°±å° ææ¬æ¡ä¸­çåå®¹æè§å®çå­æ° æªå
		which.value = which.value.substring(0,maxChars);
		return false;
	}else{
		var curr = maxChars - which.value.length; //200 åå» å½åè¾å¥ç
		document.getElementById("sy").innerHTML = curr.toString();
		return true;
	}
};
/*æé®å¤éæ¡éæ©*/
$(function(){
	$(".Competence_name dt input:checkbox").click(function(){
		$(this).closest("dl").find("dd input:checkbox").prop("checked",$(this).prop("checked"));
	});
	$(".permission_list input:checkbox").click(function(){
		var l =$(this).parent().parent().find("input:checked").length;
		if($(this).prop("checked")){
			$(this).closest("dl").find("dt input:checkbox").prop("checked",true);
			$(this).parents(".Competence_name").find("dt").first().find("input:checkbox").prop("checked",true);
		}
		else{
			if(l==0){
				$(this).closest("dl").find("dt input:checkbox").prop("checked",false);
			}			
		}		
	});
});
</script>
