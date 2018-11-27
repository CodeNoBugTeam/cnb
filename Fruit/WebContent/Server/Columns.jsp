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
<script type="text/javascript" src="js/jquery.nestable.min.js"></script>
<script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
<script src="js/jquery.dataTables.min.js"></script>
<script src="js/jquery.dataTables.bootstrap.js"></script>
<script src="js/layer/layer.js" type="text/javascript"></script>
<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js" type="text/javascript"></script>
<script src="js/respond.min.js"></script>
<script src="js/css3-mediaqueries.js"  type="text/javascript"></script>
  <![endif]-->
<title>æ ç®</title>
</head>

<body>
<div class="margin" id="page_style">
<div class="operation">
<button class="btn button_btn btn-danger" type="button" onclick=""><i class="fa fa-trash-o"></i>&nbsp;å é¤</button>
<span class="submenu"><a href="javascript:void(0)" class="btn button_btn bg-deep-blue" title="æ·»å æ ç®"  onclick="add_columns()"><i class="fa  fa-edit"></i>&nbsp;æ·»å æ ç®</a></span>
</div>
<div class="Columns_list slideBox margin-top" id="Columns_list">
<div class="hd">
  <ul>
   <li>ä¸»å¯¼èªæ ç®</li>
   <li>é¡¶é¨æ ç®</li>
   <li>åºé¨æ ç®</li>
  </ul>
  </div>
  <div class="bd">
  <ul class="main_column">
