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
 <script type="text/javascript" src="js/json2.js"></script>
<script src="js/jquery.dataTables.min.js"></script>
<script src="js/jquery.dataTables.bootstrap.js"></script>
<title>ä¸ªäººä¿¡æ¯</title>
</head>
<!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <script src="js/respond.min.js"></script>
  <script src="js/css3-mediaqueries.js"  type="text/javascript"></script>
  <![endif]-->
<body>
<div class="margin" id="page_style">
 <div class="personal_info mb15 same_module">
   <div class="add_style clearfix border_style relative">
   <form id="user_info" action="json/test_user.json" method="post">
   <div class="user_left_info">
    <div class="clearfix">
        <div class="form-group clearfix col-xs-3">
        <label class="col-xs-3 label_name col-md-5" for="form-field-1">ç¨æ·åï¼</label>
         <div class="col-xs-9 line_height1 col-md-6">
         <input type="text" name="username" data-name="ç¨æ·å" id="username" value="admin123" class="col-xs-12 text_info" disabled="disabled"></div>         
          </div>
              <div class="form-group clearfix col-xs-3">
        <label class="col-xs-3 label_name col-md-5" for="form-field-1">çå®å§åï¼</label>
         <div class="col-xs-9 line_height1 col-md-6"><input type="text" name="surname" data-name="çå®å§å" id="surname" value="å¼ å°æ³" class="col-xs-12 text_info" disabled="disabled"></div>         
          </div>
          <div class="form-group clearfix col-xs-3"><label class="col-xs-3 label_name col-md-5" for="form-field-1">æ§å«ï¼ </label>
          <div class="col-xs-9 line_height1 col-md-6">
          <span class="sex">ç·</span>
            <div class="add_sex">
            <label><input name="form-field-radio" type="radio" id="" class="ace" value="ä¿å¯" checked="checked"><span class="lbl">ä¿å¯</span></label>&nbsp;&nbsp;
            <label><input name="form-field-radio" type="radio" id="" class="ace" value="ç·"><span class="lbl">ç·</span></label>&nbsp;&nbsp;
            <label><input name="form-field-radio" type="radio" id="" class="ace" value="å¥³"><span class="lbl">å¥³</span></label>
            </div>
           </div>
          </div>
          <div class="form-group clearfix col-xs-3"><label class="col-xs-3 col-md-6 label_name col-md-5" for="form-field-1">å¹´é¾ï¼ </label>
          <div class="col-xs-9 line_height1 col-md-6"><input type="text" name="age" data-name="å¹´é¾" id="age" value="24" class="col-xs-12 text_info" disabled="disabled"></div>
          </div>
          <div class="form-group clearfix col-xs-3"><label class="col-xs-3 col-md-6 label_name col-md-5" for="form-field-1">ç§»å¨çµè¯ï¼ </label>
          <div class="col-xs-9 line_height1 col-md-6"><input type="text" name="phone" data-name="ç§»å¨çµè¯" id="phone" value="13567878908" class="col-xs-12 text_info" disabled="disabled"></div>
          </div>
          <div class="form-group clearfix col-xs-3"><label class="col-xs-3 col-md-6 label_name col-md-5" for="form-field-1">çµå­é®ç®±ï¼ </label>
          <div class="col-xs-9 line_height1 col-md-6" ><input type="text" name="mailbox"  data-name="çµå­é®ç®±" id="mailbox" value="567890@qq.com" class="col-xs-12 text_info" disabled="disabled"></div>
          </div>
          <div class="form-group clearfix col-xs-3"><label class="col-xs-3 label_name col-md-5" for="form-field-1">QQï¼ </label>
          <div class="col-xs-9 line_height1 col-md-6"><input type="text" name="QQ" id="QQ" data-name="QQ"  value="456789787" class="col-xs-12 text_info" disabled="disabled"> </div>
          </div>
           <div class="form-group clearfix col-xs-3"><label class="col-xs-3 label_name col-md-5" for="form-field-1">æéï¼ </label>
          <div class="col-xs-9 line_height1 col-md-6"> <span>æ®éç®¡çå</span></div>
          </div>
           <div class="form-group clearfix col-xs-3"><label class="col-xs-3 label_name col-md-5" for="form-field-1">æ³¨åæ¶é´ï¼ </label>
          <div class="col-xs-9 line_height1 col-md-6"> <span>2016-7-5</span></div>
          </div>
          
          </div>
           <div class="Button_operation clearfix"> 
                <input type="button" onclick="modify();" class="btn btn-danger operation_btn"  value="ä¿®æ¹ä¿¡æ¯"/>
                <input type="button" onclick="change_Password();" class="btn bg-green operation_btn"  value="ä¿®æ¹å¯ç "/>
                <input type="button" id="save_info" class="btn bg-deep-blue operation_btn save "  value="ä¿å­ä¿®æ¹"/>			     
	        </div>
           </div>
           <div class="user_avatar">
      <img src="products/logo/156.jpg" width="120px" height="60px">
      <p class="name">çå°æ²¹OLAY</p>
    </div>
            </form>
            </div>
            <div id="text_name"></div>
   </div>
  
   <!--æä½è®°å½-->
  <div class="h_products_list clearfix same_module" id="Sellerber">
     <div class="Sellerber_left menu" id="menuBar">
    <div class="show_btn" id="rightArrow"><span></span></div>
    <div class="side_title"><a title="éè" class="close_btn"><span></span></a></div> 
    <div class="menu_style" id="menu_style">
    <div class="list_content">
     <div class="side_list">
    </div>
  </div>
 </div>
