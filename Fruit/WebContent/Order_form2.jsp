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
<script src="js/Sellerber.js" type="text/javascript"></script>
<script src="js/layer/layer.js" type="text/javascript"></script>
<script src="js/laydate/laydate.js" type="text/javascript"></script>
<script type="text/javascript" src="js/proTree.js" ></script>
<script src="js/jquery.easy-pie-chart.min.js"></script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js" type="text/javascript"></script>
<script src="js/respond.min.js"></script>
<script src="js/css3-mediaqueries.js"  type="text/javascript"></script>
  <![endif]-->
<title>订单列表</title>
<script type="text/javascript">
function Delivery_stop(){
	$("#Delivery_stop").css('display','block');
	var name = document.getElementById("fahuo").rel;
	var name1 = document.getElementById("s1");
	name1.value=name;
	console.log(name);
	console.log(name1.value);
}
</script>
</head>
<body>
<div class="margin" id="page_style">
<!--列表展示-->
<div class="h_products_list clearfix" id="Sellerber">

<div class="list_Exhibition list_show padding15">

 <div class="datalist_show">
  <div class="datatable_height confirm">
 <table class="table table_list table_striped table-bordered" id="covar_list">
  <thead>
    <tr>
		<th width="25px"><label><input type="checkbox" class="ace"><span class="lbl"></span></label></th>
		<th width="120px">订单编号</th>
		<th width="100px">水果编号</th>
		<th width="100px">水果数量</th>				
		<th width="80px">单价</th>
		<th width="70px">金额</th>                
	</tr>  
  </thead>
  <tbody>
  
<c:forEach items="${food}" var="i">
	     <tr>
	     <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
	     <td>${i.cid}</td>
	     <td>${i.fid}</td>
	     <td>${i.buynum}</td>
	     <td>${i.perprice}</td>
	      <td class="td-status"><span class="label label-success radius">${i.xiaoji}</span></td>
	    
	     </tr>
</c:forEach>
     </tbody>
     </table>
     <a href="user.s?op=Order_form&state=${st }">返回</a>
    </div>
    </div>
	</div>
   </div>
 </div>
  <!--发货-->
  <form action="" method="post">
 <div id="Delivery_stop" style=" display:none">    
  <div class="padding15">
    <div class="content_style">
  <div class="form-group"><label class="col-sm-2 control-label no-padding-right" for="form-field-1">快递公司 </label>
       <div class="col-sm-9"><select name="text" class="form-control col-xs-8 col-sm-8 col-md-8" id="sel">
																<option value="">--选择快递--</option>
																<option value="1">天天快递</option>
																<option value="2">圆通快递</option>
																<option value="3">中通快递</option>
															</select></div>
	</div>
	<!--
   <div class="form-group"><label class="col-sm-2 control-label no-padding-right" for="form-field-1"> 快递号 </label>
      <div class="col-xs-8 col-sm-8 col-md-8 col-lg-9">
    <input type="text" id="form-field-1" placeholder="快递号" class="col-xs-10 col-sm-8 col-xs-8" style="margin-left:0px;"></div>
	</div>
	-->
    <div class="form-group"><label class="col-sm-2 control-label no-padding-right" for="form-field-1">货到付款 </label>
     <div class="col-sm-9"><label class="col-sm-2 " style="display: block; margin-top:6px">
     <input name="checkbox" type="checkbox" class="ace" id="checkbox"><span class="lbl"></span></label></div>
	</div>
	<div class="layui-layer-btn">
		<input type="hidden" name="op" id="orderId" value="faHuo"/>
		<button style="height: 35px;width: 60px" type="submit">确定</button>
		<a class="layui-layer-btn1">取消</a>
	</div>
 </div>
  </div>
 </div>
 </form>
</body>
<c:if test="${! empty msg }">
		<script type="text/javascript">
			alert('${msg}');
		</script>
	</c:if>
</html>
<script type="text/javascript">

$(function(){
	$("#faHuo").click(function(){
		var name = $(this);
		var id = name.attr("rel");
		if(name.attr("name") === "see"){
			$.ajax({
				type: "post",
				url: "user.s?op=faHuo",
				data: "id="+id,
				cache: false,
				success: function(data){
					
				}
			})
		}
	});
});

</script>

