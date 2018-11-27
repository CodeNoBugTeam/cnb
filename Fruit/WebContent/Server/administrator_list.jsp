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
<script type="text/javascript" src="js/Validform/Validform.min.js"></script>
<script type="text/javascript" src="js/jquery.cookie.js"></script>
<script src="js/shopFrame.js" type="text/javascript"></script>
<script src="js/Sellerber.js" type="text/javascript"></script>
<script src="js/layer/layer.js" type="text/javascript"></script>
<title>ç®¡çååè¡¨</title>
</head>
<!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <script src="js/respond.min.js"></script>
  <script src="js/css3-mediaqueries.js"  type="text/javascript"></script>
  <![endif]-->
<body>
<div class="margin Competence_style" id="page_style">
    <div class="operation clearfix">
<button class="btn button_btn btn-danger" type="button" onclick=""><i class="fa fa-trash-o"></i>&nbsp;å é¤</button>
 <a href="javascript:ovid()" id="administrator_add" class="btn button_btn bg-deep-blue"><i class="fa  fa-edit"></i>&nbsp;æ·»å ç®¡çå</a>
  <select class="select Competence_sort" name="admin-role" size="1" id="Competence_sort">
					<option value="0">--éæ©åç±»--</option>
					<option value="1">è¶çº§ç®¡çå</option>
					<option value="2">æ®éç®¡çå</option>
					<option value="3">æ ç®ç¼è¾</option>
				</select>
   <div class="search  clearfix">

   <input name="" type="text"  class="form-control col-xs-8"/><button class="btn button_btn bg-deep-blue " onclick=""  type="button"><i class="fa  fa-search"></i>&nbsp;æç´¢</button>
</div>
</div>
<div class="compete_list">
       <table id="sample_table" class="table table_list table_striped table-bordered dataTable no-footer">
		 <thead>
			<tr>
			  <th class="center"><label><input type="checkbox" class="ace"><span class="lbl"></span></label></th>
			  <th>ç»å½å</th>
			  <th>ææº</th>
              <th>é®ç®±</th>
              <th>è§è²</th>
			  <th class="hidden-480">å å¥æ¶é´</th>  
              <th>ç¶æ</th>         
			  <th class="hidden-480">æä½</th>
             </tr>
		    </thead>
             <tbody>
			  <tr>
				<td class="center"><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
				<td>admin123456</td>
				<td>13567878908</td>
				<td >3456778@qq.com</td>
				<td>è¶çº§ç®¡çå</td>
                <td>2016-9-20 10:23:23</td>
                <td class="td-status"><span class="label label-success label-sm">å·²å¯ç¨</span></td>
				<td class="td-manage">
                 <a title="åç¨" onclick="Competence_close(this,'12')" href="javascript:;" class="btn button_btn btn-Dark-success">åç¨</a> 
                 <a title="ç¼è¾" onclick="Competence_modify('560')" href="javascript:;" class="btn button_btn bg-deep-blue">ç¼è¾</a>        
                 <a title="å é¤" href="javascript:;" onclick="Competence_del(this,'1')" class="btn button_btn btn-danger">å é¤</a>
                 <a title="æ¥ç" href="javascript:;" onclick="Competence_View(this,'1')" class="btn button_btn btn-green">æ¥ç</a>
				</td>
			   </tr>
               <tr>
				<td class="center"><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
				<td>åæµ·å¤©å </td>
				<td>13567878908</td>
				<td >3456778@qq.com</td>
				<td>æ®éç®¡çå</td>
                <td>2016-9-20 10:23:23</td>
                <td class="td-status"><span class="label label-success label-sm">å·²å¯ç¨</span></td>
				<td class="td-manage">
                  <a title="åç¨" onclick="Competence_close(this,'12')" href="javascript:;" class="btn button_btn btn-Dark-success">åç¨</a> 
                 <a title="ç¼è¾" onclick="Competence_modify('560')" href="javascript:;" class="btn button_btn bg-deep-blue">ç¼è¾</a>        
                 <a title="å é¤" href="javascript:;" onclick="Competence_del(this,'1')" class="btn button_btn btn-danger">å é¤</a>
                 <a title="æ¥ç" href="javascript:;" onclick="Competence_View(this,'1')" class="btn button_btn btn-green">æ¥ç</a>
				</td>
			   </tr>
               <tr>
				<td class="center"><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
				<td>admin</td>
				<td>13567878908</td>
				<td >3456778@qq.com</td>
				<td>æ®éç®¡çå</td>
                <td>2016-9-10 10:23:23</td>
                <td class="td-status"><span class="label label-success label-sm">å·²å¯ç¨</span></td>
				<td class="td-manage">
                   <a title="åç¨" onclick="Competence_close(this,'12')" href="javascript:;" class="btn button_btn btn-Dark-success">åç¨</a> 
                 <a title="ç¼è¾" onclick="Competence_modify('560')" href="javascript:;" class="btn button_btn bg-deep-blue">ç¼è¾</a>        
                 <a title="å é¤" href="javascript:;" onclick="Competence_del(this,'1')" class="btn button_btn btn-danger">å é¤</a>
                 <a title="æ¥ç" href="javascript:;" onclick="Competence_View(this,'1')" class="btn button_btn btn-green">æ¥ç</a>
				</td>
			   </tr>												
		      </tbody>
	        </table>
     </div>
