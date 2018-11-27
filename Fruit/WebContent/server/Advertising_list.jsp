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
<script src="js/Sellerber.js" type="text/javascript"></script>
<script src="js/shopFrame.js" type="text/javascript"></script>
<script src="js/layer/layer.js" type="text/javascript"></script>
<script src="js/laydate/laydate.js" type="text/javascript"></script>
<script type="text/javascript" src="js/proTree.js" ></script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js" type="text/javascript"></script>
<script src="js/respond.min.js"></script>
<script src="js/css3-mediaqueries.js"  type="text/javascript"></script>
  <![endif]-->
<title>å¹¿ååè¡¨</title>
</head>
<body>
<div class="clearfix" id="page_style">
 <div class="Advertising_list  clearfix" id="Sellerber">
   <div class="Sellerber_left menu" id="menuBar">
    <div class="show_btn" id="rightArrow"><span></span></div>
    <div class="side_title"><a title="éè" class="close_btn"><span></span></a></div> 
    <div class="menu_style" id="menu_style">
    <div class="list_content">
     <div class="side_list">
       <div class="column_title"><h4 class="lighter smaller">å¹¿ååç±»</h4></div>
       <div class="st_tree_style tree"></div>
     </div>
    </div>
   </div>
  </div>
  <div class="list_Exhibition list_show padding15">
  <div class="operation clearfix mb15 searchs_style">
    <button class="btn button_btn btn-danger" type="button" onclick=""><i class="fa fa-trash-o"></i>&nbsp;æ¹éå é¤</button>
    <a href="javascript:" onClick="add_ads()" name="" class="btn button_btn bg-deep-blue" title="æ·»å äº§å"><i class="fa  fa-edit"></i>&nbsp;æ·»å å¹¿å</a>
    <span class="line30 r_f">æ°éï¼3433ä»¶</span>
   </div>
   <!--æ°æ®å±ç¤º-->
    <div class="datalist_show">
      <div class="datatable_height confirm gallery">
        <table class="table table_list table_striped table-bordered " id="sample-table">
		<thead>
		 <tr>
				<th width="25"><label><input type="checkbox" class="ace"><span class="lbl"></span></label></th>
                <th width="120px">æåº</th>
				<th width="100">åç±»</th>
				<th width="220px">å¾ç</th>
				<th width="150px">å°ºå¯¸ï¼å¤§å°ï¼</th>
				<th width="250px">é¾æ¥å°å</th>
				<th width="180px">å å¥æ¶é´</th>
				<th width="70px">ç¶æ</th>                
				<th width="250px">æä½</th>
			</tr>
		</thead>
	<tbody>
      <tr>
       <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
       <td><input name="" type="text"  style=" width:50px" placeholder="1"/></td>
       <td>å¹»ç¯ç</td>
       <td><span class="ad_img"><a href="product_img/ad.jpg" class="zoomimg"><img src="product_img/ad.jpg"  width="100%" height="100%"/></a></span></td>
       <td>1890x1080</td>
       <td><a href="#" target="_blank">http://item.jd.com/10443270082.html</a></td>
       <td>2016-6-29 12:34</td>
       <td class="td-status"><span class="label label-success radius">æ¾ç¤º</span></td>
      <td class="td-manage">
        <a onClick="member_stop(this,'10001')"  href="javascript:;" title="éè"  class="btn btn-xs btn-status">éè</a>  
        <a title="ç¼è¾" onclick="" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
        <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
       </td>
      </tr>
       <tr>
       <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
       <td><input name="" type="text"  style=" width:50px" placeholder="1"/></td>
       <td>å¹»ç¯ç</td>
       <td><span class="ad_img"><a href="product_img/1.jpg" class="zoomimg"><img src="product_img/1.jpg"  width="100%" height="100%"/></a></span></td>
       <td>1890x1080</td>
       <td><a href="#" target="_blank">http://item.jd.com/10443270082.html</a></td>
       <td>2016-6-29 12:34</td>
       <td class="td-status"><span class="label label-success radius">æ¾ç¤º</span></td>
      <td class="td-manage">
        <a onClick="member_stop(this,'10001')"  href="javascript:;" title="éè"  class="btn btn-xs btn-status">éè</a>  
        <a title="ç¼è¾" onclick="" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
        <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
       </td>
      </tr>
       <tr>
       <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
       <td><input name="" type="text"  style=" width:50px" placeholder="1"/></td>
       <td>å¹»ç¯ç</td>
       <td><span class="ad_img"><a href="product_img/ad2.jpg" class="zoomimg"><img src="product_img/ad2.jpg"  width="100%" height="100%"/></a></span></td>
       <td>1890x1080</td>
       <td><a href="#" target="_blank">http://item.jd.com/10443270082.html</a></td>
       <td>2016-6-29 12:34</td>
       <td class="td-status"><span class="label label-defaunt radius">éè</span></td>
      <td class="td-manage">