</div>
  <div class="list_Exhibition list_show padding15">
   <div class="searchs_style clearfix operation mb15">
     <label class="label_name l_f">è®°å½æç´¢ï¼</label>
     <input class="inline laydate-icon " id="start" type="text"  style="margin-right:10px; height:auto; float:left; width:150px;" />
     <input name="" type="text"  class="form-control col-xs-1" style="width:250px"/>
     <button class="btn button_btn bg-deep-blue " onclick=""  type="button"><i class="fa  fa-search"></i>&nbsp;æç´¢</button>
   </div> 
       <div class="datalist_show ">
       <div class="datatable_height confirm">
        <table id="sample_table" class="table table_list table_striped table-bordered dataTable no-footer">
           <thead>
			<tr>
              <th  width="80px">æåº</th>
			  <th>åå®¹</th>
			  <th width="150px">æä½æ¶é´</th>
              <th width="300px">å¤æ³¨</th>       
             </tr>
		    </thead>
            <tbody>
             <tr><td>1</td><td>æ·»å äº10ä¸ªååä¿¡æ¯</td><td>2016-9-29 12:23</td><td>ä¸ä¸ªæªä¿å­æå</td></tr>
             <tr><td>2</td><td>æ·»å äº20ä¸ªååä¿¡æ¯</td><td>2016-9-29 12:23</td><td>ä¸ä¸ªæªä¿å­æå</td></tr>
             <tr><td>3</td><td>æ·»å äº10ä¸ªååä¿¡æ¯</td><td>2016-9-28 12:23</td><td>ä¸ä¸ªæªä¿å­æå</td></tr>
             <tr><td>4</td><td>æ·»å äº10ä¸ªååä¿¡æ¯</td><td>2016-9-27 12:23</td><td>ä¸ä¸ªæªä¿å­æå</td></tr>
             <tr><td>5</td><td>æ·»å äº10ä¸ªååä¿¡æ¯</td><td>2016-9-26 12:23</td><td>ä¸ä¸ªæªä¿å­æå</td></tr>
             <tr><td>6</td><td>æ·»å äº10ä¸ªååä¿¡æ¯</td><td>2016-9-24 12:23</td><td>ä¸ä¸ªæªä¿å­æå</td></tr>
             <tr><td>7</td><td>æ·»å äº10ä¸ªååä¿¡æ¯</td><td>2016-9-19 12:23</td><td>ä¸ä¸ªæªä¿å­æå</td></tr>
             <tr><td>1</td><td>æ·»å äº10ä¸ªååä¿¡æ¯</td><td>2016-9-29 12:23</td><td>ä¸ä¸ªæªä¿å­æå</td></tr>
             <tr><td>2</td><td>æ·»å äº20ä¸ªååä¿¡æ¯</td><td>2016-9-29 12:23</td><td>ä¸ä¸ªæªä¿å­æå</td></tr>
             <tr><td>3</td><td>æ·»å äº10ä¸ªååä¿¡æ¯</td><td>2016-9-28 12:23</td><td>ä¸ä¸ªæªä¿å­æå</td></tr>
             <tr><td>4</td><td>æ·»å äº10ä¸ªååä¿¡æ¯</td><td>2016-9-27 12:23</td><td>ä¸ä¸ªæªä¿å­æå</td></tr>
             <tr><td>5</td><td>æ·»å äº10ä¸ªååä¿¡æ¯</td><td>2016-9-26 12:23</td><td>ä¸ä¸ªæªä¿å­æå</td></tr>
             <tr><td>6</td><td>æ·»å äº10ä¸ªååä¿¡æ¯</td><td>2016-9-24 12:23</td><td>ä¸ä¸ªæªä¿å­æå</td></tr>
             <tr><td>7</td><td>æ·»å äº10ä¸ªååä¿¡æ¯</td><td>2016-9-19 12:23</td><td>ä¸ä¸ªæªä¿å­æå</td></tr>
             <tr><td>1</td><td>æ·»å äº10ä¸ªååä¿¡æ¯</td><td>2016-9-29 12:23</td><td>ä¸ä¸ªæªä¿å­æå</td></tr>
             <tr><td>2</td><td>æ·»å äº20ä¸ªååä¿¡æ¯</td><td>2016-9-29 12:23</td><td>ä¸ä¸ªæªä¿å­æå</td></tr>
             <tr><td>3</td><td>æ·»å äº10ä¸ªååä¿¡æ¯</td><td>2016-9-28 12:23</td><td>ä¸ä¸ªæªä¿å­æå</td></tr>
             <tr><td>4</td><td>æ·»å äº10ä¸ªååä¿¡æ¯</td><td>2016-9-27 12:23</td><td>ä¸ä¸ªæªä¿å­æå</td></tr>
             <tr><td>5</td><td>æ·»å äº10ä¸ªååä¿¡æ¯</td><td>2016-9-26 12:23</td><td>ä¸ä¸ªæªä¿å­æå</td></tr>
             <tr><td>6</td><td>æ·»å äº10ä¸ªååä¿¡æ¯</td><td>2016-9-24 12:23</td><td>ä¸ä¸ªæªä¿å­æå</td></tr>
             <tr><td>7</td><td>æ·»å äº10ä¸ªååä¿¡æ¯</td><td>2016-9-19 12:23</td><td>ä¸ä¸ªæªä¿å­æå</td></tr>
            </tbody>
         </table> 
		   </div> 
	   </div> 
   </div>
