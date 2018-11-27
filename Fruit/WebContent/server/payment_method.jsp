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
<title></title>
</head>
<style type="text/css">
 .template_prompt{ margin-top:200px; width:300px; margin-left:auto; margin-right:auto; text-align:center; font-size:16px;}
 .template_prompt h2{ color:#666; margin:20px 0px;}
</style>
<body>
<div class="margin" id="page_style">
 <div class=" clearfix">
 <div class="defray_style">
    <div class="border clearfix same_module">
     <span class="l_f">
        <a href="javascript:ovid()" onclick="add_payment()" class="btn button_btning bg-deep-blue"><i class="fa fa-credit-card"></i>&nbsp;æ·»å æ¯ä»æ¹å¼</a>
       </span>
    </div>
    <!--æ¯ä»åè¡¨-->
    <div class="defray_list cover_style clearfix" id="Insidepage" >
     <div class="type_title same_module">å¨çº¿æ¯ä»æ¹å¼</div>
      <div class="defray_content clearfix padding15">
        <div class="Promp_plate alert-danger mb15">
        <b>æç¤ºï¼</b>è¯¥æ¯ä»æ¹å¼å¯ç¨å¹¶ä¸è½æ­£å¸¸ä½¿ç¨ï¼éè¦å¼éæ¯ä»åè½æè½ä½¿ç¨ç¸åºçæ¯ä»æ¹å¼ã<a href="javascript:void()" class="fa fa-close close_Promp"></a></div>
      <div class="clearfix" id="species">
       <ul class="defray_info">
       <li class="defray_name">æ¯ä»å®</li>
        <li class="name_logo"><img src="product_img/black/zhifb.jpg"  width="100%" height="150px;" /> </li>
        <li class="description">æ¯ä»å®ï¼ä¸­å½ï¼ç½ç»ææ¯æéå¬å¸æ¯å½åé¢åçç¬¬ä¸æ¹æ¯ä»å¹³å°ï¼è´åäºæä¾âç®åãå®å¨ãå¿«éâçæ¯ä»è§£å³æ¹æ¡</li>
        <li class="select">
        <label><input name="form-field-radio" type="radio" class="ace" checked="checked"><span class="lbl">å¯ç¨</span></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <label><input name="form-field-radio" type="radio" class="ace"><span class="lbl">å³é­</span></label>
        </li>
        <li class="operating ptb10">
        <a href="javascript:ovid()" class="btn button_btns btn-danger"><i class="fa fa-trash"></i>&nbsp;å é¤</a>
         <a href="javascript:ovid()" class="btn button_btns btn-Dark-success"><i class="fa  fa-edit "></i>&nbsp;è®¾ç½®</a>
        </li>
       </ul>
       <ul class="defray_info">
       <li class="defray_name">å¾®ä¿¡æ¯ä»</li>
        <li class="name_logo"><img src="product_img/black/weixin.jpg"  width="100%" height="150px;" /> </li>
        <li class="description">å¾®ä¿¡æ¯ä»æ¯éæå¨å¾®ä¿¡å®¢æ·ç«¯çæ¯ä»åè½ï¼ç¨æ·å¯ä»¥éè¿ææºå®æå¿«éçæ¯ä»æµç¨ã</li>
        <li class="select">
        <label><input name="form-field-radio1" type="radio" class="ace" checked="checked"><span class="lbl">å¯ç¨</span></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <label><input name="form-field-radio1" type="radio" class="ace"><span class="lbl">å³é­</span></label>
        </li>
        <li class="operating ptb10">
        <a href="javascript:ovid()" class="btn button_btns btn-Dark-success"><i class="fa fa-trash"></i>&nbsp;å é¤</a>
       <!-- <a href="javascript:ovid()" class="btn btn-success details_btn"><i class="fa  fa-newspaper-o "></i>&nbsp;è¯¦ç»</a>-->
        </li>
       </ul>
       <ul class="defray_info">
       <li class="defray_name">é¶è</li>
        <li class="name_logo"><img src="product_img/black/yinglian.jpg"  width="100%" height="150px;" /> </li>
        <li class="description">ä¸­å½é¶èæ¯ä¸­å½é¶è¡å¡èåç»ç»ï¼éè¿é¶èè·¨è¡äº¤ææ¸ç®ç³»ç»ï¼å®ç°åä¸é¶è¡ç³»ç»é´çäºèäºéåèµæºå±äº«ï¼ä¿è¯é¶è¡å¡è·¨è¡ãè·¨å°åºåè·¨å¢çä½¿ç¨ã</li>
        <li class="select">
        <label><input name="form-field-radio2" type="radio" class="ace" checked="checked"><span class="lbl">å¯ç¨</span></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <label><input name="form-field-radio2" type="radio" class="ace"><span class="lbl">å³é­</span></label>
        </li>
        <li class="operating ptb10">
        <a href="javascript:ovid()" class="btn button_btns btn-danger"><i class="fa fa-trash"></i>&nbsp;å é¤</a>
        <a href="javascript:ovid()" name="Payment_details.html" title="é¶èæ¯ä»è¯¦ç»" onclick="Paymentdetails('134')" class="btn button_btns btn-Dark-success"><i class="fa  fa-newspaper-o "></i>&nbsp;è¯¦ç»</a>
        </li>
       </ul>
        <ul class="defray_info">
       <li class="defray_name">æ¡å®æ¯ä»</li>
        <li class="name_logo"><img src="product_img/black/yozhif.jpg"  width="100%" height="150px;" /> </li>
        <li class="description">ä¸­å½é¶èæ¯ä¸­å½é¶è¡å¡èåç»ç»ï¼éè¿é¶èè·¨è¡äº¤ææ¸ç®ç³»ç»ï¼å®ç°åä¸é¶è¡ç³»ç»é´çäºèäºéåèµæºå±äº«ï¼ä¿è¯é¶è¡å¡è·¨è¡ãè·¨å°åºåè·¨å¢çä½¿ç¨ã</li>
        <li class="select">
        <label><input name="form-field-radio3" type="radio" class="ace" checked="checked"><span class="lbl">å¯ç¨</span></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <label><input name="form-field-radio3" type="radio" class="ace"><span class="lbl">å³é­</span></label>
        </li>
        <li class="operating ptb10">
        <a href="javascript:ovid()" class="btn button_btns btn-danger"><i class="fa fa-trash"></i>&nbsp;å é¤</a>
       <!-- <a href="javascript:ovid()" name="Payment_details.html" title="æ¡å®æ¯ä»è¯¦ç»" onclick="Paymentdetails('234')" class="btn btn-success details_btn"><i class="fa  fa-newspaper-o "></i>&nbsp;è¯¦ç»</a>-->
        </li>
       </ul>
       </div>
     
      </div>
      
    </div>
 </div>
</div>
<div id="add_payment_style" style="display:none">
<form id="payment_checkbox">
 <ul class="margin payment_list  clearfix">
  <li>
  <label><input name="checkbox" type="checkbox" class="ace" id="checkbox" onclick="select_payment(this,'123')"><span class="lbl"><img src="product_img/black/yinglian.jpg"  width="120px" height="100%" /> </span></label>
  </li>
  <li>
  <label><input name="checkbox" type="checkbox" class="ace" id="checkbox" onclick="select_payment(this,'125')"><span class="lbl"><img src="product_img/black/yozhif.jpg"  width="120px" height="100%" /></label>
  </li>
  <li>
  <label><input name="checkbox" type="checkbox" class="ace" id="checkbox" onclick="select_payment(this,'126')"><span class="lbl"><img src="product_img/black/caifut.jpg"  width="120px" height="100%" /></label>
  </li>
  <li>
  <label><input name="checkbox" type="checkbox" class="ace" id="checkbox" onclick="select_payment(this,'127')"><span class="lbl"><img src="product_img/black/weixin.jpg"  width="120px" height="100%" /></label>
  </li>
   <li>
  <label><input name="checkbox" type="checkbox" class="ace" id="checkbox" onclick="select_payment(this,'127')"><span class="lbl"><img src="product_img/black/zhifb.jpg"  width="120px" height="100%" /></label>
  </li>
 </ul>
 <div class="add_content clearfix">
   <ul>
    <li class=" clearfix"><label class="label_name">æ¯ä»æ¹å¼åç§°</label><span><input name="æ¯ä»æ¹å¼åç§°" type="text" /></span></li>
    <li  class=" clearfix"><label class="label_name">æ¯æäº¤æè´§å¸</label><span style=" margin-left:10px;">äººæ°å¸</span></li>
    <li  class=" clearfix"><label class="label_name">åä½èèº«ä»½</label><span><input name="åä½èèº«ä»½" type="text" /></span></li>
    <li  class=" clearfix"><label class="label_name">äº¤æå®å¨æ ¡éªç </label><span><input name="äº¤æå®å¨æ ¡éªç " type="text" /></span></li>
    <li  class=" clearfix">
     <label class="label_name">éæ©æ¥å£ç±»å</label>
      <span>
        <select class="form-control" id="form-field-select-1">
          <option value="">--éæ©æ¥å£ç±»å--</option>
          <option value="1">ä½¿ç¨æ ååæ¥å£</option>
          <option value="2">ä½¿ç¨æä¿äº¤ææ¥å£</option>
          <option value="3">ä½¿ç¨å³æ¶å°å¸äº¤ææ¥å£</option>
       </select>
      </span>
    </li>  
    <li  class=" clearfix"><label class="label_name">æ¯ä»è´¹ç</label><span><input name="æ¯ä»è´¹ç" type="text" />%</span></li> 
    <li  class=" clearfix"><label class="label_name">æåº</label><span><input name="" type="text"  value="0" style="width:80px;"/></span></li> 
    <li  class=" clearfix"><label class="label_name">è¯´æ</label><span><textarea name="è¯´æ" class="form-textarea" id="form_textarea" placeholder="" onkeyup="checkLength(this);"></textarea><span style=" margin-left:10px;">å©ä½å­æ°ï¼<em id="sy" style="color:Red;">200</em>å­</span></span></li>
   </ul>
 </div>
 </form>
</div>
</div>
</body>
</html>
<script>
//è®¾ç½®åé¡µæ¡æ¶å¸å±
$(function() { 
	$("#Insidepage").frame({
		float : 'left',
		page_content:'.defray_content',//åå®¹
		datalist:".defray_content",//æ°æ®åè¡¨é«åº¦åå¼
		header:65,//é¡¶é¨é«åº¦
		mwidth:0,//èåæ å®½åº¦
		Promp:'.close_Promp',
		minStatue:true,
		
	});
});	
	
function select_payment(ojb,id){
	if($('input[name="checkbox"]').prop("checked")){
		 $('.add_content').css('display','block');
		/*  var num=0;
		var str="";
		  $(".add_content input[type$='text']").each(function(n){
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
		  if(num>0){  return false;}	*/
		}
	else{
		
		 $('.add_content').css('display','none');
		}
}
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
/**æ·»å æ¯ä»æ¹å¼0**/
function add_payment(index ){
        layer.open({
        type: 1,
        title: 'æ·»å æ¯ä»æ¹å¼',
		maxmin: true, 
		shadeClose:false,
        area : ['830px' , ''],
        content:$('#add_payment_style'),
		btn:['ç¡®å®','åæ¶'],
		yes: function(index){
			var checkbox=$('input[name="checkbox"]');		    			
			if(checkbox.length){
			 var b = false;				
			 for(var i=0; i<checkbox.length; i++){
				if(checkbox[i].checked){
					b = true;
					layer.alert('æ·»å æåï¼',{
               title: 'æç¤ºæ¡',				
			  icon:0,		
			  })  
			  layer.close(index);
			   break;	
				}
 		
			 }
			 if(!b){
				   layer.alert('è¯·éæ©æéè¦çæ¯ä»æ¹å¼ï¼',{
               title: 'æç¤ºæ¡',				
			icon:0,		
			  }); 

			 }
		  }
			else{
							
			}	
		}
	})	
	};
	function Paymentdetails(id){
	window.location.href = "Payment_details.html?="+id;
};
</script>
