<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Cache-Control" content="no-siteapp" />
 <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link href="css/shop.css" type="text/css" rel="stylesheet" />
<link href="css/Sellerber.css" type="text/css"  rel="stylesheet" />
<link href="css/bkg_ui.css" type="text/css"  rel="stylesheet" />
<link href="font/css/font-awesome.min.css"  rel="stylesheet" type="text/css" />
<script src="js/jquery-1.9.1.min.js" type="text/javascript" ></script>
<script type="text/javascript" src="js/jquery.cookie.js"></script>
<script src="js/layer/layer.js" type="text/javascript" ></script>          
<script src="js/laydate/laydate.js" type="text/javascript"></script>
<script src="js/Sellerber.js" type="text/javascript"></script>
<script src="js/shopFrame.js" type="text/javascript"></script>
<script src="js/dist/echarts.js" type="text/javascript"></script>
<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js" type="text/javascript"></script>
<script src="js/respond.min.js"></script>
<script src="js/css3-mediaqueries.js"  type="text/javascript"></script>
  <![endif]-->
<title>åé¡µ</title>
</head>

<body>
<div class="margin" id="page_style">
<div class="add_style">
 <ul>
  <li class="clearfix"><label class="label_name col-xs-1"><i>*</i>æç« æ é¢ï¼&nbsp;&nbsp;</label><div class="Add_content col-xs-11"><input name="" type="text"  class="col-xs-6"/></div></li>
  <li class="clearfix"><label class="label_name col-xs-1"><i>*</i>ç®åæè¿°ï¼&nbsp;&nbsp;</label><div class="Add_content col-xs-11"><input name="" type="text" class="col-xs-6"/></div></li>
  <li class="clearfix"><label class="label_name col-xs-1"><i>*</i>å³&nbsp;é®&nbsp;å­ï¼&nbsp;&nbsp;</label><div class="Add_content col-xs-11"><input name="" type="text" class="col-xs-4"/><em class="Prompt"> è¯·ç¨","åéå³é®å­</em></div></li>
  <li class="clearfix"><label class="label_name col-xs-1"><i>*</i>æå±åç±»ï¼&nbsp;&nbsp;</label>
       <div class="Add_content col-xs-11">
         <select class="form-control" id="form-field-select-1">
          <option value="">--éæ©æå±åç±»--</option>
          <option value="1">å¸®å©ä¸­å¿</option>
          <option value="2">è´­ç©æå</option>
          <option value="3">å®åæå¡</option>
       </select>
       </div>
      </li>
    <li class="clearfix"><label class="label_name col-xs-1">è®¾ç½®æ¶é´ï¼&nbsp;&nbsp;</label> 
    <div class="Add_content col-xs-11">
    <label class="l_f checkbox_time"><input type="checkbox" name="checkbox" class="ace" id="checkbox"><span class="lbl"></span></label>
    <div class="Date_selection display_none">
        <span class="date_Select">
        <em class="laydate-icon timebox" id="start" style="width:200px; line-height: 30px; margin-left:10px; height: 30px; padding-left:5px; margin-right:10px; display:block; float:left"></em>
        <em style="display:block; float:left;margin-right:10px;">è³</em>
        <em class="laydate-icon" id="end" style="width:200px; line-height: 30px; padding-left:5px;height: 30px; display:block ;float:left"></em>
        </span>
    </div>
     <b  style=" margin-left:10px; font-weight:normal; color:#F63">æ³¨ï¼(è¯¥æ¶é´ç¨äºè®¾ç½®æç« åå®¹å¨ç½ç«æ¾ç¤ºçæ¶é´æ®µï¼è¿äºæ¾ç¤ºæ¶é´æ®µè¯¥æç« å°ä¸åç½ç«ä¸æ¾ç¤ºï¼æ éåæ¬¡æä½ï¼éåæ´»å¨ä½¿ç¨)</b>
    </div>   
    </li>
   <li class="clearfix">
     <script id="editor" type="text/plain" style="width:100%;height:500px;"></script>
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
    <script type="text/javascript" charset="utf-8" src="js/utf8-jsp/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="js/utf8-jsp/ueditor.all.min.js"> </script>
    <script type="text/javascript" charset="utf-8" src="js/utf8-jsp/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript">
	 /*checkboxæ¿åäºä»¶*/
$('#checkbox').on('click',function(){
	if($('input[name="checkbox"]').prop("checked")){
		 $('.Date_selection ').css('display','block');
		}
	else{
		
		 $('.Date_selection').css('display','none');
		}	
	});
/**æäº¤æä½**/
function article_save_submit(){
	     var num=0;
		 var str="";
     $(".Mandatory input[type$='text']").each(function(n){
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
$(function(){
	var ue = UE.getEditor('editor');
});
/*radioæ¿åäºä»¶*/
function Enable(){ $('.date_Select').css('display','block');}
function closes(){$('.date_Select').css('display','none')}
/**æ¥æéæ©**/
var start = {
    elem: '#start',
    format: 'YYYY/MM/DD',
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
    format: 'YYYY/MM/DD',
    min: laydate.now(),
    max: '2099-06-16 ',
    istime: true,
    istoday: false,
    choose: function(datas){
        start.max = datas; //ç»ææ¥éå¥½åï¼éç½®å¼å§æ¥çæå¤§æ¥æ
    }
};
laydate(start);
laydate(end);
</script>
