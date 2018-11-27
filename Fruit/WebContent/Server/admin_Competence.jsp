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
<script src="js/jquery.dataTables.min.js"></script>
<script src="js/jquery.dataTables.bootstrap.js"></script>
<title>ç®¡çå</title>
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
<span class="submenu"><a href="add_Competence.html"  class="btn button_btn bg-deep-blue" title="æ·»å æé"><i class="fa  fa-edit"></i>&nbsp;æ·»å æé</a></span>
   <div class="search  clearfix">
   <input name="" type="text"  class="form-control col-xs-8"/><button class="btn button_btn bg-deep-blue " onclick=""  type="button"><i class="fa  fa-search"></i>&nbsp;æç´¢</button>
</div>
</div>
<div class="compete_list">
       <table id="sample-table-1" class="table table_list table_striped table-bordered dataTable no-footer">
		 <thead>
			<tr>
			  <th class="center"><label><input type="checkbox" class="ace"><span class="lbl"></span></label></th>
			  <th>æéåç§°</th>
			  <th>äººæ°</th>
              <th>ç¨æ·åç§°</th>
			  <th class="hidden-480">æè¿°</th>             
			  <th class="hidden-480">æä½</th>
             </tr>
		    </thead>
             <tbody>
			  <tr>
				<td class="center"><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
				<td>è¶çº§ç®¡çå</td>
				<td>1</td>
				<td class="hidden-480">admin</td>
				<td>æ¥æè³é«æ ä¸çæå©,æä½ç³»ç»çæææé</td>
				<td>
                 <a title="ç¼è¾" onclick="Competence_modify('560')" href="javascript:;" class="btn button_btn bg-deep-blue">ç¼è¾</a>        
                 <a title="å é¤" href="javascript:;" onclick="Competence_del(this,'1')" class="btn button_btn btn-danger">å é¤</a>
				</td>
			   </tr>
               <tr>
				<td class="center"><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
				<td>æ®éç®¡çå</td>
				<td>3</td>
				<td class="hidden-480">admin123 , å¼ å°æ³ ,åé·é²</td>
				<td>æ¥æç½ç«çç³»ç»å¤§é¨åä½¿ç¨æéï¼æ²¡ææéç®¡çåè½ã</td>
				<td>
                 <a title="ç¼è¾" onclick="Competence_modify('561')" href="javascript:;" class="btn button_btn bg-deep-blue">ç¼è¾</a>        
                 <a title="å é¤" href="javascript:;" onclick="Competence_del(this,'2')" class="btn button_btn btn-danger">å é¤</a>
				</td>
			   </tr>	
               <tr>
				<td class="center"><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
				<td>ç¼è¾ç®¡çå</td>
				<td>5</td>
				<td class="hidden-480">admin345,stysty,adminstyle,admin45678,admin123455</td>
				<td>æ¥æé¨åæéï¼ä¸»è¦è¿è¡ç¼è¾åè½ï¼æ è¾¹çè®¢ååè½ï¼æéåéåè½ã</td>
				<td>
                 <a title="ç¼è¾" onclick="Competence_modify('562')" href="javascript:;" class="btn button_btn bg-deep-blue">ç¼è¾</a>        
                 <a title="å é¤" href="javascript:;" onclick="Competence_del(this,'3')" class="btn button_btn btn-danger">å é¤</a>
				</td>
			   </tr>												
		      </tbody>
	        </table>
     </div>
</div>
</body>
</html>
<script>
	/*æéå é¤*/
function Competence_del(obj,id){
	layer.confirm('ç¡®è®¤è¦å é¤åï¼',{icon:0,},function(index){
		$(obj).parents("tr").remove();
		layer.msg('å·²å é¤!',{icon:1,time:1000});
	});
}
$('table th input:checkbox').on('click' , function(){
					var that = this;
					$(this).closest('table').find('tr > td:first-child input:checkbox')
					.each(function(){
						this.checked = that.checked;
						$(this).closest('tr').toggleClass('selected');
					});
						
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
