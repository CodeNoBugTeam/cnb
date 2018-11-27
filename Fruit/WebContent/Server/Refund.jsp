<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="css/shop.css" type="text/css" rel="stylesheet" />
<link href="css/Sellerber.css" type="text/css"  rel="stylesheet" />
<link href="css/bkg_ui.css" type="text/css"  rel="stylesheet" />
<link href="font/css/font-awesome.min.css"  rel="stylesheet" type="text/css" />
<script src="js/jquery-1.9.1.min.js" type="text/javascript" ></script>
<script src="js/Sellerber.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery.cookie.js"></script>
<script src="js/shopFrame.js" type="text/javascript"></script>
<script src="js/layer/layer.js" type="text/javascript"></script>
<script src="js/laydate/laydate.js" type="text/javascript"></script>
<script src="js/dist/echarts.js" type="text/javascript"></script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js" type="text/javascript"></script>
<script src="js/respond.min.js"></script>
<script src="js/css3-mediaqueries.js"  type="text/javascript"></script>
  <![endif]-->
<title>éæ¬¾æä½</title>
</head>
<body>
 <div class="margin" id="page_style"> <div class="Promp_plate label-success same_module"><b>æç¤ºï¼</b>ææ¶åªæ¯ææªåè´§çè®¢åéæ¬¾ç³è¯·ï¼å·²åè´§è®¢ååä¸æ¯æéæ¬¾æ¢è´§ï¼è¯·æ¬è¯·è°è§£ã<a href="javascript:void()" class="fa fa-close close_Promp"></a></div>
    <div class="refund_style " id="refund">
   		     
    		   <div class="operation clearfix mb15  searchs_style">
       <span class="l_f">
        <a href="Add_Brand.html"  title="æ·»å åç" class="btn button_btn bg-deep-blue"><i class="fa fa-plus"></i>æ¹éå¤ç</a>
        <a href="javascript:ovid()" class="btn  button_btn btn-danger"><i class="fa fa-trash"></i>æ¹éå é¤</a>
        <a href="javascript:ovid()" class="btn  button_btn bg-yellow"><i class="fa fa-credit-card"></i>å·²éæ¬¾</a>
        <a href="javascript:ovid()" class="btn  button_btn bg-green "><i class="fa  fa-credit-card-alt"></i>æªéæ¬¾</a>
       </span>
       <span class="r_f line30">å±ï¼<b>234</b>æ¡</span>
     </div>
       <div class=" datalist_show">
       <div class="datatable_height confirm">
        <table class="table table_list table_striped table-bordered">
           	<thead>
		 <tr>
				<th width="25px"><label><input type="checkbox" class="ace"><span class="lbl"></span></label></th>
				<th width="120px">è®¢åç¼å·</th>
				<th width="250px">äº§ååç§°</th>
				<th width="100px">äº¤æéé¢</th>				
                <th width="100px">äº¤ææ¶é´</th>				
				<th width="100px">éæ¬¾éé¢</th>
                <th width="80px">æ°é</th>
                <th width="200px">è¯´æ</th>
                <th width="70px">è®¢åç¶æ</th>   
				<th width="70px">éæ¬¾ç¶æ</th>         
				<th width="200px">æä½</th>
			</tr>
		</thead>
		 <tbody>
		         <tr>
           <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>20160705445622</td>
    <td class="order_product_name">
      <a href="#"><img src="product_img/p_1.jpg" title="äº§ååç§°"></a>
      <i class="fa fa-plus"></i>
       <a href="#"><img src="product_img/p_2.jpg" title="äº§ååç§°"></a>
     </td>
     <td>456.5</td>    
     <td>2016-7-5</td>
     <td>145</td>
     <td>1</td>
     <td>éå¤è´­ä¹°ååééæ¬¾ä¸ä»¶</td>
     <td>æªåè´§</td>
     <td class="td-status"><span class="label label-success radius">å¾éæ¬¾</span></td>
     <td>
     <a onClick="Delivery_Refund(this,'10001')"  href="javascript:;" title="éæ¬¾"  class="btn btn-xs btn-status">ç´æ¥éæ¬¾</a> 
     <a title="éæ¬¾è®¢åè¯¦ç»"  href="Refund_detailed.html"  class="btn btn-xs btn-info Refund_detailed" >è¯¦ç»</a> 
     <a title="å é¤" href="javascript:;"  onclick="Order_form_del(this,'1')" class="btn btn-xs btn-danger" >å é¤</a>    
     </td>
         </tr>
         	         <tr>
           <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>20160705445622</td>
    <td class="order_product_name">
      <a href="#"><img src="product_img/p_1.jpg" title="äº§ååç§°"></a>
      <i class="fa fa-plus"></i>
       <a href="#"><img src="product_img/p_2.jpg" title="äº§ååç§°"></a>
     </td>
     <td>456.5</td>    
     <td>2016-7-5</td>
     <td>145</td>
     <td>1</td>
     <td>éå¤è´­ä¹°ååééæ¬¾ä¸ä»¶</td>
     <td>æªåè´§</td>
     <td class="td-status"><span class="label label-success radius">å¾éæ¬¾</span></td>
     <td>
     <a onClick="Delivery_Refund(this,'10001')"  href="javascript:;" title="éæ¬¾"  class="btn btn-xs btn-status">ç´æ¥éæ¬¾</a> 
     <a title="éæ¬¾è®¢åè¯¦ç»"  href="Refund_detailed.html"  class="btn btn-xs btn-info Refund_detailed" >è¯¦ç»</a> 
     <a title="å é¤" href="javascript:;"  onclick="Order_form_del(this,'1')" class="btn btn-xs btn-danger" >å é¤</a>    
     </td>
         </tr>
         	         <tr>
           <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>20160705445622</td>
    <td class="order_product_name">
      <a href="#"><img src="product_img/p_1.jpg" title="äº§ååç§°"></a>
      <i class="fa fa-plus"></i>
       <a href="#"><img src="product_img/p_2.jpg" title="äº§ååç§°"></a>
     </td>
     <td>456.5</td>    
     <td>2016-7-5</td>
     <td>145</td>
     <td>1</td>
     <td>éå¤è´­ä¹°ååééæ¬¾ä¸ä»¶</td>
     <td>æªåè´§</td>
     <td class="td-status"><span class="label label-success radius">å¾éæ¬¾</span></td>
     <td>
     <a onClick="Delivery_Refund(this,'10001')"  href="javascript:;" title="éæ¬¾"  class="btn btn-xs btn-status">ç´æ¥éæ¬¾</a> 
     <a title="éæ¬¾è®¢åè¯¦ç»"  href="Refund_detailed.html"  class="btn btn-xs btn-info Refund_detailed" >è¯¦ç»</a> 
     <a title="å é¤" href="javascript:;"  onclick="Order_form_del(this,'1')" class="btn btn-xs btn-danger" >å é¤</a>    
     </td>
         </tr>
         	         <tr>
           <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>20160705445622</td>
    <td class="order_product_name">
      <a href="#"><img src="product_img/p_1.jpg" title="äº§ååç§°"></a>
      <i class="fa fa-plus"></i>
       <a href="#"><img src="product_img/p_2.jpg" title="äº§ååç§°"></a>
     </td>
     <td>456.5</td>    
     <td>2016-7-5</td>
     <td>145</td>
     <td>1</td>
     <td>éå¤è´­ä¹°ååééæ¬¾ä¸ä»¶</td>
     <td>æªåè´§</td>
     <td class="td-status"><span class="label label-success radius">å¾éæ¬¾</span></td>
     <td>
     <a onClick="Delivery_Refund(this,'10001')"  href="javascript:;" title="éæ¬¾"  class="btn btn-xs btn-status">ç´æ¥éæ¬¾</a> 
     <a title="éæ¬¾è®¢åè¯¦ç»"  href="Refund_detailed.html"  class="btn btn-xs btn-info Refund_detailed" >è¯¦ç»</a> 
     <a title="å é¤" href="javascript:;"  onclick="Order_form_del(this,'1')" class="btn btn-xs btn-danger" >å é¤</a>    
     </td>
         </tr>
                  	         <tr>
           <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>20160705445622</td>
    <td class="order_product_name">
      <a href="#"><img src="product_img/p_1.jpg" title="äº§ååç§°"></a>
      <i class="fa fa-plus"></i>
       <a href="#"><img src="product_img/p_2.jpg" title="äº§ååç§°"></a>
     </td>
     <td>456.5</td>    
     <td>2016-7-5</td>
     <td>145</td>
     <td>1</td>
     <td>éå¤è´­ä¹°ååééæ¬¾ä¸ä»¶</td>
     <td>æªåè´§</td>
     <td class="td-status"><span class="label label-success radius">å¾éæ¬¾</span></td>
     <td>
     <a onClick="Delivery_Refund(this,'10001')"  href="javascript:;" title="éæ¬¾"  class="btn btn-xs btn-status">ç´æ¥éæ¬¾</a> 
     <a title="éæ¬¾è®¢åè¯¦ç»"  href="Refund_detailed.html"  class="btn btn-xs btn-info Refund_detailed" >è¯¦ç»</a> 
     <a title="å é¤" href="javascript:;"  onclick="Order_form_del(this,'1')" class="btn btn-xs btn-danger" >å é¤</a>    
     </td>
         </tr>
                  	         <tr>
           <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>20160705445622</td>
    <td class="order_product_name">
      <a href="#"><img src="product_img/p_1.jpg" title="äº§ååç§°"></a>
      <i class="fa fa-plus"></i>
       <a href="#"><img src="product_img/p_2.jpg" title="äº§ååç§°"></a>
     </td>
     <td>456.5</td>    
     <td>2016-7-5</td>
     <td>145</td>
     <td>1</td>
     <td>éå¤è´­ä¹°ååééæ¬¾ä¸ä»¶</td>
     <td>æªåè´§</td>
     <td class="td-status"><span class="label label-success radius">å¾éæ¬¾</span></td>
     <td>
     <a onClick="Delivery_Refund(this,'10001')"  href="javascript:;" title="éæ¬¾"  class="btn btn-xs btn-status">ç´æ¥éæ¬¾</a> 
     <a title="éæ¬¾è®¢åè¯¦ç»"  href="Refund_detailed.html"  class="btn btn-xs btn-info Refund_detailed" >è¯¦ç»</a> 
     <a title="å é¤" href="javascript:;"  onclick="Order_form_del(this,'1')" class="btn btn-xs btn-danger" >å é¤</a>    
     </td>
         </tr>
                  	         <tr>
           <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>20160705445622</td>
    <td class="order_product_name">
      <a href="#"><img src="product_img/p_1.jpg" title="äº§ååç§°"></a>
      <i class="fa fa-plus"></i>
       <a href="#"><img src="product_img/p_2.jpg" title="äº§ååç§°"></a>
     </td>
     <td>456.5</td>    
     <td>2016-7-5</td>
     <td>145</td>
     <td>1</td>
     <td>éå¤è´­ä¹°ååééæ¬¾ä¸ä»¶</td>
     <td>æªåè´§</td>
     <td class="td-status"><span class="label label-defaunt radius">å·²éæ¬¾</span></td>
     <td>

     <a title="éæ¬¾è®¢åè¯¦ç»"  href="Refund_detailed.html"  class="btn btn-xs btn-info Refund_detailed" >è¯¦ç»</a> 
     <a title="å é¤" href="javascript:;"  onclick="Order_form_del(this,'1')" class="btn btn-xs btn-danger" >å é¤</a>    
     </td>
         </tr>
                  	         <tr>
           <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>20160705445622</td>
    <td class="order_product_name">
      <a href="#"><img src="product_img/p_1.jpg" title="äº§ååç§°"></a>
      <i class="fa fa-plus"></i>
       <a href="#"><img src="product_img/p_2.jpg" title="äº§ååç§°"></a>
     </td>
     <td>456.5</td>    
     <td>2016-7-5</td>
     <td>145</td>
     <td>1</td>
     <td>éå¤è´­ä¹°ååééæ¬¾ä¸ä»¶</td>
     <td>æªåè´§</td>
     <td class="td-status"><span class="label label-defaunt radius">å·²éæ¬¾</span></td>
     <td>

     <a title="éæ¬¾è®¢åè¯¦ç»"  href="Refund_detailed.html"  class="btn btn-xs btn-info Refund_detailed" >è¯¦ç»</a> 
     <a title="å é¤" href="javascript:;"  onclick="Order_form_del(this,'1')" class="btn btn-xs btn-danger" >å é¤</a>    
     </td>
         </tr>
                  	         <tr>
           <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>20160705445622</td>
    <td class="order_product_name">
      <a href="#"><img src="product_img/p_1.jpg" title="äº§ååç§°"></a>
      <i class="fa fa-plus"></i>
       <a href="#"><img src="product_img/p_2.jpg" title="äº§ååç§°"></a>
     </td>
     <td>456.5</td>    
     <td>2016-7-5</td>
     <td>145</td>
     <td>1</td>
     <td>éå¤è´­ä¹°ååééæ¬¾ä¸ä»¶</td>
     <td>æªåè´§</td>
     <td class="td-status"><span class="label label-success radius">å¾éæ¬¾</span></td>
     <td>
     <a onClick="Delivery_Refund(this,'10001')"  href="javascript:;" title="éæ¬¾"  class="btn btn-xs btn-status">ç´æ¥éæ¬¾</a> 
     <a title="éæ¬¾è®¢åè¯¦ç»"  href="Refund_detailed.html"  class="btn btn-xs btn-info Refund_detailed" >è¯¦ç»</a> 
     <a title="å é¤" href="javascript:;"  onclick="Order_form_del(this,'1')" class="btn btn-xs btn-danger" >å é¤</a>    
     </td>
         </tr>
                  	         <tr>
           <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>20160705445622</td>
    <td class="order_product_name">
      <a href="#"><img src="product_img/p_1.jpg" title="äº§ååç§°"></a>
      <i class="fa fa-plus"></i>
       <a href="#"><img src="product_img/p_2.jpg" title="äº§ååç§°"></a>
     </td>
     <td>456.5</td>    
     <td>2016-7-5</td>
     <td>145</td>
     <td>1</td>
     <td>éå¤è´­ä¹°ååééæ¬¾ä¸ä»¶</td>
     <td>æªåè´§</td>
     <td class="td-status"><span class="label label-success radius">å¾éæ¬¾</span></td>
     <td>
     <a onClick="Delivery_Refund(this,'10001')"  href="javascript:;" title="éæ¬¾"  class="btn btn-xs btn-status">ç´æ¥éæ¬¾</a> 
     <a title="éæ¬¾è®¢åè¯¦ç»"  href="Refund_detailed.html"  class="btn btn-xs btn-info Refund_detailed" >è¯¦ç»</a> 
     <a title="å é¤" href="javascript:;"  onclick="Order_form_del(this,'1')" class="btn btn-xs btn-danger" >å é¤</a>    
     </td>
         </tr>
                         	         <tr>
           <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>20160705445622</td>
    <td class="order_product_name">
      <a href="#"><img src="product_img/p_1.jpg" title="äº§ååç§°"></a>
      <i class="fa fa-plus"></i>
       <a href="#"><img src="product_img/p_2.jpg" title="äº§ååç§°"></a>
     </td>
     <td>456.5</td>    
     <td>2016-7-5</td>
     <td>145</td>
     <td>1</td>
     <td>éå¤è´­ä¹°ååééæ¬¾ä¸ä»¶</td>
     <td>æªåè´§</td>
     <td class="td-status"><span class="label label-success radius">å¾éæ¬¾</span></td>
     <td>
     <a onClick="Delivery_Refund(this,'10001')"  href="javascript:;" title="éæ¬¾"  class="btn btn-xs btn-status">ç´æ¥éæ¬¾</a> 
     <a title="éæ¬¾è®¢åè¯¦ç»"  href="Refund_detailed.html"  class="btn btn-xs btn-info Refund_detailed" >è¯¦ç»</a> 
     <a title="å é¤" href="javascript:;"  onclick="Order_form_del(this,'1')" class="btn btn-xs btn-danger" >å é¤</a>    
     </td>
         </tr>
		 </tbody>
		</table>
	    </div>
	  </div>
    </div>
 </div>
