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
<title>æ¯ä»è¯¦ç»</title>
</head>

<body>
<div class="margin" id="page_style">
 <!--ç¹å»æä½-->
  <div class="border clearfix">
     <span class="l_f">
        <a href="javascript:ovid()" onclick="add_payment()" class="btn button_btning bg-deep-blue"><i class="fa fa-mail-reply"></i>&nbsp;è¿åä¸ä¸æ­¥</a>
       </span>
    </div>
 <div class="Payment_details">
    <div class="brand_detailed">
  <div class="brand_info clearfix">
   <div class="title_brand">æ¯ä»ä¿¡æ¯</div>
   <form>
    <ul class="Info_style clearfix">
     <li><label class="label_name">æ¯ä»åç§°ï¼</label> <span class="name">é¶èæ¯ä»</span></li>
      <li><label class="label_name">å¼éæ¶é´ï¼</label><span class="name">2016-7-1</span></li>
       <li><label class="label_name">ç»ææ¶é´ï¼</label><span class="name">2020-6-21</span></li>
      <li><label class="label_name">æå±å½å®¶ï¼</label><span class="name">ä¸­å½</span></li>
      <li><label class="label_name">äº¤æç±»åï¼</label><span class="name">äººåå¸</span></li>
      <li><label class="label_name">ç¶&nbsp;&nbsp;&nbsp;&nbsp;æï¼</label><span class="name">å¯ç¨</span></li>
      <li class="b_Introduce"><label class="label_name">æ¯ä»ä»ç»ï¼</label><span class="name">ä¸­å½é¶èæ¯ä¸­å½é¶è¡å¡èåç»ç»ï¼éè¿é¶èè·¨è¡äº¤ææ¸ç®ç³»ç»ï¼å®ç°åä¸é¶è¡ç³»ç»é´çäºèäºéåèµæºå±äº«ï¼ä¿è¯é¶è¡å¡è·¨è¡ãè·¨å°åºåè·¨å¢çä½¿ç¨ãé¶èç½ç»éå¸ä¸­å½åä¹¡ï¼å¹¶å·²å»¶ä¼¸è³äºæ´²ãæ¬§æ´²ãç¾æ´²ãå¤§æ´æ´²ãéæ´²ç­å¢å¤150ä¸ªå½å®¶åå°åº(æªè³2015å¹´1æ20æ¥)ã</span></li>
    </ul>
    <div class="brand_logo">
      <img src="product_img/black/yinglian.jpg" width="120px" height="60px">
      <p class="name">ä¸­å½é¶è</p>
    </div>
   </form>
   </div>
 </div>
   <div class="bank_style clearfix" id="Bank_operations">
      <div class="title_name">æ¯æé¶è¡</div>
      <div class="operating">
      <a href="javascript:ovid()" onclick="modify()" class="btn button_btns btn-danger btn_delete"><i class="fa fa-trash"></i>&nbsp;å é¤æä½</a>
      <a href="javascript:ovid()" onclick="Add_Bank()" class="btn button_btns bg-deep-blue"><i class="fa fa-credit-card"></i>&nbsp;æ·»å é¶è¡</a></div>
      <div class="bank_list clearfix">
        <ul class="bank_logo clearfix">
         <li>
          <div class="delete_bank"><a href="javascript:ovid()"  onclick="bank_del(this,'123')" class="fa fa-remove"></a></div>
          <label><input name="form-field-checkbox" type="checkbox" class="ace"><span class="lbl"><img src="product_img/black/black1.png" width="160px;"/></span></label>
         </li>
         <li>
          <div class="delete_bank"><a href="javascript:ovid()"  onclick="bank_del(this,'124')" class="fa fa-remove"></a></div>
          <label><input name="form-field-checkbox" type="checkbox" class="ace"><span class="lbl"><img src="product_img/black/black2.png" width="160px;"/></span></label>
         </li>
         <li>
          <div class="delete_bank"><a href="javascript:ovid()"  onclick="bank_del(this,'125')" class="fa fa-remove"></a></div>
          <label><input name="form-field-checkbox" type="checkbox" class="ace"><span class="lbl"><img src="product_img/black/black3.png" width="160px;"/></span></label>
         </li>
         <li>
          <div class="delete_bank"><a href="javascript:ovid()"  onclick="bank_del(this,'126')" class="fa fa-remove"></a></div>
          <label><input name="form-field-checkbox" type="checkbox" class="ace"><span class="lbl"><img src="product_img/black/black4.png" width="160px;"/></span></label>
         </li>
         <li>
          <div class="delete_bank"><a href="javascript:ovid()"  onclick="bank_del(this,'127')" class="fa fa-remove"></a></div>
          <label><input name="form-field-checkbox" type="checkbox" class="ace"><span class="lbl"><img src="product_img/black/black5.png" width="160px;"/></span></label>
         </li>
         <li><label><input name="form-field-checkbox" type="checkbox" class="ace"><span class="lbl"><img src="product_img/black/black6.png" width="160px;"/></span></label></li>
         <li><label><input name="form-field-checkbox" type="checkbox" class="ace"><span class="lbl"><img src="product_img/black/black7.png" width="160px;"/></span></label></li>
         <li><label><input name="form-field-checkbox" type="checkbox" class="ace"><span class="lbl"><img src="product_img/black/black8.png" width="160px;"/></span></label></li>
         <li><label><input name="form-field-checkbox" type="checkbox" class="ace"><span class="lbl"><img src="product_img/black/black9.png" width="160px;"/></span></label></li>
         <li><label><input name="form-field-checkbox" type="checkbox" class="ace"><span class="lbl"><img src="product_img/black/black10.png" width="160px;"/></span></label></li>
         <li><label><input name="form-field-checkbox" type="checkbox" class="ace"><span class="lbl"><img src="product_img/black/black11.png" width="160px;"/></span></label></li>
         <li><label><input name="form-field-checkbox" type="checkbox" class="ace"><span class="lbl"><img src="product_img/black/black12.png" width="160px;"/></span></label></li>
         <li><label><input name="form-field-checkbox" type="checkbox" class="ace"><span class="lbl"><img src="product_img/black/black13.png" width="160px;"/></span></label></li>
         <li><label><input name="form-field-checkbox" type="checkbox" class="ace"><span class="lbl"><img src="product_img/black/black14.png" width="160px;"/></span></label></li>
         <li><label><input name="form-field-checkbox" type="checkbox" class="ace"><span class="lbl"><img src="product_img/black/black15.png" width="160px;"/></span></label></li>
        </ul>
        <div class="Push_button">
        </div>
      </div>
   </div>
 </div>

