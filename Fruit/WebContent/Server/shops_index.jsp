<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="css/shop.css" type="text/css" rel="stylesheet" />
<link href="skin/default/skin.css" rel="stylesheet" type="text/css" id="skin" />
<link href="css/Sellerber.css" type="text/css"  rel="stylesheet" />
<link href="css/bkg_ui.css" type="text/css" rel="stylesheet" />
<link href="font/css/font-awesome.min.css"  rel="stylesheet" type="text/css" />
<script src="js/jquery-1.9.1.min.js" type="text/javascript" ></script>
<script src="js/layer/layer.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/Sellerber.js" type="text/javascript"></script>
<script src="js/shopFrame.js" type="text/javascript"></script>
<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery.cookie.js"></script> 
<title>åºéºç®¡ç</title>
</head>
<!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <script src="js/respond.min.js"></script>
  <script type="text/javascript" src="js/PIE/PIE_IE678.js"></script>
 <![endif]-->
<body>
 <div class="Sellerber" id="Sellerber">
 <!--é¡¶é¨-->
  <div class="Sellerber_header apex clearfix" id="Sellerber_header">
   <div class="l_f logo header"><img src="images/logo_03.png" /></div>
   <div class="r_f Columns_top clearfix header">
   <!--<div class="time_style l_f"><i class="fa  fa-clock-o"></i><span id="time"></span></div>-->
      <div class="search_style l_f">
        <form action="#" method="get" class="sidebar_form">
		 <div class="input-group">
			<input type="text" name="q" class="form-control"><span class="input-group-btn"><a class="btn_flat" href="javascript:" onclick=""><i class="fa fa-search"></i></a></span>
		 </div>
        </form>
     </div>
   <div class="news l_f "><a href="#" class="fa fa-bell Notice prompt" id="promptbtn"></a><em>5</em></div>
     <div class="administrator l_f">
       <img src="images/avatar.png"  width="36px"/><span class="user-info">æ¬¢è¿ä½ ,è¶çº§ç®¡çå</span><i class="glyph-icon fa  fa-caret-down"></i>
       <ul class="dropdown-menu">
        <li><a href="#"><i class="fa fa-user"></i>ä¸ªäººä¿¡æ¯</a></li>
        <li><a href="#"><i class="fa fa-cog"></i>ç³»ç»è®¾ç½®</a></li>
        <li><a href="javascript:void(0)" id="Exit_system"><i class="fa fa-user-times"></i>éåº</a></li>
       </ul>
     </div> 
   </div>
  </div>
<!--å·¦ä¾§-->
  <div class="Sellerber_left menu" id="menuBar">
    <div class="show_btn" id="rightArrow"><span></span></div>
    <div class="side_title"><a title="éè" class="close_btn"><span></span></a></div>
    <div class="menu_style" id="menu_style">
    <div class="list_content">
    <!--æ ç®åæ¢-->
    <div class="switch_style">
    	<em class="fa fa-th-large switch"></em>
    	<em class="fa fa-list switch_unfold"></em>
    </div>
    <div class="skin_select clearfix">
      <ul class="dropdown-menu dropdown-caret clearfix">
         <li><a class="colorpick-btn selected" href="javascript:void(0)" data-val="default"  id="default" style="background-color:#222A2D" ></a></li>
         <li><a class="colorpick-btn" href="javascript:void(0)" data-val="blue" style="background-color:#438EB9;" ></a></li>
         <li><a class="colorpick-btn" href="javascript:void(0)" data-val="green" style="background-color:#72B63F;" ></a></li>
         <li><a class="colorpick-btn" href="javascript:void(0)" data-val="gray" style="background-color:#41a2ff;" ></a></li>
         <li><a class="colorpick-btn" href="javascript:void(0)" data-val="red" style="background-color:#FF6868;" ></a></li>
         <li><a class="colorpick-btn" href="javascript:void(0)" data-val="purple" style="background-color:#6F036B;" ></a></li>
        </ul>     
     </div>
     <!--å·¦ä¾§èåæ ç®-->  
     <div class="column_list" >
		 <ul class="menuUl menu_list" id="column_list"> 	
		 </ul>
	 </div> 
    </div>
  </div>
 </div>