<table class="table table_list table_striped table-bordered  margin-top">
  <thead>
  <tr>
   <th width="7%">æ ç®åç§°</th>
   <th width="55%">é¾æ¥å°å</th>
   <th width="15%">æ·»å æ¶é´</th>
   <th width="8%">çº§å«</th>
   <th width="5%">ç¶æ</th>
   <th width="10%">æä½</th>
   </tr>   
  </thead>
  <tbody>
  <tr>
  <td colspan="7" class="padding_none">
  <div class="dd" id="nestable">
  <ol class="dd-list">  
    <li class="dd-item" data-id="1">
    <div class="dd-handle">
       <table>
       <tbody>
       <tr>
        <td width="7%">é¦é¡µ</td>
        <td width="55%">http://www.weiqing.com/page.php?id=1</td>
        <td width="15%">2016-08-22</td>
        <td width="8%">ä¸çº§</td>
        <td width="5%">æ¾ç¤º</td>
        <td width="10%" class="operating">
         <a href="javascrpit:void()" class="btn btn-white button_btn" onclick="columns_delete(this,'10')">å é¤</a>
         <a href="" class="btn btn-white button_btn">ä¿®æ¹</a>
        </td>
        </tr>
        </tbody>
       </table>
    </div>    
    </li>
    <li class="dd-item" data-id="2">
       <div class="dd-handle">
       <table>
       <tbody>
       <tr>
        <td width="7%">å¨é¨äº§å</td>
         <td width="55%">http://www.weiqing.com/page.php?id=1</td>
        <td width="15%">2016-08-22</td>
        <td width="8%">ä¸çº§</td>
        <td width="5%">æ¾ç¤º</td>
        <td width="10%" class="operating">
         <a href="javascrpit:void()" class="btn btn-white button_btn" onclick="columns_delete(this,'11')">å é¤</a>
         <a href="" class="btn btn-white button_btn">ä¿®æ¹</a>
        </td>
        </tr>
        </tbody>
       </table>
       </div>
    </li>              
    <li class="dd-item" data-id="3">
      <div class="dd-handle dd-columns">
      <table>
       <tbody>
       <tr>
        <td width="7%">å³äºæä»¬</td>
        <td width="55%">http://www.weiqing.com/page.php?id=1</td>
        <td width="15%">2016-08-22</td>
        <td width="8%">ä¸çº§</td>
        <td width="5%">æ¾ç¤º</td>
        <td width="10%" class="operating">
         <a href="javascrpit:void()" class="btn btn-white button_btn" onclick="columns_delete(this,'12')">å é¤</a>
         <a href="" class="btn btn-white button_btn">ä¿®æ¹</a>
        </td>
        </tr>
        </tbody>
       </table>
       </div>
        <ol class="dd-list">
          <li class="dd-item" data-id="4">
           <div class="dd-handle dd-handle_two">
             <table>
               <tbody>
               <tr>
                <td width="7%">å¬å¸ä»ç»</td>
                <td width="55%">http://www.weiqing.com/page.php?id=1</td>
                <td width="15%">2016-08-22</td>
                <td width="8%">äºçº§</td>
                <td width="5%">æ¾ç¤º</td>
                <td width="10%">
                 <a href="" class="btn button_btn btn-danger">å é¤</a>
                 <a href="" class="btn button_btn btn-danger">ä¿®æ¹</a>
                </td>
                </tr>
                </tbody>
               </table>
              </div>
             </li>
              <li class="dd-item" data-id="5">
                <div class="dd-handle dd-handle_two">
                <table>
               <tbody>
               <tr>
                <td width="7%">ç»ç»æ¶æ</td>
                 <td width="55%">http://www.weiqing.com/page.php?id=1</td>
                <td width="15%">2016-08-22</td>
                <td width="8%">äºçº§</td>
                <td width="5%">æ¾ç¤º</td>
                <td width="10%">
                 <a href="" class="btn button_btn btn-danger">å é¤</a>
                 <a href="" class="btn button_btn btn-danger">ä¿®æ¹</a>
                </td>
                </tr>
                </tbody>
               </table>                    
                  </div> 
              </li>
          </ol>
      </li>
      <li class="dd-item" data-id="6">
          <div class="dd-handle">
         <table>
       <tbody>
       <tr>
        <td width="7%">å¢è´­åå</td>
        <td width="55%">http://www.weiqing.com/page.php?id=1</td>
        <td width="15%">2016-08-22</td>
        <td width="8%">ä¸çº§</td>
        <td width="5%">æ¾ç¤º</td>
        <td width="10%" class="operating">
         <a href="" class="btn btn-white button_btn">å é¤</a>
         <a href="" class="btn btn-white button_btn">ä¿®æ¹</a>
        </td>
        </tr>
        </tbody>
       </table>              
          </div>
      </li>
      <li class="dd-item" data-id="7">
       <div class="dd-handle">
       <table>
       <tbody>
       <tr>
        <td width="7%">å¸®å©ä¸­å¿</td>
         <td width="55%">http://www.weiqing.com/page.php?id=1</td>
        <td width="15%">2016-08-22</td>
        <td width="8%">ä¸çº§</td>
        <td width="5%">æ¾ç¤º</td>
        <td width="10%" class="operating">
         <a href="javascrpit:void()" class="btn btn-white button_btn" onclick="columns_delete(this,'14')">å é¤</a>
         <a href="" class="btn btn-white button_btn">ä¿®æ¹</a>
        </td>
        </tr>
        </tbody>
       </table>
       </div>
      </li>
       <li class="dd-item" data-id="8">
       <div class="dd-handle">
        <table>
       <tbody>
       <tr>
        <td width="7%">èç³»æä»¬</td>
        <td width="55%">http://www.weiqing.com/page.php?id=1</td>
        <td width="15%">2016-08-22</td>
        <td width="8%">ä¸çº§</td>
        <td width="5%">æ¾ç¤º</td>
        <td width="10%" class="operating">
         <a href="javascrpit:void()" class="btn btn-white button_btn" onclick="columns_delete(this,'15')">å é¤</a>
         <a href="" class="btn btn-white button_btn">ä¿®æ¹</a>
        </td>
        </tr>
        </tbody>
       </table>
       </div>
      </li>
  </ol>
</div>  
 </td>
 </tr>
 </tbody>
 </table>
 </ul>
 <ul>
  <table class="table table_list table_striped table-bordered" id="sample-table" style="width:100%">
  <thead>
  <tr>
   <th width="50">æåº</th>
   <th width="150">æ ç®åç§°</th>   
   <th >å°å</th>
   <th width="80">æå±åç±»</th>
   <th width="100">ç¶æ</th>
   <th width="150">æ¶é´</th>
   <th>æä½</th>
   </tr>   
  </thead>
  <tbody>
   <tr>
   </tr>
  </tbody>
 </table>
 </ul>
 <ul>
 
 </ul>