<a style="text-decoration:none" class="btn btn-xs " onClick="member_start(this,id)" href="javascript:;" title="æ¾ç¤º">æ¾ç¤º</a>
        <a title="ç¼è¾" onclick="" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
        <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
       </td>
      </tr>
       <tr>
       <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
       <td><input name="" type="text"  style=" width:50px" placeholder="1"/></td>
       <td>å¹»ç¯ç</td>
       <td><span class="ad_img"><a href="product_img/ad1.jpg" class="zoomimg"><img src="product_img/ad1.jpg"  width="100%" height="100%"/></a></span></td>
       <td>1890x1080</td>
       <td><a href="#" target="_blank">http://item.jd.com/10443270082.html</a></td>
       <td>2016-6-29 12:34</td>
       <td class="td-status"><span class="label label-success radius">æ¾ç¤º</span></td>
      <td class="td-manage">
        <a onClick="member_stop(this,'10001')"  href="javascript:;" title="éè"  class="btn btn-xs btn-status">éè</a>  
        <a title="ç¼è¾" onclick="" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
        <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
       </td>
      </tr>
         <tr>
       <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
       <td><input name="" type="text"  style=" width:50px" placeholder="1"/></td>
       <td>å¹»ç¯ç</td>
       <td><span class="ad_img"><a href="product_img/ad1.jpg" class="zoomimg"><img src="product_img/ad1.jpg"  width="100%" height="100%"/></a></span></td>
       <td>1890x1080</td>
       <td><a href="#" target="_blank">http://item.jd.com/10443270082.html</a></td>
       <td>2016-6-29 12:34</td>
       <td class="td-status"><span class="label label-success radius">æ¾ç¤º</span></td>
      <td class="td-manage">
        <a onClick="member_stop(this,'10001')"  href="javascript:;" title="éè"  class="btn btn-xs btn-status">éè</a>  
        <a title="ç¼è¾" onclick="" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
        <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
       </td>
      </tr>
         <tr>
       <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
       <td><input name="" type="text"  style=" width:50px" placeholder="1"/></td>
       <td>å¹»ç¯ç</td>
       <td><span class="ad_img"><a href="product_img/ad1.jpg" class="zoomimg"><img src="product_img/ad1.jpg"  width="100%" height="100%"/></a></span></td>
       <td>1890x1080</td>
       <td><a href="#" target="_blank">http://item.jd.com/10443270082.html</a></td>
       <td>2016-6-29 12:34</td>
       <td class="td-status"><span class="label label-success radius">æ¾ç¤º</span></td>
      <td class="td-manage">
        <a onClick="member_stop(this,'10001')"  href="javascript:;" title="éè"  class="btn btn-xs btn-status">éè</a>  
        <a title="ç¼è¾" onclick="" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
        <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
       </td>
      </tr>
         <tr>
       <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
       <td><input name="" type="text"  style=" width:50px" placeholder="1"/></td>
       <td>éç¨å¹¿å</td>
       <td><span class="ad_img"><a href="product_img/ad1.jpg" class="zoomimg"><img src="product_img/ad1.jpg"  width="100%" height="100%"/></a></span></td>
       <td>1890x1080</td>
       <td><a href="#" target="_blank">http://item.jd.com/10443270082.html</a></td>
       <td>2016-6-29 12:34</td>
       <td class="td-status"><span class="label label-success radius">æ¾ç¤º</span></td>
      <td class="td-manage">
        <a onClick="member_stop(this,'10001')"  href="javascript:;" title="éè"  class="btn btn-xs btn-status">éè</a>  
        <a title="ç¼è¾" onclick="" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
        <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
       </td>
      </tr>
         <tr>
       <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
       <td><input name="" type="text"  style=" width:50px" placeholder="1"/></td>
       <td>å¹»ç¯ç</td>
       <td><span class="ad_img"><a href="product_img/ad1.jpg" class="zoomimg"><img src="product_img/ad1.jpg"  width="100%" height="100%"/></a></span></td>
       <td>1890x1080</td>
       <td><a href="#" target="_blank">http://item.jd.com/10443270082.html</a></td>
       <td>2016-6-29 12:34</td>
       <td class="td-status"><span class="label label-success radius">æ¾ç¤º</span></td>
      <td class="td-manage">
        <a onClick="member_stop(this,'10001')"  href="javascript:;" title="éè"  class="btn btn-xs btn-status">éè</a>  
        <a title="ç¼è¾" onclick="" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
        <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
       </td>
      </tr>
         <tr>
       <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
       <td><input name="" type="text"  style=" width:50px" placeholder="1"/></td>
       <td>éç¨å¹¿å</td>
       <td><span class="ad_img"><a href="product_img/ad3.jpg" class="zoomimg"><img src="product_img/ad3.jpg"  width="100%" height="100%"/></a></span></td>
       <td>1890x1080</td>
       <td><a href="#" target="_blank">http://item.jd.com/10443270082.html</a></td>
       <td>2016-6-29 12:34</td>
       <td class="td-status"><span class="label label-success radius">æ¾ç¤º</span></td>
      <td class="td-manage">
        <a onClick="member_stop(this,'10001')"  href="javascript:;" title="éè"  class="btn btn-xs btn-status">éè</a>  
        <a title="ç¼è¾" onclick="" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
        <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
       </td>
      </tr>
         <tr>
       <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
       <td><input name="" type="text"  style=" width:50px" placeholder="1"/></td>
       <td>å¹»ç¯ç</td>
       <td><span class="ad_img"><a href="product_img/ad1.jpg" class="zoomimg"><img src="product_img/ad1.jpg"  width="100%" height="100%"/></a></span></td>
       <td>1890x1080</td>
       <td><a href="#" target="_blank">http://item.jd.com/10443270082.html</a></td>
       <td>2016-6-29 12:34</td>
       <td class="td-status"><span class="label label-success radius">æ¾ç¤º</span></td>
      <td class="td-manage">
        <a onClick="member_stop(this,'10001')"  href="javascript:;" title="éè"  class="btn btn-xs btn-status">éè</a>  
        <a title="ç¼è¾" onclick="" href="javascript:;"  class="btn btn-xs btn-info" >ç¼è¾</a> 
        <a title="å é¤" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >å é¤</a>
       </td>
      </tr>
     </tbody>
     </table>
      <div class="clear"></div>
	</div>
   </div>
  </div>
 </div>
