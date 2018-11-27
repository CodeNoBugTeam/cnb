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
<script src="js/hsCheckData.js" type="text/javascript"></script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js" type="text/javascript"></script>
<script src="js/respond.min.js"></script>
<script src="js/css3-mediaqueries.js"  type="text/javascript"></script>
  <![endif]-->
<title>æ ç®è®¾ç½®</title>
</head>
<body class="label-hui">
 <div class="margin clearfix" id="page_style">
   <div class="columns_list_style  clearfix inherit" id="Sellerber">
    <div class="Sellerber_left menu" id="menuBar">
     <div class="show_btn" id="rightArrow"><span></span></div>
     <div class="side_title"><a title="éè" class="close_btn"><span></span></a></div> 
      <div class="menu_style" id="menu_style">
       <div class="list_content">
        <div class="side_list">
         <div class="column_title"><h4 class="lighter smaller">ç³»ç»æ ç®è®¾ç½®</h4></div>
         <div class="Column_editing padding15">
       	  <ul class="add_style">
       	 	<li class="clearfix mb15">
       	 	<label class="label_name col-xs-3 col-sm-3">æ ç®åç§°ï¼</label><span class="Column_name col-xs-9"><input name="" type="text" id="form-field-1" class="col-xs-8 col-sm-8" ></span>
       	 	</li>
       	 	<li class="clearfix mb15">
       	 	<label class="label_name col-xs-3 col-sm-3">æå±åç±»ï¼</label><span class="Column_name col-xs-9">
       	 	 <span id="cityDanXuan" class="col-xs-8 col-sm-8 fl_hsCheckData"></span></span>
       	 	</li>
       	 	<li class="clearfix mb15">
       	 	<label class="label_name col-xs-3 col-sm-3">æåºï¼</label><span class="Column_name col-xs-9"><input name="" type="text" id="form-field-3" class="col-xs-4 col-sm-4" ></span>
       	 	</li>
       	 	<li class="clearfix mb15">
       	 	<label class="label_name col-xs-3 col-sm-3">æ¾ç¤ºä½ç½®ï¼</label><span class="Column_name col-xs-9"><input name="" type="text" id="form-field-4" class="col-xs-8 col-sm-8" ></span>
       	 	</li>
       	 	<li class="clearfix mb15">
       	 	<label class="label_name col-xs-3 col-sm-3">å¤æ³¨è¯´æï¼</label><span class="Column_name col-xs-9"><textarea name="æéæè¿°" class="form-control col-xs-10 col-sm-10" id="form_textarea" placeholder="" onkeyup="checkLength(this);"></textarea>
       	 	<span class="wordage block l_f">å©ä½å­æ°ï¼<span id="sy" style="color:Red;">200</span>å­</span>
       	 	</span>
       	 	</li>
       	 	<li class="clearfix mb15 align">
       	 	  <a href="javascript:" title="æ·»å åç±»" class="btn button_btn bg-deep-blue"><i class="fa fa-plus"></i>æ·»å åç±»</a>
       	 	</li>
       	 </ul>
       </div>
     </div>
    </div>
   </div>
  </div>
  <!--æ°æ®å±ç¤º-->
    <div class="list_show inherit">
      <div class="Column_display confirm detailed_style">
        <div class="title_name">æ ç®èååè½åºåå±ç¤ºè®¾ç½®</div>
        <div class="menu_Settings clearfix padding15">
        	<ul class="menu_operation" id="div1">
        		<li class="menu_title">ç³»ç»é¦é¡µ</li>
        		<li>é¦é¡µ</li>
        		<li>å°å¾å±ç¤º</li>
        	</ul>
        	<ul class="menu_operation " id="div2">
        		<li class="menu_title">ååç®¡ç</li>
        		<li>åçåè¡¨</li>
        		<li>åååè¡¨</li>
        		<li>åç±»ç®¡ç</li>
        	</ul>
        	<ul class="menu_operation" id="div3">
        		<li class="menu_title">äº¤æç®¡ç</li>
        		<li>è®¢åç®¡ç</li>
        		<li>éæ¬¾ç®¡ç</li>
        		<li>äº¤æç»è®¡</li>
        		<li>è®¢åå¤ç</li>
        		<li>ç©æµç®¡ç</li>
        		<li>è®¢åç»è®¡</li>
        	</ul>
        	<ul class="menu_operation" id="div5">
        		<li class="menu_title">æ¯ä»ç®¡ç</li>
        		<li>æ¯ä»éç½®</li>
        		<li>ä»æ¬¾éç½®</li>
        	</ul>
        	<ul class="menu_operation" id="div6">
        		<li class="menu_title">æ¯ä»ç®¡ç</li>
        		<li>æ¯ä»éç½®</li>
        		<li>ä»æ¬¾éç½®</li>
        	</ul>
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
		datalist:".menu_Settings",//æ°æ®åè¡¨é«åº¦åå¼
		mwidth:400,//èåæ å®½åº¦
		minStatue:true,
		drag:false,//æ¯å¦å¯ç¨ææ½åè½æ°´å¹³ææ½
		dragclass:".menu_operation",//éæ©ç§»å¨åæ°
	});
});
	var cityData=[{
		"1":"ç³»ç»é¦é¡µ",
		"childCity":[
			{"101":"å°å¾å±ç¤º"},
			{"102":"é¦é¡µ"},
		]},
{
		"2":"ååç®¡ç",
		"childCity":[
			{"201":"æ·»å åå"},
			{"202":"åçç®¡ç"},
			{"203":"äº§ååè¡¨"},
			{"204":"ç±»è¡¨ç®¡ç"},
		]},
	{
		"3":"äº¤æç®¡ç",
		"childCity":[
			{"301":"è®¢åç®¡ç"},
			{"302":"éæ¬¾ç®¡ç"},
			{"303":"äº¤æç»è®¡"},
			{"304":"è®¢åå¤ç"},
			{"305":"ç©æµç®¡ç"},
			{"306":"è®¢åç»è®¡"},
		]},
];
	$('#cityDanXuan').hsCheckData({
		isShowCheckBox: false, //é»è®¤ä¸ºfalse
		data: cityData
	});
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