</body>
</html>
<script type="text/javascript">
//è®¾ç½®åé¡µæ¡æ¶å¸å±
$(function() { 
	$("#refund").frame({
		float : 'left',
		Promp:'.close_Promp',//å é¤æç¤º
		Sellerber_menu:'.list_content',
		datalist:".datatable_height",//æ°æ®åè¡¨é«åº¦åå¼
		header:65,//é¡¶é¨é«åº¦
		mwidth:350,//å®½åº¦èªå®ä¹
		minStatue:true,
		
	});
});
	function Delivery_Refund(obj,id){
			
			 layer.confirm('æ¯å¦éæ¬¾å½åååä»·æ ¼ï¼ç´æ¥éæ¬¾åé±ç´æ¥éæ¢å°ç¨æ·ç¸åºçè´¦å·ä¸­ã',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style=" display:none" class="btn btn-xs btn-success" onClick="member_stop(this,id)" href="javascript:;" title="å·²éæ¬¾">éæ¬¾</a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt  radius">å·²éæ¬¾</span>');
		$(obj).remove();
		layer.msg('éæ¬¾æå!',{icon: 6,time:1000});
			});  
			  
		  
};
	function Order_form_del(obj,id){
	layer.confirm('ç¡®è®¤è¦å é¤åï¼',function(index){
		$(obj).parents("tr").remove();
		layer.msg('å·²å é¤!',{icon:1,time:1000});
	});
}
</script>