<!--åå®¹-->
  <div class="Sellerber_content" id="contents">
    <div class="breadcrumbs" id="breadcrumbs">
       <a id="js-tabNav-prev" class="radius btn-default left_roll" href="javascript:;"><i class="fa fa-backward"></i></a>
       <div class="breadcrumb_style clearfix">
	     <ul class="breadcrumb clearfix" id="min_title_list">
          <li class="active home"><span title="æçæ¡é¢" data-href="index.html"><i class="fa fa-home home-icon"></i>é¦é¡µ</span></li>
         </ul>
      </div>
       <a id="js-tabNav-next" class="radius btn-default right_roll" href="javascript:;"><i class="fa fa-forward"></i></a>
       <div class="btn-group radius roll-right">
		 <a class="dropdown tabClose" data-toggle="dropdown" aria-expanded="false">é¡µç­¾æä½<i class="fa fa-caret-down" style="padding-left: 3px;"></i></a>
			<ul class="dropdown-menu dropdown-menu-right" id="dropdown_menu">
				<li><a class="tabReload" href="javascript:void(0);">å·æ°å½å</a></li>
				<li><a class="tabCloseCurrent" href="javascript:void(0);">å³é­å½å</a></li>
				<li><a class="tabCloseAll" href="javascript:void(0);">å¨é¨å³é­(é¦é¡µ)</a></li>
				<li><a class="tabCloseOther" href="javascript:void(0);">é¤æ­¤ä¹å¤å¨é¨å³é­</a></li>
			</ul>
		</div>
		<a href="javascript:void()" class="radius roll-right fullscreen"><i class="fa fa-arrows-alt"></i></a>
    </div>
  <!--å·ä½åå®¹-->  
  <div id="iframe_box" class="iframe_content">
  <div class="show_iframe index_home" id="show_iframe">
       <iframe scrolling="yes" class="simei_iframe" frameborder="0" src="index.html" name="iframepage" data-href="index.html"></iframe>
       </div>
      </div>
  </div>
<!--åºé¨-->
  <div class="Sellerber_bottom info" id="bottom">
  <span class="l_f">çæææï¼åäº¬çç³è½¯ä»¶ç³»ç»æéå¬å¸</span>
  </div>
  <!--æ¶æ¯æç¤ºæ¿ååå®¹-->
<div class="prompt_style prompt">
	<div class="prompt_title">éç¥æ¶æ¯</div>
	<div class="prompt_info clearfix">
	  <div class="tz_title">è®¢åæ¶æ¯ï¼5ï¼</div>
	  <a href="" class=""><i class="fa fa-user icon_prompt label-danger"></i>ä½ æè®¢åè¿æ²¡æå¤çè¯·åæ¶å¤çï¼ç¹å»æ¥çè¯¦ç»</a>
    </div>
    <div class="prompt_info clearfix">
	  <div class="tz_title">è®¢åæ¶æ¯ï¼5ï¼</div>
	  <a href="" class=""><i class="fa fa-volume-up icon_prompt label-success"></i>ä½ æè®¢åè¿æ²¡æå¤çè¯·åæ¶å¤çï¼ç¹å»æ¥çè¯¦ç»</a>
    </div>
    <div class="prompt_info clearfix">
	  <div class="tz_title">è®¢åæ¶æ¯ï¼5ï¼</div>
	  <a href="" class=""><i class="fa fa-user icon_prompt label-warning"></i>ä½ æè®¢åè¿æ²¡æå¤çè¯·åæ¶å¤çï¼ç¹å»æ¥çè¯¦ç»</a>
    </div>
    <div class="prompt_info clearfix">
	  <div class="tz_title">è®¢åæ¶æ¯ï¼5ï¼</div>
	  <a href="" class=""><i class="fa fa-user icon_prompt label-danger"></i>ä½ æè®¢åè¿æ²¡æå¤çè¯·åæ¶å¤çï¼ç¹å»æ¥çè¯¦ç»</a>
    </div>
    <div class="prompt_info clearfix submenu">
	  <div class="tz_title">è®¢åæ¶æ¯ï¼5ï¼</div>
	  <a href="javascript:void()" class="" name="Personal_info.html" title="è®¢åæ¶æ¯"><i class="fa fa-user icon_prompt label-danger"></i>ä½ æè®¢åè¿æ²¡æå¤çè¯·åæ¶å¤ç</a>
    </div>
  </div> 
 </div>
