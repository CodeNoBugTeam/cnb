<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>æ·»å åç</title>
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
<script type="text/javascript" src="js/proTree.js" ></script>
<script src="js/dist/echarts.js" type="text/javascript"></script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js" type="text/javascript"></script>
<script src="js/respond.min.js"></script>
<script src="js/css3-mediaqueries.js"  type="text/javascript"></script>
  <![endif]-->
</head>
<body>
<div id="add_brand" class="margin">
<div class="h_products_list clearfix mb20" id="Sellerber">
  <div class="Sellerber_left menu" id="menuBar">
    <div class="show_btn" id="rightArrow"><span></span></div>
    <div class="side_title"><a title="éè" class="close_btn"><span></span></a></div>
    <div class="menu_style" id="menu_style">
    <div class="list_content">
     <div class="side_list">
      <div class="left_add clearfix">
       <div class="column_title">æ·»å åç</div>
      <ul class="add_conent">
       <li class=" clearfix"><label class="label_name"><i>*</i>åçåç§°ï¼</label> <input name="" type="text" class="add_text form-control"/></li>
       <li class=" clearfix"><label class="label_name"><i>*</i>åçåºå·ï¼</label> <input name="" type="text" class="add_text form-control" style="width:80px"/></li>
       <li class=" clearfix"><label class="label_name">åçå¾çï¼</label>
           <div class="demo l_f">
	           <div class="logobox"><div class="resizebox"><img src="images/image.png" width="100px" alt="" height="100px"/></div></div>	
               <div class="logoupload">
                  <div class="btnbox"><a id="uploadBtnHolder" class="uploadbtn" href="javascript:;">ä¸ä¼ æ¿æ¢</a></div>
                  <div style="clear:both;height:0;overflow:hidden;"></div>
                  <div class="progress-box" style="display:none;">
                    <div class="progress-num">ä¸ä¼ è¿åº¦ï¼<b>0%</b></div>
                    <div class="progress-bar"><div style="width:0%;" class="bar-line"></div></div>
                  </div>
              </div>            
                      
           </div> <div class="prompt"><p>å¾çå¤§å°<b>120px*60px</b>å¾çå¤§å°å°äº5MB,</p><p>æ¯æ.jpg;.gif;.png;.jpegæ ¼å¼çå¾ç</p></div>  
    </li>
         <li class=" clearfix"><label class="label_name"><i>*</i>æå±å°åºï¼</label> <input name="" type="text" class="add_text" style="width:120px"/></li>
         <li class=" clearfix"><label class="label_name">åçæè¿°ï¼</label> <textarea name="" cols="" rows="" class="textarea" onkeyup="checkLength(this);"></textarea><span class="wordage">å©ä½å­æ°ï¼<span id="sy" style="color:Red;">500</span>å­</span></li>
         <li class=" clearfix"><label class="label_name"><i>*</i>æ¾ç¤ºç¶æï¼</label> 
         <label><input name="checkbox" type="radio" class="ace" checked="checked"><span class="lbl">æ¾ç¤º</span></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <label><input type="radio" class="ace" name="checkbox"><span class="lbl">ä¸æ¾ç¤º</span></label>
         </li>
       </ul>
     </div>
      </div>
    </div>
  </div>
 </div>
 <div class="right_add list_Exhibition list_show">
  <div class="column_title">æ·»å åå</div>
 
    <div class="p_select_list clearfix">
        <div class="left_produt produt_select_style" >
           <span class="seach_style"><input name="" type="text"  id="seach" class="seach"><i class="fa fa-search"></i></span>
           <div id="select_style" class="datatable_height"></div>   
          
        </div>
        <div  class="Switching_btn"> 
        
          <span id="add_all"  class="Switching">
          <input type="button" class="btn button_btn btn-success" value=">>"/>
          </span>
          <span id="add" class="Switching">
          <input type="button" class="btn button_btn bg-deep-blue" value=">"/>
          </span>
          <span id="remove"  class="Switching">
          <input type="button" class="btn button_btn bg-deep-blue" value="<"/>
          </span>
          <span id="remove_all"  class="Switching">
          <input type="button" class="btn button_btn btn-success" value="<<"/>
          </span> 
          </div>
        <div class="right_product produt_select_style ">
          <div class="title_name">éä¸­äº§å</div>
          <div class="datatable_height">
          <select multiple="multiple" id="select2" class="select">
          </select>
         </div>
        </div>
      </div>
  </div>
  </div>
   <div class="operation clearfix mb20 same_module align">
 <input name="" type="button"  class="btn button_btn bg-deep-blue" value="ä¿å­"/>
 <input name="" type="reset" value="åæ¶" class="btn button_btn btn-Dark-success"/>