</div>
<!--æ·»å å¹¿åæ ·å¼-->
<div id="Advert_add_style" class="Advert_add_style padding display" >
 <div class="add_style">
 <ul>
  <li class="clearfix"><label class="label_name col-xs-2">å¾çåç§°ï¼&nbsp;&nbsp;</label><span class="cont_style col-xs-9"><input name="å¾çåç§°" type="text" id="form-field-1" class="col-xs-10 col-sm-5" style="width:450px"></span></li>
  <li class="clearfix"><label class="label_name col-xs-2">æ¾ç¤ºæåºï¼&nbsp;&nbsp;</label><span class="cont_style col-xs-9"><input name="æåº" type="text" id="form-field-1" placeholder="0" class="col-xs-10 col-sm-5" style="width:50px"></span></li>
  <li class="clearfix"><label class="label_name col-xs-2">é¾æ¥å°åï¼&nbsp;&nbsp;</label><span class="cont_style col-xs-9"><input name="å°å" type="text" id="form-field-1" placeholder="å°å" class="col-xs-10 col-sm-5" style="width:450px"></span></li>
   <li class="clearfix"><label class="label_name col-xs-2">ç¶&nbsp;&nbsp;æï¼&nbsp;&nbsp;</label>
   <div class="Add_content col-xs-9">
     <label><input name="form-field-radio1" type="radio" checked="checked" class="ace">
     <span class="lbl">æ¾ç¤º</span></label>&nbsp;&nbsp;&nbsp;
     <label><input name="form-field-radio1" type="radio" class="ace">
     <span class="lbl">éè</span></label>
     </div>
     </li >
     <li class="clearfix">
     <label class="label_name col-xs-2">è®¾ç½®æ¶é´ï¼&nbsp;&nbsp;</label> 
    <div class="Add_content col-xs-9">
    <label class="l_f checkbox_time"><input type="checkbox" name="checkbox" class="ace" id="checkbox"><span class="lbl">æ¯</span></label>
    <div class="Date_selection" style="display:none">
      <span class="label_name">å¼å§æ¥ï¼</span><p class="laydate-icon" id="start" style="width:160px; margin-right:10px; height:30px; line-height:30px; float:left"></p>
      <span class="label_name">ç»ææ¥ï¼</span><p class="laydate-icon" id="end" style="width:160px;height:30px; line-height:30px; float:left"></p>
    </div>
    </div>   
    </li>
     <li class="clearfix"><label class="label_name col-xs-2">å¾&nbsp;&nbsp;çï¼&nbsp;&nbsp;</label>
     <span class="cont_style col-xs-9">        
       <div id="preview" class="preview_img"><img id="imghead" border="0" src="images/image.png" /></div>
       <div class="fileInput ">
        <input type="file" onchange="previewImage(this)" name="upfile" id="upfile" class="upfile"/>
        <input class="upFileBtn" type="button" value="ä¸ä¼ å¾ç" onclick="document.getElementById('upfile').click()" />
        </div>
      </span>
  </li>
 </ul>
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
		minStatue:true,
	});
});
	//åå°ä¼ å¥ç æ é¢åè¡¨