</div>
</div>
</div>
<!--æ·»å æ ç®-->
<div class="add_columns_style" id="add_columns_style" style=" display:none">
  <div class="add_style">
  <ul>
    <li class="clearfix"><label class="label_name col-xs-3">å¯¼èªæ ç®åç§°ï¼&nbsp;&nbsp;</label><div class="Add_content col-xs-9"><input name="" type="text"  class="col-xs-6"/></div>  
    </li>
     <li class="clearfix">
     <label class="label_name col-xs-3">æ·»å ä½ç½®ï¼&nbsp;&nbsp;</label>
     <div class="Add_content col-xs-9">
     <label><input type="radio" name="checkbox" class="ace" checked="checked"><span class="lbl">ä¸»æ ç®</span></label>
     <label><input type="radio" name="checkbox" class="ace"><span class="lbl">é¡¶é¨</span></label>
     <label><input type="radio" name="checkbox" class="ace"><span class="lbl">åºé¨</span></label>
    </div> 
      </li>
       <li class="clearfix">
     <label class="label_name col-xs-3">èªå®ä¹é¾æ¥ï¼&nbsp;&nbsp;</label>
     <div class="Add_content col-xs-9">
     <label class="l_f checkbox_time"><input type="checkbox" name="checkbox" class="ace" id="checkbox"><span class="lbl">æ¯</span></label>
     <div class="Link_address" style="display:none">
        <input name="" type="text"  class="col-xs-6" placeholder="å¦ï¼http://www.jd.com/?cu=true"/>
     </div>
    </div> 
      </li>
     <li class="clearfix"><label class="label_name col-xs-3">é¾æ¥é¡¹ç®ï¼&nbsp;&nbsp;</label><div class="Add_content col-xs-9">
     <select name="nav_menu" onchange="change('nav_name', this)">
              <option value="">è¯·æ¨éæ©é¾æ¥é¡¹ç®</option>
                            <option value="page,1" title="å¬å¸ç®ä»">- å¬å¸ç®ä»</option>
                            <option value="page,2" title="ä¼ä¸è£èª">-- ä¼ä¸è£èª</option>
                            <option value="page,3" title="åå±åç¨">-- åå±åç¨</option>
                            <option value="page,4" title="èç³»æä»¬">-- èç³»æä»¬</option>
                            <option value="page,5" title="äººææè">- äººææè</option>
                            <option value="page,6" title="è¥éç½ç»">- è¥éç½ç»</option>
                            <option value="product_category,0" title="äº§åä¸­å¿"> äº§åä¸­å¿</option>
                            <option value="product_category,1" title="çµå­æ°ç ">- çµå­æ°ç </option>
                            <option value="product_category,4" title="æºè½ææº">-- æºè½ææº</option>
                            <option value="product_category,5" title="å¹³æ¿çµè">-- å¹³æ¿çµè</option>
                            <option value="product_category,2" title="å®¶å±ç¾è´§">- å®¶å±ç¾è´§</option>
                            <option value="product_category,3" title="æ¯å©´ç¨å">- æ¯å©´ç¨å</option>
                            <option value="article_category,0" title="æç« ä¸­å¿"> æç« ä¸­å¿</option>
                            <option value="article_category,1" title="å¬å¸å¨æ">- å¬å¸å¨æ</option>
                            <option value="article_category,2" title="è¡ä¸æ°é»">- è¡ä¸æ°é»</option>
                           </select>
     
     </div>  
    </li>
    <li class="clearfix"><label class="label_name col-xs-3">ä¸çº§åç±»ï¼&nbsp;&nbsp;</label><div class="Add_content col-xs-9"><select name="parent_id">
              <option value="0">æ </option>
                            <option value="1"> å¬å¸ç®ä»</option>
                            <option value="2">- ä¼ä¸è£èª</option>
                            <option value="3">- åå±åç¨</option>
                            <option value="4">- èç³»æä»¬</option>
                            <option value="5"> äº§åä¸­å¿</option>
                            <option value="10">- çµå­æ°ç </option>
                            <option value="22">-- æºè½ææº</option>
                            <option value="23">-- å¹³æ¿çµè</option>
                            <option value="11">- å®¶å±ç¾è´§</option>
                            <option value="12">- æ¯å©´ç¨å</option>
                            <option value="6"> æç« ä¸­å¿</option>
                            <option value="13">- å¬å¸å¨æ</option>
                            <option value="14">- è¡ä¸æ°é»</option>
                            <option value="7"> è¥éç½ç»</option>
                            <option value="15"> ä¼ä¸è£èª</option>
                            <option value="8"> äººææè</option>
                            <option value="9"> èç³»æä»¬</option>
                           </select></div>  
    </li>
    <li class="clearfix"><label class="label_name col-xs-3">æåºï¼&nbsp;&nbsp;</label><div class="Add_content col-xs-9"><input name="" type="text"  class="col-xs-1"/></div>  
    </li>
  </ul>
  </div>