</div>
<!--æ·»å é¶è¡-->
<div id="add_bankstyle" style=" display:none">
<div class="prompt">è¯·ç¡®ä¿ä½ å¼éäºè¯¥é¶è¡çä»æ¬¾ä¸å¡ï¼å¦ææªå¼éï¼å¯è½é æç¨æ·ä»æ¬¾å¤±è´¥ã</div>
  <div class="add_bank_list margin">
   <ul>
         <li><label><input name="form-field-checkbox" type="checkbox" class="ace"><span class="lbl"><img src="product_img/black/black6.png" width="160px;"/></span></label></li>
         <li><label><input name="form-field-checkbox" type="checkbox" class="ace"><span class="lbl"><img src="product_img/black/black7.png" width="160px;"/></span></label></li>
         <li><label><input name="form-field-checkbox" type="checkbox" class="ace"><span class="lbl"><img src="product_img/black/black8.png" width="160px;"/></span></label></li>
         <li><label><input name="form-field-checkbox" type="checkbox" class="ace"><span class="lbl"><img src="product_img/black/black9.png" width="160px;"/></span></label></li>
         <li><label><input name="form-field-checkbox" type="checkbox" class="ace"><span class="lbl"><img src="product_img/black/black10.png" width="160px;"/></span></label></li>
         <li><label><input name="form-field-checkbox" type="checkbox" class="ace"><span class="lbl"><img src="product_img/black/black11.png" width="160px;"/></span></label></li>
         <li><label><input name="form-field-checkbox" type="checkbox" class="ace"><span class="lbl"><img src="product_img/black/black12.png" width="160px;"/></span></label></li>
         <li><label><input name="form-field-checkbox" type="checkbox" class="ace"><span class="lbl"><img src="product_img/black/black13.png" width="160px;"/></span></label></li>
         <li><label><input name="form-field-checkbox" type="checkbox" class="ace"><span class="lbl"><img src="product_img/black/black14.png" width="160px;"/></span></label></li>
         <li><label><input name="form-field-checkbox" type="checkbox" class="ace"><span class="lbl"><img src="product_img/black/black15.png" width="160px;"/></span></label></li>
   </ul>
  </div>