</div>
 <!--æ·»å ç®¡çå-->
 <div id="add_administrator" class=" add_administrator" style="display:none">
   <div class="add_style add_administrator_style">
    <form action="" method="post" id="form-admin-add">
    <ul>
     <li class="clearfix">
     <label class="label_name col-xs-2 col-lg-2"><i>*</i>ç¨æ·åï¼</label>
     <div class="formControls col-xs-6">
     <input type="text" class="input-text col-xs-12" value="" placeholder="" id="user-name" name="user-name" datatype="*2-16" nullmsg="ç¨æ·åä¸è½ä¸ºç©º"></div>
    <div class="col-4"> <span class="Validform_checktip"></span></div>
     </li>
     <li class="clearfix">
     <label class="label_name col-xs-2 col-lg-2"><i class="c-red">*</i>åå§å¯ç ï¼</label>
	 <div class="formControls col-xs-6">
	 <input type="password" placeholder="å¯ç " name="userpassword" autocomplete="off" value="" class="input-text col-xs-12" datatype="*6-20" nullmsg="å¯ç ä¸è½ä¸ºç©º">
	</div>
     <div class="col-4"> <span class="Validform_checktip"></span></div>
     </li>
     <li class="clearfix">
       <label class="label_name col-xs-2 col-lg-2"><i class="c-red">*</i>ç¡®è®¤å¯ç ï¼</label>
       <div class="formControls  col-xs-6">
	<input type="password" placeholder="ç¡®è®¤æ°å¯ç " autocomplete="off" class="input-text Validform_error  col-xs-12" errormsg="æ¨ä¸¤æ¬¡è¾å¥çå¯ç ä¸ä¸è´ï¼" datatype="*" nullmsg="è¯·åè¾å¥ä¸æ¬¡æ°å¯ç ï¼" recheck="userpassword" id="newpassword2" name="newpassword2">
	</div>
	  <div class="col-4"> <span class="Validform_checktip"></span></div>
     </li>
     <li class="clearfix">
      <label class="label_name col-xs-2 col-lg-2"><i class="c-red">*</i>æ§&nbsp;å«ï¼</label>
      <div class="formControls  skin-minimal col-xs-6">
		    <label><input name="form-field-radio" type="radio" class="ace" checked="checked"><span class="lbl">ä¿å¯</span></label>&nbsp;&nbsp;
            <label><input name="form-field-radio" type="radio" class="ace"><span class="lbl">ç·</span></label>&nbsp;&nbsp;
            <label><input name="form-field-radio" type="radio" class="ace"><span class="lbl">å¥³</span></label>
	  </div>
     </li>
     <li class="clearfix">
      <label class="label_name col-xs-2 col-lg-2"><i class="c-red">*</i>æ&nbsp;æºï¼</label>
      <div class="formControls col-xs-6">
		<input type="text" class="input-text col-xs-12" value="" placeholder="" id="user-tel" name="user-tel" datatype="m" nullmsg="ææºä¸è½ä¸ºç©º">
	  </div>
	 <div class="col-4"> <span class="Validform_checktip"></span></div>
     </li>
     <li class="clearfix">
      <label class="label_name col-xs-2 col-lg-2"><i class="c-red">*</i>é®&nbsp;ç®±ï¼</label>
      <div class="formControls col-xs-6">
		<input type="text" class="input-text col-xs-12" placeholder="@" name="email" id="email" datatype="e" nullmsg="è¯·è¾å¥é®ç®±ï¼">
	   </div>
		<div class="col-4"> <span class="Validform_checktip"></span></div>
     </li>
     <li class="clearfix">
      <label class="label_name col-xs-2 col-lg-2"><i class="c-red">*</i>è§&nbsp;è²ï¼</label>
      <div class="formControls col-xs-6"> <span class="select-box" style="width:150px;">
				<select class="select" name="admin-role" size="1">
					<option value="0">è¶çº§ç®¡çå</option>
					<option value="1">ç®¡çå</option>
					<option value="2">æ ç®ä¸»è¾</option>
					<option value="3">æ ç®ç¼è¾</option>
				</select>
				</span>
         </div>
     </li>
     <li class="clearfix">
			<label class="label_name col-xs-2 col-lg-2">å¤&nbsp;æ³¨ï¼</label>
			<div class="formControls col-xs-6">
				<textarea name="" cols="" rows="" class="textarea col-xs-12" placeholder="è¯´ç¹ä»ä¹...100ä¸ªå­ç¬¦ä»¥å" dragonfly="true" onkeyup="checkLength(this);"></textarea>
				<span class="wordage">å©ä½å­æ°ï¼<span id="sy" style="color:Red;">100</span>å­</span>
			</div>
		</li>
         <li class="clearfix col-xs-12 col-lg-12 align">
			
	  <input class="btn button_btn bg-deep-blue btn_height" type="submit" id="Add_Administrator" value="æäº¤æ³¨å">
      <input name="reset" type="reset" class="btn button_btn btn-infobtn-gray btn_height" value="åæ¶éç½®" />
		</li>
    </ul>
    </form>
	 </div>
   </div>