</div>
</div>
</body>
</html>
<script type="text/javascript">
	function checkLength(which) {
	var maxChars = 500;
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
		var curr = maxChars - which.value.length; // åå» å½åè¾å¥ç
		document.getElementById("sy").innerHTML = curr.toString();
		return true;
	}
}
//ä¸ææ¡äº¤æ¢JQuery
$(function(){
    //ç§»å°å³è¾¹
    $('#add').click(function() {
    //è·åéä¸­çéé¡¹ï¼å é¤å¹¶è¿½å ç»å¯¹æ¹
        $('#select1 option:selected').appendTo('#select2');
    });
    //ç§»å°å·¦è¾¹
    $('#remove').click(function() {
        $('#select2 option:selected').appendTo('#select1');
    });
    //å¨é¨ç§»å°å³è¾¹
    $('#add_all').click(function() {
        //è·åå¨é¨çéé¡¹,å é¤å¹¶è¿½å ç»å¯¹æ¹
        $('#select1 option').appendTo('#select2');
    });
    //å¨é¨ç§»å°å·¦è¾¹
    $('#remove_all').click(function() {
        $('#select2 option').appendTo('#select1');
    });
    //åå»éé¡¹
    $('#select1').dblclick(function(){ //ç»å®åå»äºä»¶
        //è·åå¨é¨çéé¡¹,å é¤å¹¶è¿½å ç»å¯¹æ¹
        $("option:selected",this).appendTo('#select2'); //è¿½å ç»å¯¹æ¹
    });
    //åå»éé¡¹
    $('#select2').dblclick(function(){
       $("option:selected",this).appendTo('#select1');
    });
});
		var user=[{"id": 1, "name": "è´å¾·çï¼Biodermaï¼æ¸©åå¸å¦æ°´åå¦/èå¦æ´è¤æ¶²å¸å¦æ°´ ","status":"å³é­"},
              {"id": 2, "name": "æ¬§è¯æ¼«OSMå¥¢åéèè»è´µå¨å® ç¤¼ç","status":"å³é­"},
              {"id": 3, "name": "èè¾æ´åæ°´å¥¢å»ç²¾æ²¹å¥è£","status":"å³é­"},
              {"id": 4, "name": "éè³å°é»è£é¦ä½ä¹³150g","status":"å³é­"},
              {"id": 5, "name": "ååªä¹ï¼CAMENAEï¼ç«ç°ä¹ç±ä¿","status":"å¯ç¨"},
              {"id": 6, "name": "æ¬§è±éç·å£«æ¤è¤å¥è£ å²è½æéæ´»è¤æ¶²50ml","status":"å¯ç¨"},
              {"id": 7, "name": "ç¾å³é¢èåéäº®è¤å¥è£é¢èè´´åçº§ç","status":"å¯ç¨"},
              {"id": 8, "name": "å¯æ ç¶ï¼KUYURAï¼ç¾èæ²æµ´é²ï¼æ¬£æ¡å¹½é¦ï¼550ml ","status":"å¯ç¨"},
              {"id": 9, "name": "ææ½å¾·ææ¼±å£æ°´å°èå£å³500mlååè£","status":"å¯ç¨"},
              {"id": 10, "name": "å(Ryo)æ»å»é§åå¯éè¹é§[æ»æ¶¦å]æ´æ¤å¥è£ ","status":"å¯ç¨"},
              {"id": 11, "name": "ç¾å®è²ï¼MAYBELLINEï¼æ°å«BB","status":"å³é­"},
              {"id": 12, "name": "I'M CONCEALERæç±æ°´æ¶¦é®çæ¶² #02 èªç¶è¤è²","status":"å¯ç¨"},
              {"id": 13, "name": "Apple iPhone 6s (A1700) 64G ç«ç°éè² ç§»å¨èéçµä¿¡4Gææº","status":"å¯ç¨"},
              {"id": 14, "name": "å°ç±³Maxå¨ç½é é«éç 3GBåå­ 64GB ROM éè² ç§»å¨èéçµä¿¡4Gææº ","status":"å¯ç¨"},
              {"id": 15, "name": "OPPOR94GB+64GBåå­ç ç«ç°é å¨ç½é4Gææº åå¡åå¾","status":"å¯ç¨"},
              {"id": 16, "name": "åä¸ºP9å¨ç½é 3GB+32GBç æµåé ç§»å¨èéçµä¿¡4Gææº åå¡åå¾ ","status":"å¯ç¨"},
              {"id": 17, "name": "åä¸ºMate 8 3GB+32GBç æåé¶ ç§»å¨èéçµä¿¡4Gææº åå¡åå¾","status":"å¯ç¨"},
              {"id": 18, "name": "åªæ¯äº(nubia)ã3+64GBãå°ç5Z11mini ç½è² ç§»å¨èéçµä¿¡4Gææº åå¡åå¾","status":"å¯ç¨"},
              {"id": 19, "name": "ä¸æGalaxyA9(SM-A9100)é­å¹»éå¨ç½é4Gææº åå¡åå¾ ","status":"å¯ç¨"},
              {"id": 20, "name": "åä¸ºçäº«5æ¢¦å¹»éç§»å¨èéçµä¿¡4Gææºåå¡åå¾","status":"å³é­"}];
     $(document).ready(function(){
        var seach=$("#seach");
		seach.keyup(function(event){
		//è·åå½åææ¬æ¡çå¼
        var seachText=$("#seach").val();
		 var product="<select multiple='multiple' id='select1' class='select'>";
		  if(seachText!=""){			 
			  $.each(user,function(id, item){				     				    
                     //å¦æåå«åä¸ºselectèµå¼
                     if(item.name.indexOf(seachText)!=-1){
                        product+="<option value="+item.id+">"+"("+item.status+")"+item.name+"</option>";
                     }
                  })								  
				  $("#select_style").html(product);
			  }
			  else{					 
				  $.each(user,function(id, item){
					name = item.name; 
					status= item.status;
				   product+="<option value="+item.id+">"+"("+item.status+")"+item.name+"</option>";				   
				  })
                  $("#select_style").html(product);
               }
			   product+"</select>";
		}) ;
					
			    var product="";	
				 product+="<select multiple='multiple' id='select1' class='select'>";
				  $.each(user,function(id, item){
					name = item.name;  
					status= item.status;
				   product+="<option value="+item.id+" title="+item.name+">"+"("+item.status+")"+item.name+"</option>";
				   
				  })
				  product+"</select>";
                  $("#select_style").html(product);        
	})
