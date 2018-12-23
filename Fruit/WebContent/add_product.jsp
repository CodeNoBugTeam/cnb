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
<script src="js/Sellerber.js" type="text/javascript"></script>
<script src="js/jquery.dataTables.min.js"></script>
<script src="js/jquery.dataTables.bootstrap.js"></script>
<script src="js/layer/layer.js" type="text/javascript"></script>
<script src="js/laydate/laydate.js" type="text/javascript"></script>
<script src="js/hsCheckData.js" type="text/javascript"></script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js" type="text/javascript"></script>
<script src="js/respond.min.js"></script>
<script src="js/css3-mediaqueries.js"  type="text/javascript"></script>
  <![endif]-->
<title>添加产品</title>
</head>

<body>
<form action="user.s" method="post">
	<input name="op" value="productadd" type="hidden"/>
	<div class="margin inside_pages clearfix">
	<div class="add_style clearfix relative">
	  <!--品牌展示 当通过品牌管理添加产品是显示该-->

	  <div class="Brand_title">
	  	 <div class="Brand_img"><img src="product_img/rc-2.jpg"/><h3>南非柠檬</h3></div>
	  </div>
	 <ul>
	 <li class="clearfix"><label class="label_name col-xs-1"><i>*</i>商品名称：&nbsp;&nbsp;
	  </label><div class="Add_content col-xs-11"><input name="fname" type="text" class="col-xs-4"/></div></li>
	 <li class="clearfix"><label class="label_name col-xs-1"><i>*</i>商品产地：&nbsp;&nbsp;
	  </label><div class="Add_content col-xs-11"><input name="fplace" type="text" class="col-xs-4"/></div></li>
	  <li class="clearfix"><label class="label_name col-xs-1"><i>*</i>商品编号：&nbsp;&nbsp;
	  </label><div class="Add_content col-xs-11"><input name="fin" type="text" class="col-xs-4"/></div></li>
	  <li class="clearfix"><label class="label_name col-xs-1"><i>*</i>简单描述：&nbsp;&nbsp;
	  </label><div class="Add_content col-xs-11"><input name="details" type="text" class="col-xs-4"/></div></li>
	 
	  <li class="clearfix">
	   <label class="label_name col-xs-1"><i>*</i>发布栏：&nbsp;&nbsp;</label>
	   <span class="classification_name l_f"><label >
	   <input type="checkbox" name="family" class="ace" value="果园推荐" /><span class="lbl">果园推荐</span></label></span>
	   <span class="classification_name l_f"><label >
	   <input type="checkbox" name="family" class="ace" value="蔬果热卖" /><span class="lbl">蔬果热卖</span></label></span>
	   <span class="classification_name l_f"><label >
	   <input type="checkbox" name="family" class="ace" value="进口水果" /><span class="lbl">进口水果</span></label></span>
	   <span class="classification_name l_f"><label >
	   <input type="checkbox" name="family" class="ace" value="国产水果" /><span class="lbl">国产水果</span></label></span>
	   <span class="classification_name l_f"><label >
	   <input type="checkbox" name="family" class="ace" value="新鲜时蔬" /><span class="lbl">新鲜时蔬</span></label></span>
	
	   <span class="relative l_f">
	   <button  type="button" onclick="add_category()" class="btn bg-deep-blue operation_btn margin-left">添加分类</button>
	   <div class="add_category_style">
	     <p class="clearfix">
	     <input name="" type="text"  class="l_f form-control" style="width:220px;"/>
	     <button style="margin:0px" class="btn button_btn bg-deep-blue l_f" id="add_category" type="button">添加</button>
	     </p>
	     <p class="Prompt"><em>该分类最多添加10个</em></p>
	   </div>
	   </span>
	   </div> 
	   </li>
	     <li class="clearfix">
	      <div class="col-xs-4">
	     <label class="label_name col-xs-3"><i>*</i>商品单价：&nbsp;&nbsp;</label> 
	    <div class="Add_content col-xs-9">
	    <input name="price" type="text"  class="col-xs-7"/><em class="Prompt">元</em>
	    </div>   
	    </div>
	    <div class="col-xs-4">
	    <label class="label_name col-xs-3"><i>*</i>商品数量：&nbsp;&nbsp;</label> 
	    <div class="Add_content col-xs-9">
	   <input name="number" type="text"  class="col-xs-7"/><em class="Prompt">件</em>
	    </div>   
	    </div>
	    </li>
	  
	     <li class="clearfix">
	      <div class="col-xs-4">
	     <label class="label_name col-xs-3">是否上架：&nbsp;&nbsp;</label> 
	    <div class="Add_content col-xs-9">
	    <label><input type="radio" name="checkbox" class="ace" checked="checked"/><span class="lbl">是</span></label>
	    <label><input type="radio" name="checkbox" class="ace"/><span class="lbl">否</span></label>
	    </div>   
	    </div>
	    <div class="col-xs-4">
	    <!-- <label class="label_name col-xs-3">允许评论：&nbsp;&nbsp;</label>  --> 
	    </div>
	    </li>
	      <li class="clearfix">
	     <label class="label_name col-xs-1"><i>*</i>产品图片：&nbsp;&nbsp;</label>
	     <div class="Add_content col-xs-11" id="Upload">
	     <div class="images_Upload clearfix margin-bottom" id="images_Upload">
	      <span class="Upload_img">
	      <input name="ipic" type="file" /></span>
	      <a href="javascript:ovid()" class="operating delete_Upload" onclick="delete_Upload(this.id)">
	      <i class="fa fa-remove"></i></a>
	      
	      
	      <!-- ajax刷新 -->
	      <a href="javascript:ovid()" class="operating" title="预览图片" onclick="preview_img(this.id)">
	      <i class="fa  fa-image"></i></a>
	    </div>
	    <button type="button" class="add_Upload bg-deep-blue" id="add_Upload" onclick="add_Upload()">
	    <i class="fa  fa-plus"></i></button>
	     </div>
	     </li>
	    <!-- <li class="clearfix"><label class="label_name col-xs-1"><i>*</i>内容介绍：&nbsp;&nbsp;</label>
	     <div class="Add_content col-xs-11"><script id="editor" type="text/plain" style="width:100%;height:500px;">
	</script></div>
	     </li>  
	     -->
	 </ul>
	 <div class="Button_operation btn_width">
	    <button class="btn button_btn bg-deep-blue" type="submit">保存并提交</button>
	    <button class="btn button_btn bg-orange" type="button">保存草稿</button>
	    <button class="btn button_btn bg-gray" type="button">取消添加</button>
	 </div>

	</div>
	
	</div>