</body>
</html>
<script type="text/javascript">
	var data =[
    {
    	 id:1,
		 pid:0,
		 url:"#",
		 icon:'fa fa-home',
         name:'ç³»ç»é¦é¡µ',
    },
    {
		 id:2,
		 pid:0,
		 url:"#",
		 icon:'fa fa-desktop',
		 name:'ååç®¡ç',
    },
    {
		 id:3,
		 pid:0,
		 url:"#",
		 icon:'fa fa-database',
		 name:'äº¤æç®¡ç',
    },
    {
		 id:4,
		 pid:0,
		 url:"#",
		 icon:'fa fa-credit-card',
		 name:'æ¯ä»ç®¡ç',
    },
    {
		 id:5,
		 pid:0,
		 url:"#",
		 icon:'fa fa-cogs',
		 name:'ç³»ç»ç®¡ç',
    },
    {
		 id:6,
		 pid:0,
		 url:"#",
		 icon:'fa fa-file-text-o',
		 name:'æç« ç®¡ç',
    },
    {
		 id:7,
		 pid:0,
		 url:"#",
		 icon:'fa fa-users',
		 name:'ç®¡çå',
    },
    {
		 id:8,
		 pid:0,
		 url:"#",
		 icon:'fa fa-user',
		 name:'ä¼åç®¡ç',	  
    },
    {
		 id:9,
		 pid:0,
		 url:"#",
		 icon:'fa fa-bar-chart',
		 name:'æ¥è¡¨ç®¡ç',
    },
    {
		 id:10,
		 pid:0,
		 url:"#",
		 icon:'fa fa-file-photo-o',
		 name:'å¹¿åç®¡ç',
    },{
		 id:11,
		 pid:0,
		 url:"#",
		 icon:'fa fa-file-photo-o',
		 name:'åé¡µç®¡ç',
    },{
		 id:12,
		 pid:0,
		 url:"#",
		 icon:'fa fa-home',
		 name:'åç«¯ç®¡ç',
    },{
		 id:13,
		 pid:0,
		 url:"#",
		 icon:'fa fa-comments',
		 name:'çè¨ç®¡ç',
    },{
		 id:14,
		 pid:0,
		 url:"#",
		 icon:'fa fa-laptop',
		 name:'åºéºç®¡ç',
    },{
		 id:20,
		 pid:11,
		 url:"page_list.html",
		 icon:'fa fa-angle-double-right',
		 name:'åååè¡¨',
    },
		{
		  id:25,
		  pid:1,
		  icon:'fa fa-angle-double-right',
		  url:'home.html',
		  name:'å°å¾å±ç¤º',

	},
		{
		  id:26,
		  pid:8,
		  icon:'fa fa-angle-double-right',
		  url:'member_list.html',
		  name:'ä¼ååè¡¨',

	},
	{
		 id:26,
		 pid:1,
		 icon:'fa fa-angle-double-right',
		 url:'index.html',
		 name:'é¦é¡µ',

  },
	{
		  id:34,
		  pid:2,
		  icon:'fa fa-angle-double-right',
		  url:'add_product.html',
		  name:'æ·»å åå',

	},
	{
		 id:35,
		 pid:2,
		 icon:'fa fa-angle-double-right',
		 url:'Brand_Manage.html',
		 name:'åçç®¡ç',

  },
	{
		 id:36,
		 pid:2,
		 icon:'fa fa-angle-double-right',
		 url:'Products.html',
		 name:'åååç±»',

	},
	{
		 id:37,
		 pid:12,
		 icon:'fa fa-angle-double-right',
		 url:'Columns.html',
		 name:'æ ç®ç®¡ç',

	},{
		 id:38,
		 pid:9,
		 icon:'fa fa-angle-double-right',
		 url:'',
		 name:'è®¿é®ç»è®¡',

	},{
		 id:39,
		 pid:9,
		 icon:'fa fa-angle-double-right',
		 url:'',
		 name:'ä¸ç»©ç»è®¡',

	},
	
		{
		 id:45,
		 pid:7,
		 icon:'fa fa-angle-double-right',
		 url:'admin_Competence.html',
		 name:'æéè®¾ç½®',

	},{
		 id:46,
		 pid:3,
		 icon:'fa fa-angle-double-right',
		 url:'Order_form.html',
		 name:'è®¢åç®¡ç',

	},{
		 id:47,
		 pid:3,
		 icon:'fa fa-angle-double-right',
		 url:'Refund.html',
		 name:'éæ¬¾ç®¡ç',

	},{
		 id:54,
		 pid:7,
		 icon:'fa fa-angle-double-right',
		 url:'administrator_list.html',
		 name:'ç®¡çåè®¾ç½®',

	},{
		 id:55,
		 pid:7,
		 icon:'fa fa-angle-double-right',
		 url:'Personal_info.html',
		 name:'ç®¡çåä¿¡æ¯',

	},
		{
		 id:56,
		 pid:2,
		 icon:'fa fa-angle-double-right',
		 url:'Products.html',
		 name:'åç±»ç®¡ç',

	},
	{
		  id:37,
		  pid:3,
		  icon:'fa fa-angle-double-right',
		  url:'Order.html',
		  name:'äº¤æç»è®¡',

	},
	{
		 id:38,
		 pid:3,
		 icon:'fa fa-angle-double-right',
		 url:'Brand_Manage.html',
		 name:'è®¢åå¤ç',

  },
	{
		 id:39,
		 pid:3,
		 icon:'fa fa-angle-double-right',
		 url:'Order_Logistics.html',
		 name:'ç©æµç®¡ç',

	},
	{
		 id:40,
		 pid:3,
		 icon:'fa fa-angle-double-right',
		 url:'Order_Chart.html',
		 name:'è®¢åç»è®¡ï¼å¨å½å¾ï¼',

	},

	{
		 id:41,
		 pid:4,
		 icon:'fa fa-angle-double-right',
		 url:'payment_method.html',
		 name:'æ¯ä»ç®¡ç',

  },
	{
		 id:42,
		 pid:4,
		 icon:'fa fa-angle-double-right',
		 url:'Payment_Configure.html',
		 name:'æ¯ä»éç½®',

	},{
		 id:43,
		 pid:10,
		 icon:'fa fa-angle-double-right',
		 url:'Advertising_list.html',
		 name:'å¹¿ååè¡¨',

	},
		{
		 id:44,
		 pid:10,
		 icon:'fa fa-angle-double-right',
		 url:'Advertising_sort.html',
		 name:'å¹¿ååç±»',

	},{
		 id:45,
		 pid:5,
		 icon:'fa fa-angle-double-right',
		 url:'system_columns.html',
		 name:'æ ç®è®¾ç½®',

	},
		{
		 id:46,
		 pid:5,
		 icon:'fa fa-angle-double-right',
		 url:'form_builder.html',
		 name:'èªå®é¡µé¢',

	},
		{
		 id:46,
		 pid:5,
		 icon:'fa fa-angle-double-right',
		 url:'system_info.html',
		 name:'ç³»ç»è®¾ç½®',

	},
		{
		 id:47,
		 pid:5,
		 icon:'fa fa-angle-double-right',
		 url:'rizhi_list.html',
		 name:'ç³»ç»æ¥å¿',

	},{
		 id:48,
		 pid:13,
		 icon:'fa fa-angle-double-right',
		 url:'feedback.html',
		 name:'çè¨åé¦',

	},{
		 id:49,
		 pid:13,
		 icon:'fa fa-angle-double-right',
		 url:'Notice.html',
		 name:'æ¶æ¯éç¥',

	},
		
	{
		 id:55,
		 pid:6,
		 icon:'fa fa-angle-double-right',
		 url:'Article_list.html',
		 name:'æç« åè¡¨',

	}]