</div>
</body>
</html>
<script>
  //æé®ç¹å»äºä»¶
	var banks =$("#Bank_operations")
function modify(){	  
	 $('.ace').attr("disabled", false);
	 $('.ace').addClass("add");
	  banks.find('.bank_logo').addClass("delete");
	  banks.find('.Push_button').addClass("btn_delete");
	  banks.find('.operating .btn_delete').hide();
	  banks.find('.Push_button').prepend('<span class="Button"><a style="text-decoration:none" class="btn button_btns btn-Dark-success" onClick="bank_complete(this,id)" href="javascript:;" title="å¯ç¨"><i class=""></i>ç¡®è®¤æä½</a></span>');
	};
	 banks.find('.Push_button').html('<label><input name="checkbox" type="checkbox" class="ace" id="select_all"><span class="lbl">å¨é</span></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;');
	/**å¨é**/
$('#select_all').on('click' , function(){
					var that = this;
					$(this).closest('.bank_list').find('li input:checkbox')
					.each(function(){
						this.checked = that.checked;
						$(this).closest('li').toggleClass('selected');
					});
						
				});

/*ç¡®è®¤æä½*/	
function bank_complete(obj,id){
	var checkbox=$('input[name="form-field-checkbox"]');
	if(checkbox.length){
			 for(var i=0; i<checkbox.length; i++){ 
			   if(checkbox[i].checked){
					layer.alert('å é¤æåï¼',{
                    title: 'æç¤ºæ¡',				
			        icon:0,		
			        }) 
			         break;					
				}
		
				
					else{
				 $('.ace').removeClass("add");
				 $('#Bank_operations').find('.Push_button').removeClass("btn_delete");
				 $('#Bank_operations').find('.bank_logo').removeClass("delete");
				 $('#Bank_operations').find('.Push_button .Button').empty();
				 $('#Bank_operations').find('.operating .btn_delete').show();
				
				}
			 }	 		
		  }		
		  if($('input[name="checkbox"]').prop("checked")){ 
		  layer.alert('æ¯å¦å é¤å¨é¨é¶è¡ï¼',{
               title: 'æç¤ºæ¡',				
			  icon:0,
			   btn:['ç¡®å®','åæ¶'],	
				   yes: function(index){
					    $('#Bank_operations').find('.bank_logo').empty();
						$('#Bank_operations').find('.Push_button').empty();					   
					    layer.close(index);  
					   }		
			  }) 			  
		  	}		
	  
			
				 
	}	
/**æ·»å é¶è¡æä½**/
function Add_Bank(index){
	var index = layer.open({
        type: 1,
        title: 'æ·»å é¶è¡',
		maxmin: true, 
		shadeClose:false,
        area : ['830px' , ''],
        content:$('#add_bankstyle'),
		btn:['ç¡®å®','åæ¶'],
		yes:function(index, layero){
		var checkbox=$('input[name="form-field-checkbox"]');
	         if(checkbox.length){
			 for(var i=0; i<checkbox.length; i++){ 
			   if(checkbox[i].checked){
					layer.alert('æ·»å æåï¼',{
                    title: 'æç¤ºæ¡',				
			        icon:0,		
			        }) 
					 layer.close(index); 
			         break;					
				}
		     else{
			layer.alert('è¯·éæ©é¶è¡ï¼',{
               title: 'æç¤ºæ¡',				
			  icon:0,		
			  });
			 }
		   }
		} 
	 }			  
})		
}
/*é¶è¡-å é¤*/
function bank_del(obj,id){
	layer.confirm('ç¡®è®¤è¦å é¤è¯¥é¶è¡åï¼',function(index){
		$(obj).parents("li").remove();
		layer.msg('å·²å é¤!',{icon:1,time:1000});
	});
}
</script>