</body>
</html>
<script>
	/*æ·»å ç®¡çå*/
$('#administrator_add').on('click', function(){
	layer.open({
    type: 1,
	title:'æ·»å ç®¡çå',
	area: ['600px',''],
	shadeClose: false,
	content: $('#add_administrator'),
	
	});
})
$(function(){
	$("#Competence_sort").click(function(){
		var option=$(this).find("option:selected").text();
		var value=$(this).val();
		if(value==0){
			  
			$("#sample_table tbody tr").show()
			}
			else{
		$("#sample_table tbody tr").hide().filter(":contains('"+(option)+"')").show();	
			}
		}).click();	
	});

/*******æ»å¨æ¡*******/
$("body").niceScroll({  
	cursorcolor:"#888888",  
	cursoropacitymax:1,  
	touchbehavior:false,  
	cursorwidth:"5px",  
	cursorborder:"0",  
	cursorborderradius:"5px"  
});
/*ç®¡çå-åç¨*/
function Competence_close(obj,id){
	layer.confirm('ç¡®è®¤è¦åç¨åï¼',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn button_btn btn-gray" onClick="Competence_start(this,id)" href="javascript:;" title="å¯ç¨">å¯ç¨</a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success label-sm">å·²åç¨</span>');
		$(obj).remove();
		layer.msg('å·²åç¨!',{icon: 5,time:1000});
	});
}

/*ç®¡çå-å¯ç¨*/
function Competence_start(obj,id){
	layer.confirm('ç¡®è®¤è¦å¯ç¨åï¼',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn button_btn  btn-Dark-success" onClick="Competence_close(this,id)" href="javascript:;" title="åç¨">åç¨</a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success label-sm">å·²å¯ç¨</span>');
		$(obj).remove();
		layer.msg('å·²å¯ç¨!',{icon: 6,time:1000});
	});
}
/****å¤éæ¡éä¸­******/
$('table th input:checkbox').on('click' , function(){
					var that = this;
					$(this).closest('table').find('tr > td:first-child input:checkbox')
					.each(function(){
						this.checked = that.checked;
						$(this).closest('tr').toggleClass('selected');
					});
						
});
	//è¡¨åéªè¯æäº¤
$("#form-admin-add").Validform({		
		 tiptype:2,
		callback:function(data){
		//form[0].submit();
		if(data.status==1){ 
                layer.msg(data.info, {icon: data.status,time: 1000}, function(){ 
                    location.reload();//å·æ°é¡µé¢ 
                    });   
            } 
            else{ 
                layer.msg(data.info, {icon: data.status,time: 3000}); 
            } 		  
			var index =parent.$("#iframe").attr("src");
			parent.layer.close(index);
			//
		}				
	});
//å­æ°éå¶
function checkLength(which) {
	var maxChars = 100; //
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
