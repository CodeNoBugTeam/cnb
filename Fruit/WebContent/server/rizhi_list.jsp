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
<script src="js/laydate/laydate.js" type="text/javascript"></script>
<title>æ¥å¿åè¡¨</title>
</head>
<!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <script src="js/respond.min.js"></script>
  <script src="js/css3-mediaqueries.js"  type="text/javascript"></script>
  <![endif]-->
<body>
 <div class="margin Competence_style" id="page_style">
 <div class="same_module">
 	 <div class="Promp_plate btn-info"><b>æç¤ºï¼</b>è¯¥è®°å½åªä¿çè¿ä¸ä¸ªæçæä½è®°å½ï¼è¯·åæ¶å¤çã<a href="javascript:void()" class="fa fa-close close_Promp"></a></div>
  
   <div class="operation clearfix mb15 ">
     <ul>
     	<li class="clearfix col-xs-2 col-lg-3 col-ms-3"> <label class="label_name col-xs-3 col-lg-3 ">æ¡ä»¶æç´¢ï¼</label> 
     	<select class="select Competence_sort col-xs-6 col-lg-6 " name="admin-role" size="1" id="Competence_sort">
					<option value="0">--å¨é¨è®°å½--</option>
					<option value="1">è¶çº§ç®¡çå</option>
					<option value="2">æ®éç®¡çå</option>
					<option value="3">æ ç®ç¼è¾</option>
				</select>
		</li>
       <li class="clearfix col-xs-5 col-lg-5 col-ms-5 "><label class="label_name ">æ·»å æ¶é´ï¼</label> 
      <input class="laydate-icon col-xs-4 col-lg-3 form-control Select_Date" id="start" type="text">
      <span style=" float:left; padding:0px 10px; line-height:32px;">è³</span>
      <input class="laydate-icon col-xs-4 col-lg-3 form-control Select_Date" id="end" type="text">
       <button class="btn button_btn bg-deep-blue " onclick="" type="button"><i class="fa  fa-search"></i>&nbsp;æç´¢</button></li>
       </ul>
</div>
 </div>

<div class="Logs" id="Logs">
<div class="compete_list">
       <table id="sample_table" class="table table_list table_striped table-bordered dataTable no-footer">
		 <thead>
			<tr>
			  <th>ç»å½å</th>
			  <th>ç­çº§</th>
              <th>ç¶æ</th>
              <th>IPå°å</th>
              <th>è®¿é®å°å</th>
			  <th>å¼å§æ¶é´</th>  
              <th>ç»ææ¶é´</th>         
             </tr>
		    </thead>
             <tbody>
			  <tr>
				<td>admin123456</td>
				<td>è¶çº§ç®¡çå</td>
				<td >å¨çº¿</td>
                <td>192.1681.1.100</td>
                <td>åäº¬</td>
				<td>2017-12-12 10:23:23</td>
		        <td>2017-12-12 14:23:12</td>
			   </tr>
             <tr>
				<td>admin123456</td>
				<td>è¶çº§ç®¡çå</td>
				<td >å¨çº¿</td>
                <td>192.1681.1.100</td>
                <td>åäº¬</td>
				<td>2017-12-12 10:23:23</td>
		        <td>2017-12-12 14:23:12</td>
			   </tr>
              <tr>
				<td>admin123456</td>
				<td>è¶çº§ç®¡çå</td>
				<td >å¨çº¿</td>
                <td>192.1681.1.100</td>
                <td>åäº¬</td>
				<td>2017-12-12 10:23:23</td>
		        <td>2017-12-12 14:23:12</td>
			   </tr>
	        <tr>
				<td>admin123456</td>
				<td>æ ç®ç¼è¾</td>
				<td >å¨çº¿</td>
                <td>192.1681.1.100</td>
                <td>åäº¬</td>
				<td>2017-12-12 10:23:23</td>
		        <td>2017-12-12 14:23:12</td>
			   </tr>	
	        <tr>
				<td>admin123456</td>
				<td>æ ç®ç¼è¾</td>
				<td >å¨çº¿</td>
                <td>192.1681.1.100</td>
                <td>åäº¬</td>
				<td>2017-12-12 10:23:23</td>
		        <td>2017-12-12 14:23:12</td>
			   </tr>
	        <tr>
				<td>admin123456</td>
				<td>æ®éç®¡çå</td>
				<td >å¨çº¿</td>
                <td>192.1681.1.100</td>
                <td>åäº¬</td>
				<td>2017-12-12 10:23:23</td>
		        <td>2017-12-12 14:23:12</td>
			   </tr>
	        <tr>
				<td>admin123456</td>
				<td>æ®éç®¡çå</td>
				<td >å¨çº¿</td>
                <td>192.1681.1.100</td>
                <td>åäº¬</td>
				<td>2017-12-12 10:23:23</td>
		        <td>2017-12-12 14:23:12</td>
			   </tr>											
		      </tbody>
	        </table>
     </div>
</div>
</div>
</body>
</html>
<script>
	$(function() { 
	$("#Logs").frame({
		float : 'left',
		Promp:'.close_Promp',//å é¤æç¤º
		Sellerber_menu:'.list_content',
		datalist:".datatable_height",//æ°æ®åè¡¨é«åº¦åå¼
		header:65,//é¡¶é¨é«åº¦
		mwidth:350,//å®½åº¦èªå®ä¹
		minStatue:true,
		
	});
});
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

	/******æ¶é´è®¾ç½®*******/
  var start = {
    elem: '#start',
    format: 'YYYY-MM-DD',
   // min: laydate.now(), //è®¾å®æå°æ¥æä¸ºå½åæ¥æ
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
    //min: laydate.now(),
    max: '2099-06-16',
    istime: true,
    istoday: false,
    choose: function(datas){
        start.max = datas; //ç»ææ¥éå¥½åï¼éç½®å¼å§æ¥çæå¤§æ¥æ
    }
};
laydate(start);
laydate(end);
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