//è®¾ç½®æ¡æ¶
 $(function() {  		 
	 $("#Sellerber").frame({
		float : 'left',//è®¾ç½®èåæ ç®æ¹åå±æ§
		minStatue:true,//åæ¢æ¨¡å¼
		hheight:70,//è®¾ç½®é¡¶é¨é«åº¦ é«åº¦ä¸º0æ¶èªå¨æ ·å¼åæ¢ï¼è¾¾å°å¦å¤ä¸ç§çé¢ææï¼
		bheight:30,//è®¾ç½®åºé¨é«åº¦
		mwidth:200,//èåæ å®½åº¦ï¼æå¥½ä¸è¦æ¹å¨è¯¥æ°å¼ï¼ä¸è¬200çå®½åº¦å¼æå¥½ï¼
		switchwidth:50,//åæ¢èåæ ç®å®½åº¦
		color_btn:'.skin_select',//è®¾ç½®é¢è²
		menu_nav:'.menu_list',//è®¾ç½®æ ç®å±æ§
		column_list:'.column_list',//è®¾ç½®æ ç®åç§°
		time:'.date_time',//è®¾ç½®æ¶é´å±æ§(ä¸å¡«åä¸æ¾ç¤º)
		logo_img:'images/logo_01.png',//logoå°åé¾æ¥ï¼å½headerä¸º0æ¶æ¾ç¤ºè¯¥å±æ§ï¼
	    Sellerber_content:'.Sellerber_content',//å³ä¾§åç§°
		Sellerber_menu:'.list_content', //å·¦ä¾§æ ç®
		header:'.Sellerber_header',//é¡¶é¨æ ç®	
		prompt:'.prompt_style',
		prompt_btn:'#promptbtn',//ç¹å»äºä»¶
		data:data,//æ°æ®
		mouIconOpen:"fa fa-angle-down",// èå(å±å¼)å¾æ 
	    mouIconClose:"fa fa-angle-up" , // èåï¼éèï¼å¾æ 
		Rightclick:true//æ¯å¦ç¦ç¨å³é®
	 }); 
});
$('#Exit_system').on('click', function(){
      layer.confirm('æ¯å¦ç¡®å®éåºç³»ç»ï¼', {
     btn: ['æ¯','å¦'] ,//æé®
	 icon:2,
    }, 
	function(){
	  location.href="login.html";  
    });
});
</script>