$(function() { 
	$("#Sellerber").frame({
		float : 'left',
		color_btn:'.skin_select',
		Sellerber_menu:'.list_content',
		page_content:'.list_show',//åå®¹
		datalist:".datatable_height",//æ°æ®åè¡¨é«åº¦åå¼
		header:65,//é¡¶é¨é«åº¦
		mwidth:550,//èåæ å®½åº¦
		treename:".add_conent",
		Defining:function(thisBox,settings){
			thisBox.find(settings.page_content).niceScroll({
			    cursorcolor:"#888888",  
				cursoropacitymax:1,  
				touchbehavior:false,  
				cursorwidth:"5px",  
				cursorborder:"0",  
				cursorborderradius:"5px",
		   });
			
		}
		
	});
});
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
		flash_url : "js/swfupload/swfupload.swf",
		flash9_url : "js/swfupload/swfupload_fp9.swf",
		upload_url: "upload.php",// æ¥åä¸ä¼ çå°å
		file_size_limit : "5MB",// æä»¶å¤§å°éå¶
		file_types : "*.jpg;*.gif;*.png;*.jpeg;",// éå¶æä»¶ç±»å
		file_types_description : "å¾ç",// è¯´æï¼èªå·±å®ä¹
		file_upload_limit : 100,
		file_queue_limit : 0,
		custom_settings : {},
		debug: false,
		// Button settings
		button_image_url: "js/swfupload/upload-btn.png",
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
