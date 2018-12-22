<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
	
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
<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js" type="text/javascript"></script>
<script src="js/respond.min.js"></script>
<script src="js/css3-mediaqueries.js"  type="text/javascript"></script>
  <![endif]-->
<title>添加文章</title>
</head>

<body>
<div class="margin" id="page_style">
  <div class="add_style">
  <form action="message.s">
  <input type="hidden" name="op" value="add">
    <ul>
  <li class="clearfix">
  <label class="label_name col-xs-1">
  <i>*</i>标题名称:
  </label>
  <div class="Add_content col-xs-11">
  <input name="mtitle"  type="text"  class="col-xs-6" value="${message.mtitle}"/>
  </div>  
  </li>
  <li class="clearfix">
  <label class="label_name col-xs-1">
  <i>*</i>简单描述:
  </label>
  <div class="Add_content col-xs-11">
  <input name="mdescription" type="text" class="col-xs-4" value="${message.mdescription }"/>
  </div>
  </li>
     <li class="clearfix"><label class="label_name col-xs-1"><i>*</i>&nbsp;关&nbsp;键&nbsp;字:</label>
     <div class="Add_content col-xs-11">
     <input name="mkeyword" type="text" class="col-xs-4" value="${message.mkeyword}"/>
     <em class="Prompt"> 请用","分隔关键字</em></div>
     </li>
     <li class="clearfix">
   <label class="label_name col-xs-1"><i>*</i>所属分类:</label>
   <div class="Add_content col-xs-11">
   <span class="classification_name l_f"><label ><input type="radio" name="form-field-radio" class="ace" value="帮助中心">
   <span class="lbl">帮助中心</span></label></span>
   <span class="classification_name l_f"><label ><input type="radio" name="form-field-radio" class="ace" value="购物指南">
   <span class="lbl">购物指南</span></label></span>
   <span class="classification_name l_f"><label ><input type="radio" name="form-field-radio" class="ace" value="支付方式">
   <span class="lbl">支付方式</span></label></span>
   <span class="classification_name l_f"><label ><input type="radio" name="form-field-radio" class="ace" value="售后服务">
   <span class="lbl">售后服务</span></label></span>
   <span class="classification_name l_f"><label ><input type="radio" name="form-field-radio" class="ace" value="特色服务">
   <span class="lbl">特色服务</span></label></span>
   <span class="classification_name l_f"><label ><input type="radio" name="form-field-radio" class="ace" value="公司动态">
   <span class="lbl">公司动态</span></label></span>
   <span class="relative l_f">
   </span>
   </div> 
   </li>
      <li class="clearfix"><label class="label_name col-xs-1"><i>*</i>
    	  内容介绍:</label>
     <div class="Add_content col-xs-11">
     <script id="editor" type="text/plain" style="width:100%;height:500px;">${message.content}</script></div>
     </li> 
  </ul>
  <div class="Button_operation btn_width">
    <button class="btn button_btn bg-deep-blue" type="submit">保存并提交</button>
    <button class="btn button_btn bg-orange" type="button">保存草稿</button>
    <button class="btn button_btn bg-gray" type="button">取消添加</button>
 </div>
 </form>
  </div>
</div>
</body>
<c:if test="${ ! empty msg }">
	<script type="text/javascript">
		alert('${msg}');
	</script>
</c:if>
</html>
   <!--复文本编辑框-->
    <script type="text/javascript" charset="utf-8" src="js/utf8-jsp/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="js/utf8-jsp/ueditor.all.min.js"> </script>
    <script type="text/javascript" charset="utf-8" src="js/utf8-jsp/lang/zh-cn/zh-cn.js"></script>
<script>
$(function(){
 var ue = UE.getEditor('editor');
});
 /*******滚动条*******/
$("body").niceScroll({  
	cursorcolor:"#888888",  
	cursoropacitymax:1,  
	touchbehavior:false,  
	cursorwidth:"5px",  
	cursorborder:"0",  
	cursorborderradius:"5px"  
});
</script>