</div>
</body>
</html>
<script type="text/javascript">

jQuery(function($){			
	$('.dd').nestable();							
    $('.dd-handle a').on('mousedown', function(e){
		e.stopPropagation();
	});
});
/**æ ç®å é¤**/
function columns_delete(obj,id){
	layer.confirm('ç¡®è®¤è¦å é¤åï¼',{icon:0,},function(index){
		$(obj).parents("li").remove();
		layer.msg('å·²å é¤!',{icon:1,time:1000});
	});	
	}
/**é¡¶é¨å é¤**/
function top_columns_delete(obj,id){
		layer.confirm('ç¡®è®¤è¦å é¤åï¼',{icon:0,},function(index){
		$(obj).parents("tr").remove();
		layer.msg('å·²å é¤!',{icon:1,time:1000});
	});	
	
	}
function add_columns(){
	layer.open({
        type: 1,
        title: 'æ·»å æ ç®',
		maxmin: false, 
		shadeClose:false, //ç¹å»é®ç½©å³é­å±
        area : ['600px' , '400px'],
        content:$('#add_columns_style'),
		btn:['æäº¤','åæ¶'],
	 });
	
	
}
jQuery(".slideBox").slide({trigger:"click",easing:"easeOutElastic"});
/**********æ°æ®**********/
var dataSet=[
['1','å¸®å©ä¸­å¿','http://www.weiqing.com/help.php?name=23&id=1','å¸®å©ä¸­å¿','å¯ç¨','2016-04-12',' <a href="javascrpit:void()" class="btn bg-deep-blue button_btn" onclick="top_columns_delete(this,'+15+')">å é¤</a><a href="" class="btn bg-deep-blue button_btn">ä¿®æ¹</a>'],
	['1','å¸®å©ä¸­å¿','http://www.weiqing.com/help.php?name=23&id=1','å¸®å©ä¸­å¿','å¯ç¨','2016-04-12',' <a href="javascrpit:void()" class="btn bg-deep-blue button_btn" onclick="top_columns_delete(this,'+15+')">å é¤</a><a href="" class="btn bg-deep-blue button_btn">ä¿®æ¹</a>'],
['1','å¸®å©ä¸­å¿','http://www.weiqing.com/help.php?name=23&id=1','å¸®å©ä¸­å¿','å¯ç¨','2016-04-12',' <a href="javascrpit:void()" class="btn bg-deep-blue button_btn" onclick="top_columns_delete(this,'+15+')">å é¤</a><a href="" class="btn bg-deep-blue button_btn">ä¿®æ¹</a>']
];
jQuery(function($) {
				var oTable1 = $('#sample-table').dataTable({
				"data": dataSet,
				
				  "fnInitComplete": function() {
                this.fnAdjustColumnSizing(true);
                },
                "bJQueryUI": true,
				"aaSorting": [[ 1, "desc" ]],//é»è®¤ç¬¬å ä¸ªæåº
		        "bStateSave": true,//ç¶æä¿å­
				"searching": false,
		        "aoColumnDefs": [{"orderable":false,"aTargets":[0,2,3,5]
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
$('#checkbox').on('click',function(){
	if($('.checkbox_time input[name="checkbox"]').prop("checked")){
		 $('.Link_address').css('display','block');
		}
	else{		
		 $('.Link_address').css('display','none');
		}	
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
</script>