</form>

</body>
</html>
   <!--复文本编辑框-->
    <script type="text/javascript" charset="utf-8" src="js/utf8-jsp/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="js/utf8-jsp/ueditor.all.min.js"> </script>
    <script type="text/javascript" charset="utf-8" src="js/utf8-jsp/lang/zh-cn/zh-cn.js"></script>
<script>
var cityData=[
{
		"2":"水果",
		"childCity":[
			{"201":"南非柠檬"},
			{"202":"智利蓝莓"},
			{"203":"美国红啤梨"},
			{"204":"美国红提"},
			{"205":"国产奇异果"},
			{"206":"浙江蜜桔"},
			{"207":"菲律宾凤梨"},
			{"208":"福建蜜柚"},
			{"209":"水蜜桃"},
		]},
	{
		"3":"蔬菜",
		"childCity":[
			{"301":"菠菜"},
			{"302":"莲藕"},
			{"303":"白酒"},
			{"304":"啤酒"},
			{"305":"葡萄酒"},
			{"306":"香肠"},
			{"307":"火腿肠"},
			{"308":"牛奶"},
		]},
];
	$('#cityDanXuan').hsCheckData({
		isShowCheckBox: false, //默认为false
		data: cityData
	});
$(function(){
 var ue = UE.getEditor('editor');
});
$(document).ready(function(){
    var spotMax = 8;
  if($('div.images_Upload').size() >= spotMax) {$(obj).hide();}
  $("#add_Upload").on('click',function(){ 
       var cid =$('.images_Upload').each(function(i){ $(this).attr('id',"Uimages_Upload_"+i)});
       addSpot(this, spotMax, cid);
  });
});
function addSpot(obj, sm ,sid) {
	  $("#Upload").append("<div class='images_Upload clearfix margin-bottom' id='"+sid+"'>"+
	  "<span class='Upload_img'><input name='' type='file' /></span>"+
	  "<a href='javascript:ovid()' class='operating delete_Upload'><i class='fa fa-remove'></i></a>"+
	  "<a href='javascript:ovid()' class='operating' onclick='preview_img(this.id)'><i class='fa  fa-image'></i></a>"+
	  "</div>&nbsp;")  
	.find(".delete_Upload").click(function(){
		if($('div.images_Upload').size()==1){
			layer.msg('请至少保留一张图片!',{icon:0,time:1000});			
			}
			else{
				 $(this).parent().remove();
                 $('#add_Upload').show();
				} 				
				
  });
  if($('.delete_Upload').size() >= sm) {$(obj).hide();layer.msg('当前为最大图片添加量!',{icon:0,time:1000});}}
 /*checkbox激发事件*/
$('#checkbox').on('click',function(){
	if($('input[name="checkbox"]').prop("checked")){
		 $('.Date_selection ').css('display','block');
		}
	else{
		
		 $('.Date_selection').css('display','none');
		}	
	});
function add_category(){
	 $(".add_category_style").toggle();
	
	}
  /******时间设置*******/
  var start = {
    elem: '#start',
    format: 'YYYY/MM/DD hh:mm:ss',
    min: laydate.now(), //设定最小日期为当前日期
    max: '2099-06-16 23:59:59', //最大日期
    istime: true,
    istoday: false,
    choose: function(datas){
         end.min = datas; //开始日选好后，重置结束日的最小日期
         end.start = datas //将结束日的初始值设定为开始日
    }
};
var end = {
    elem: '#end',
    format: 'YYYY/MM/DD hh:mm:ss',
    min: laydate.now(),
    max: '2099-06-16 23:59:59',
    istime: true,
    istoday: false,
    choose: function(datas){
        start.max = datas; //结束日选好后，重置开始日的最大日期
    }
};
laydate(start);
laydate(end);
/*********滚动事件*********/
$("body").niceScroll({  
	cursorcolor:"#888888",  
	cursoropacitymax:1,  
	touchbehavior:false,  

	cursorwidth:"5px",  
	cursorborder:"0",  
	cursorborderradius:"5px"  
});
</script>