var arr = [{
		id: 1,
		name: "é¦é¡µè½®æ­å¹¿åå¤§",
	    amount:4,
		pid: 0,
	    
	}, {
		id: 2,
		name: "è½®æ­å¹¿åå°",
		amount:5,
		pid: 0,
		
	}, {
		id: 3,
		name: "è½®æ­å¹¿åå°2",
		amount:4,
		pid: 0,
		
	}, {
		id: 4,
		name: "éç¨å¹¿å",
		amount:4,
		pid: 0,
		
	}, {
		id: 5,
		name: "å¾ä¹¦å½±å",
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

});
	/*å¹¿åå¾ç-åç¨*/
function member_stop(obj,id){
	layer.confirm('ç¡®è®¤è¦éèè¯¥å¹¿ååï¼',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn btn-xs " onClick="member_start(this,id)" href="javascript:;" title="æ¾ç¤º">æ¾ç¤º</a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">éè</span>');
		$(obj).remove();
		layer.msg('éè!',{icon: 5,time:1000});
	});
}
/*å¹¿åå¾ç-å¯ç¨*/
function member_start(obj,id){
	layer.confirm('ç¡®è®¤è¦æ¾ç¤ºè¯¥å¹¿ååï¼',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn btn-xs btn-status" onClick="member_stop(this,id)" href="javascript:;" title="éè">éè</a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">æ¾ç¤º</span>');
		$(obj).remove();
		layer.msg('æ¾ç¤º!',{icon: 6,time:1000});
	});
}
/*å¹¿åå¾ç-å é¤*/
function member_del(obj,id){
	layer.confirm('ç¡®è®¤è¦å é¤åï¼',{icon:0,},function(index){
		$(obj).parents("tr").remove();
		layer.msg('å·²å é¤!',{icon:1,time:1000});
	});
}
/*******æ·»å å¹¿å*********/
function add_ads(){
	  layer.open({
        type: 1,
        title: 'æ·»å å¹¿å',
		maxmin: true, 
		shadeClose: false, //ç¹å»é®ç½©å³é­å±
        area : ['800px' , ''],
        content:$('#Advert_add_style'),
		btn:['æäº¤','åæ¶'],
		yes:function(index,layero){	
		 var num=0;
		 var str="";
     $(".add_adverts input[type$='text']").each(function(n){
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
	 /*checkboxæ¿åäºä»¶*/
$('#checkbox').on('click',function(){
	if($('input[name="checkbox"]').prop("checked")){
		 $('.Date_selection ').css('display','block');
		}
	else{
		
		 $('.Date_selection').css('display','none');
		}	
	});
  /******æ¶é´è®¾ç½®*******/
  var start = {
    elem: '#start',
    format: 'YYYY-MM-DD',
    min: laydate.now(), //è®¾å®æå°æ¥æä¸ºå½åæ¥æ
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
    min: laydate.now(),
    max: '2099-06-16',
    istime: true,
    istoday: false,
    choose: function(datas){
        start.max = datas; //ç»ææ¥éå¥½åï¼éç½®å¼å§æ¥çæå¤§æ¥æ
    }
};
laydate(start);
laydate(end);
</script>
<script type="text/javascript">
function updateProgress(file) {
	$('.progress-box .progress-bar > div').css('width', parseInt(file.percentUploaded) + '%');
	$('.progress-box .progress-num > b').html(SWFUpload.speed.formatPercent(file.percentUploaded));
	if(parseInt(file.percentUploaded) == 100) {
		// å¦æä¸ä¼ å®æäº
		$('.progress-box').hide();
	}
}

function initProgress() {
	$('.progress-box').show();
	$('.progress-box .progress-bar > div').css('width', '0%');
	$('.progress-box .progress-num > b').html('0%');
}

function successAction(fileInfo) {
	var up_path = fileInfo.path;
	var up_width = fileInfo.width;
	var up_height = fileInfo.height;
	var _up_width,_up_height;
	if(up_width > 120) {
		_up_width = 120;
		_up_height = _up_width*up_height/up_width;
	}
	$(".logobox .resizebox").css({width: _up_width, height: _up_height});
	$(".logobox .resizebox > img").attr('src', up_path);
	$(".logobox .resizebox > img").attr('width', _up_width);
	$(".logobox .resizebox > img").attr('height', _up_height);
}

var swfImageUpload;
$(document).ready(function() {
	var settings = {
		flash_url : "Widget/swfupload/swfupload.swf",
		flash9_url : "Widget/swfupload/swfupload_fp9.swf",
		upload_url: "upload.php",// æ¥åä¸ä¼ çå°å
		file_size_limit : "5MB",// æä»¶å¤§å°éå¶
		file_types : "*.jpg;*.gif;*.png;*.jpeg;",// éå¶æä»¶ç±»å
		file_types_description : "å¾ç",// è¯´æï¼èªå·±å®ä¹
		file_upload_limit : 100,
		file_queue_limit : 0,
		custom_settings : {},
		debug: false,
		// Button settings
		button_image_url: "Widget/swfupload/upload-btn.png",
		button_width: "95",
		button_height: "30 ",
		button_placeholder_id: 'uploadBtnHolder',
		button_window_mode : SWFUpload.WINDOW_MODE.TRANSPARENT,
		button_cursor : SWFUpload.CURSOR.HAND,
		button_action: SWFUpload.BUTTON_ACTION.SELECT_FILE,
		
		moving_average_history_size: 40,
		
		// The event handler functions are defined in handlers.js
		swfupload_preload_handler : preLoad,
		swfupload_load_failed_handler : loadFailed,
		file_queued_handler : fileQueued,
		file_dialog_complete_handler: fileDialogComplete,
		upload_start_handler : function (file) {
			initProgress();
			updateProgress(file);
		},
		upload_progress_handler : function(file, bytesComplete, bytesTotal) {
			updateProgress(file);
		},
		upload_success_handler : function(file, data, response) {
			// ä¸ä¼ æååå¤çå½æ°
			var fileInfo = eval("(" + data + ")");
			successAction(fileInfo);
		},
		upload_error_handler : function(file, errorCode, message) {
			alert('ä¸ä¼ åçäºéè¯¯ï¼');
		},
		file_queue_error_handler : function(file, errorCode, message) {
			if(errorCode == -110) {
				alert('æ¨éæ©çæä»¶å¤ªå¤§äºã');	
			}
		}
	};
	swfImageUpload = new SWFUpload(settings);
});
</script>