</div>
</div>
 <!--ä¿®æ¹å¯ç æ ·å¼-->
         <div class="change_Pass_style display" id="change_Pass">
            <ul class="change_Password clearfix">
             <li>
             <label class="label_name">å&nbsp;&nbsp;å¯&nbsp;ç </label><span class="change_text"><input name="password" data-name="åå¯ç " type="password" class="" id="password"></span></li>
             <li>
             <label class="label_name">æ°&nbsp;&nbsp;å¯&nbsp;ç </label><span class="change_text"><input name="Nes_pas"  data-name="æ°å¯ç " type="password" class="" id="Nes_pas"></span></li>
             <li>
             <label class="label_name">ç¡®è®¤å¯ç </label><span class="change_text"><input name="c_mew_pas" type="password" data-name="åæ¬¡ç¡®è®¤å¯ç " class="" id="c_mew_pas"></span></li>              
            </ul>          
         </div>
</body>
</html>
<script>
	//è®¾ç½®åé¡µæ¡æ¶å¸å±
$(function() { 
	$("#Sellerber").frame({
		float : 'left',
		color_btn:'.skin_select',
		Sellerber_menu:'.list_content',
		page_content:'.list_show',//åå®¹
		datalist:".datatable_height",//æ°æ®åè¡¨é«åº¦åå¼
		header:65,//é¡¶é¨é«åº¦
		mwidth:300,//èåæ å®½åº¦
		
	});
});
/****ä¿®æ¹å¯ç ****/
function change_Password(){
	layer.open({
    type: 1,
	title:'ä¿®æ¹å¯ç ',
	area: ['300px','300px'],
	shadeClose: true,
	content: $('#change_Pass'),
	btn:['ç¡®è®¤ä¿®æ¹'],
	yes:function(index, layero){		
	 var num=0;
     var str="";
	 var $paddword=/^[a-z0-9_-]{5,18}$/;
	
     $("input[type$='password']").each(function(n){
          if($(this).val()=="")
          {
               
			   layer.alert(str+=""+$(this).attr("data-name")+"ä¸è½ä¸ºç©ºï¼\r\n",{
                title: 'æç¤ºæ¡',				
				icon:0,								
          }); 
		    num++;
            return false;            
          } 
		 });
	       if(num>0){  return false;}	
	      if(!$("#c_mew_pas").val || $("#c_mew_pas").val() != $("#Nes_pas").val() )
        {
            layer.alert('å¯ç ä¸ä¸è´!',{
              title: 'æç¤ºæ¡',				
				icon:0,
			    
			 });
			 return false;
        }   
		 else{	
		     		  
			  layer.alert('ä¿®æ¹æåï¼',{
               title: 'æç¤ºæ¡',				
			icon:1,		
			  }); 
			  layer.close(index);      
		  }	 
	}
    });
}
/*æ¶é´*/
	laydate({
    elem: '#start',
    event: 'focus' 
});
/********ä¸ªäººä¿¡æ¯æä½*******/
function modify(){
	 $('.text_info').attr("disabled", false);
	 $('.text_info').addClass("add");
	  $('#page_style').find('.add_style').addClass("hover");
	  $('#page_style').find('.save').css({'display':'block'});
	};
