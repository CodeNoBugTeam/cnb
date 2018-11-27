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
<script src="js/jquery.dataTables.min.js"></script>
<script src="js/jquery.dataTables.bootstrap.js"></script>
<title>å¹¿ååç±»</title>
</head>
<!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <script src="js/respond.min.js"></script>
  <script src="js/css3-mediaqueries.js"  type="text/javascript"></script>
  <![endif]-->
<body>
<div class="margin advertising" id="page_style">
  <div class="operation clearfix">
<button class="btn button_btn btn-danger" type="button" onclick=""><i class="fa fa-trash-o"></i>&nbsp;å é¤</button>
<span class="submenu"><a href="javascript:void(0)" name="" onclick="add_AD_sort()" class="btn button_btn bg-deep-blue" title="æ·»å åç±»"><i class="fa  fa-edit"></i>&nbsp;æ·»å åç±»</a></span>
<div class="search  clearfix">
 <label class="label_name">æç´¢ï¼</label><input name="" type="text"  class="form-control col-xs-6"/><button class="btn button_btn bg-deep-blue " onclick=""  type="button"><i class="fa  fa-search"></i>&nbsp;æç´¢</button>
</div>
</div>
<!--åç±»ç®¡ç-->
<div class="sort_list">
 <table class="table table_list table_striped table-bordered" id="sample-table">
  <thead>
  <tr>
  <th width="30"><label><input type="checkbox" class="ace"><span class="lbl"></span></label></th>
   <th width="100">æåº</th>
   <th>åç±»åç§°</th> 
   <th>ä»ç»</th>   
   <th width="150">å¹¿åæ°é</th>
   <th width="180">æ·»å æ¶é´ï¼ææ°ï¼</th>
   <th width="150">ç¶æ</th>
   <th >å¤æ³¨</th>
   <th width="200">æä½</th>
   </tr>   
  </thead>
  <tbody>
   <tr>
   </tr>
  </tbody>
 </table>
</div>
</div>
<!--æ·»å åç±»-->
<div id="ad_sort" class="display">
 <div class="add_style">
  <ul>
   <li class="clearfix"><label class="label_name col-xs-2">åç±»åç§°ï¼&nbsp;&nbsp;</label><span class="cont_style col-xs-9"><input name="åç±»åç§°" type="text" id="form-field-1" class="col-xs-10 col-sm-5" style="width:450px"></span></li>
   <li class="clearfix"><label class="label_name col-xs-2">ç¶&nbsp;&nbsp;æï¼&nbsp;&nbsp;</label>
   <div class="Add_content col-xs-9">
     <label><input name="form-field-radio2" type="radio" checked="checked" class="ace">
     <span class="lbl">æ¾ç¤º</span></label>&nbsp;&nbsp;&nbsp;
     <label><input name="form-field-radio2" type="radio" class="ace">
     <span class="lbl">éè</span></label>
     </div>
     </li >
      <li class="clearfix"><label class="label_name col-xs-2">æ&nbsp;&nbsp;è¿°ï¼&nbsp;&nbsp;</label><span class="cont_style col-xs-9"><textarea name="æéæè¿°" class="form-control col-xs-12 col-sm-5" id="form_textarea" placeholder="" onkeyup="checkLength(this);"></textarea><span class="wordage">å©ä½å­æ°ï¼<span id="sy" style="color:Red;">200</span>å­</span></span></li>
  </ul>
 </div>
</div>
<!--æ·»å å¹¿å-->
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
<script>
var dataSet=[
 ['<label><input type="checkbox" class="ace"><span class="lbl"></span></label>','1','é¦é¡µè½®æ­å¾ï¼å¤§ï¼','é¦é¡µè½®æ­å¾','4','2016-08-28 15:23:12','å¯ç¨','','<a href="javascript:void()" onclick="Advert_add(this,'+102+')" class="btn bg-deep-blue  operation_btn">æ·»å </a> <a href="javascript:void()" onclick="picture_del(this,'+10001+')" class="btn btn-danger operation_btn">å é¤</a> <a href="advert_detailed_left.html" onclick=Advert_info(this,'+234+')" class="btn bg-deep-blue operation_btn">æ¥ç</a>'],
	 ['<label><input type="checkbox" class="ace"><span class="lbl"></span></label>','1','é¦é¡µè½®æ­å¾ï¼å¤§ï¼','é¦é¡µè½®æ­å¾','4','2016-08-28 15:23:12','å¯ç¨','','<a href="javascript:void()" onclick="Advert_add(this,'+102+')" class="btn bg-deep-blue  operation_btn">æ·»å </a> <a href="javascript:void()" onclick="picture_del(this,'+10001+')" class="btn btn-danger operation_btn">å é¤</a> <a href="advert_detailed_left.html" onclick=Advert_info(this,'+234+')" class="btn bg-deep-blue operation_btn">æ¥ç</a>'],
	 ['<label><input type="checkbox" class="ace"><span class="lbl"></span></label>','1','é¦é¡µè½®æ­å¾ï¼å¤§ï¼','é¦é¡µè½®æ­å¾','4','2016-08-28 15:23:12','å¯ç¨','','<a href="javascript:void()" onclick="Advert_add(this,'+102+')" class="btn bg-deep-blue  operation_btn">æ·»å </a> <a href="javascript:void()" onclick="picture_del(this,'+10001+')" class="btn btn-danger operation_btn">å é¤</a> <a href="advert_detailed_left.html" onclick=Advert_info(this,'+234+')" class="btn bg-deep-blue operation_btn">æ¥ç</a>'],
 ];
	
jQuery(function($) {
				var oTable1 = $('#sample-table').dataTable( {
				"data": dataSet,
				"width":"100%",	
				"bLengthChange":false,
				"iDisplayLength": 20,
				//"columns" : _tableCols,
				"aaSorting": [[ 1, "desc" ]],//é»è®¤ç¬¬å ä¸ªæåº
		        "bStateSave": true,//ç¶æä¿å­
				"searching": false,
		        "aoColumnDefs": [{"orderable":false,"aTargets":[0,2,3]
				}]
		
			   });
			
				$('table th input:checkbox').on('click' , function(){
					var that = this;
					$(this).closest('table').find('tr > td:first-child input:checkbox')
					.each(function(){
						this.checked = that.checked;
						$(this).closest('tr').toggleClass('selected');
					});
						
				});
			});
	/*äº§å-å é¤*/
function picture_del(obj,id){
	layer.confirm('ç¡®è®¤è¦å é¤åï¼',{icon:0,},function(index){
		$(obj).parents("tr").remove();
		layer.msg('å·²å é¤!',{icon:1,time:1000});
	});
}
/*****æ·»å å¹¿å******/
function Advert_add(obj ,id){
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
     $(".add_style input[type$='text']").each(function(n){
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
/***************æ·»å åç±»***********/
function add_AD_sort( ){
	  layer.open({
        type: 1,
        title: 'æ·»å åç±»',
		maxmin: false, 
		shadeClose: false, //ç¹å»é®ç½©å³é­å±
        area : ['600px' , ''],
        content:$('#ad_sort'),
		btn:['æ·»å ','åæ¶'],
			yes:function(index,layero){	
		 var num=0;
		 var str="";
		  $(".add_style input[type$='text']").each(function(n){
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
	  })
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
/*******æ»å¨æ¡*******/
$("body").niceScroll({  
	cursorcolor:"#888888",  
	cursoropacitymax:1,  
	touchbehavior:false,  
	cursorwidth:"5px",  
	cursorborder:"0",  
	cursorborderradius:"5px"  
});
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
</script>