$("#save_info").click(function(){
	    var num=0;
		 var str="";
		 
     $(".xinxi input[type$='text']").each(function(n){
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
			  var sex = $("input[name='form-field-radio']:checked").serialize();
		      var params=$('#user_info input').serialize(); //åºååè¡¨åçå¼
			  alert(params);
			  $.post(
			      "user_json.php",
				  {
				   username:$("#username").val(),
				   surname:$("#surname").val(),
				   sex:$("input[name='form-field-radio']:checked").val(),
				   age:$("#age").val(),
				   mailbox:$("#mailbox").val(),
				   phone:$("#phone").val()
				   },
					function(data){
				     // $("#text_name").html(data)
                    //   console.log(data.time);
				  }, "text")
				  
			  	   $.ajax({
				   type:"post",
				   url:"json/test_user.json",
				   dataType:"json",
				   data:params,
				   success:User_Info  		  
				  });
				  function User_Info(json){
					  var str="å§å:"+json.username+"<br />";
						  str+="å¹´é¾:"+json.age+"<br />";
						  str+="æ§å«:"+json.sex+"<br />";
						  str+="å·¥ä½:"+json.mailbox+"<br />";
						  str+="è¿½å æµè¯:"+json.phone;						  
						  $("#text_name").html(str);				  					  				  
					 }
			   layer.alert('ä¿®æ¹æåï¼',{
               title: 'æç¤ºæ¡',				
			   icon:1,			   		
			  });
			  $('#page_style').find('.add_style').removeClass("hover");
			  $('#page_style').find('.text_info').removeClass("add").attr("disabled", true);
			  $('#page_style').find('.save').css({'display':'none'});
			   layer.close();			
		  }
});
/********************/
$(function(){
	$("#sample_table tbody>tr:odd").addClass("odd");
	$("#sample_table tbody>tr:even").addClass("even");
	$("#sample_table tbody>tr").click(function(){	
	$(this).addClass("selected").siblings().removeClass("selected").end()
	})
	});
</script>
