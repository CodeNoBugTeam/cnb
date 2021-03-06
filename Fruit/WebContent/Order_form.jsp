<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	String s = request.getParameter("state");
	request.setAttribute("st", s);
	if (request.getAttribute("UnfinishedOrder") == null) {
		request.getRequestDispatcher("user.s?op=Order_form&state=" + s).forward(request, response);
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="css/shop.css" type="text/css" rel="stylesheet" />
<link href="css/Sellerber.css" type="text/css" rel="stylesheet" />
<link href="css/bkg_ui.css" type="text/css" rel="stylesheet" />
<link href="font/css/font-awesome.min.css" rel="stylesheet"
	type="text/css" />
<script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery.cookie.js"></script>
<script src="js/shopFrame.js" type="text/javascript"></script>
<script src="js/Sellerber.js" type="text/javascript"></script>
<script src="js/layer/layer.js" type="text/javascript"></script>
<script src="js/laydate/laydate.js" type="text/javascript"></script>
<script type="text/javascript" src="js/proTree.js"></script>
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
<div class="operation clearfix mb15 same_module cover_style p0" id="Order_form_style">
       <div class="type_title">购物产品比例</div>
        <div class="hide_style clearfix">
       <div class="proportion"> <div class="easy-pie-chart percentage" data-percent="20" data-color="#D15B47"><span class="percent">20</span>%</div><span class="name">食品类</span></div>									
       <div class="proportion"> <div class="easy-pie-chart percentage" data-percent="55" data-color="#87CEEB"><span class="percent">55</span>%</div><span class="name">服装类</span></div>									
       <div class="proportion"> <div class="easy-pie-chart percentage" data-percent="90" data-color="#87B87F"><span class="percent">90</span>%</div><span class="name">数码配件</span></div>
       <div class="proportion"> <div class="easy-pie-chart percentage" data-percent="30" data-color="#d63116"><span class="percent">30</span>%</div><span class="name">手机</span></div>
       <div class="proportion"> <div class="easy-pie-chart percentage" data-percent="60" data-color="#ff6600"><span class="percent">60</span>%</div><span class="name">电脑</span></div>
       <div class="proportion"> <div class="easy-pie-chart percentage" data-percent="40" data-color="#2ab023"><span class="percent">40</span>%</div><span class="name">电子产品</span></div>
       <div class="proportion"> <div class="easy-pie-chart percentage" data-percent="46" data-color="#1e3ae6"><span class="percent">46</span>%</div><span class="name">厨房用品</span></div>
       <div class="proportion"> <div class="easy-pie-chart percentage" data-percent="65" data-color="#c316a9"><span class="percent">65</span>%</div><span class="name">家用电器</span></div>
       <div class="proportion"> <div class="easy-pie-chart percentage" data-percent="56" data-color="#13a9e1"><span class="percent">56</span>%</div><span class="name">卫浴</span></div>  
    </div>
</div>
<!--列表展示-->
<div class="h_products_list clearfix" id="Sellerber">
  <div class="Sellerber_left menu" id="menuBar">
    <div class="show_btn" id="rightArrow"><span></span></div>
    <div class="side_title"><a title="隐藏" class="close_btn"><span></span></a></div> 
    <div class="menu_style" id="menu_style">
    <div class="list_content">
     <div class="side_list">
        <div class="column_title"><h4 class="lighter smaller">订单类型</h4></div>
       <div class="st_tree_style tree">
      </div>
    </div>
  </div>
 </div>
</div>
<div class="list_Exhibition list_show padding15">
<div class="operation clearfix mb15 searchs_style">
<button class="btn button_btn btn-danger" type="button" onclick=""><i class="fa fa-trash-o"></i>&nbsp;删除</button>
<span class="submenu">
</span>
<form action="user.s" method="post">
<input type="hidden" name ="op" value="select1"/>
<div class="search  clearfix">
	 <label class="label_name">商品搜索：</label>
	 <input class="laydate-icon col-xs-2 col-lg-2 form-control Select_Date" id="start" type="text" name="start" value="${param.start }"/>
	 <span style=" float:left; padding:0px 10px; line-height:32px;">至</span>
	 <input class="laydate-icon col-xs-2 col-lg-2 form-control Select_Date" id="end" type="text" name="end" value="${param.end }"/>
	 <input name="miss" type="text"  class="form-control col-xs-3 col-lg-4" value="${param.miss }"/>
	 <button class="btn button_btn bg-deep-blue " onclick=""  type="submit"><i class="fa  fa-search"></i>&nbsp;搜索</button>
	 <span>订单</span>
</div>
</form>
</div>
 <div class="datalist_show">
  <div class="datatable_height confirm">
 <table class="table table_list table_striped table-bordered" id="covar_list">
  <thead>
    <tr>
		<th width="25px"><label><input type="checkbox" class="ace"><span class="lbl"></span></label></th>
		<th width="120px">订单编号</th>
		<th width="100px">总价</th>
		<th width="100px">订单时间</th>				
		<th width="80px">数量</th>
		<th width="70px">状态</th>                
		<th width="200px">操作</th>
	</tr>  
  </thead>
  <tbody>
  
<c:forEach items="${UnfinishedOrder}" var="i">
	     <tr>
	     <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
	     <td>${i.cid}</td>
	     <td>${i.zongji}</td>
	     <td>${i.cdate}</td>
	     <td>${i.buynum}</td>
	      <td class="td-status"><span class="label label-success radius">${i.state}</span></td>
	     <td>
	     <a name="see" href="javascript:;" title="发货"  id="faHuo" rel="${i.cid}" class="btn btn-xs btn-status">发货</a> 
	     <a title="订单详细"  href="user.s?op=detailed&id=${i.cid}&state=${st}"  class="btn btn-xs btn-info" >详细</a> 
	     <a title="删除" href="javascript:;"  onclick="Order_form_del(this,'1')" class="btn btn-xs btn-delete" >删除</a>    
	     </td>
	     </tr>
</c:forEach>
     </tbody>
     </table>
     <p>
          	<span><a href = "<%=request.getContextPath() %>/customer.s?nowPage=1&buy=queryFruit">首页</a></span>
			<span><a href = "<%=request.getContextPath() %>/customer.s?before=beforePage&buy=queryFruit">上一页</a></span>
			<span><a href = "<%=request.getContextPath() %>/customer.s?after=afterPage&buy=queryFruit">下一页</a></span>
			<span><a href = "<%=request.getContextPath() %>/customer.s?nowPage=totalPage&buy=queryFruit">末页</a></span>
             </p>  
    </div>
    </div>
	</div>
	<!--发货-->
	<form action="" method="post">
		<div id="Delivery_stop" style="display: none">
			<div class="padding15">
				<div class="content_style">
					<div class="form-group">
						<label class="col-sm-2 control-label no-padding-right"
							for="form-field-1">快递公司 </label>
						<div class="col-sm-9">
							<select name="text"
								class="form-control col-xs-8 col-sm-8 col-md-8" id="sel">
								<option value="">--选择快递--</option>
								<option value="1">天天快递</option>
								<option value="2">圆通快递</option>
								<option value="3">中通快递</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label no-padding-right"
							for="form-field-1">货到付款 </label>
						<div class="col-sm-9">
							<label class="col-sm-2 " style="display: block; margin-top: 6px">
								<input name="checkbox" type="checkbox" class="ace" id="checkbox"><span
								class="lbl"></span>
							</label>
						</div>
					</div>
					<div class="layui-layer-btn">
						<input type="hidden" name="op" id="orderId" value="faHuo" />
						<button style="height: 35px; width: 60px" type="submit">确定</button>
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
	//设置内页框架布局
$(function() { 
	$("#Sellerber").frame({
		float : 'left',
		color_btn:'.skin_select',
		Sellerber_menu:'.list_content',
		page_content:'.list_show',//内容
		datalist:".datatable_height",//数据列表高度取值
		header:65,//顶部高度
		mwidth:200,//菜单栏宽度
		minStatue:true,	
	});
});
//后台传入的 标题列表
var arr = [{
		id: 1,
		name: "食品/酒类/特产",
	    amount:234,
		pid: 0,
	    
	}, {
		id: 2,
		name: "数码家电",
		amount:64,
		pid: 0,
		
	}, {
		id: 3,
		name: "家具/家居",
		amount:64,
		pid: 0,
		
	}, {
		id: 4,
		name: "电脑办公",
		amount:64,
		pid: 0,
		
	}, {
		id: 5,
		name: "图书影响",
		amount:64,
		pid: 0,
		
	}, {
		id: 6,
		name: "母婴用品",
		amount:64,
		pid: 0,
		
	}, {
		id: 13,
		name: "牛奶",
		amount:64,
		pid:1
	}, {
		id: 14,
		name: "面包",
		amount:64,
		pid:1
	}, {
		id: 15,
		name: "饼干",
		amount:64,
		pid:1
	}, {
		id: 16,
		name: "白酒",
		amount:64,
		pid:1
	}, {
		id: 17,
		name: "啤酒",
		amount:64,
		pid:1
	},  {
		id: 18,
		name: "红酒",
		amount:64,
		pid:1
	}, {
		id: 19,
		name: "音响",
		amount:64,
		pid:2
	}, {
		id: 20,
		name: "冰箱",
		amount:64,
		pid:2
	}, {
		id: 21,
		name: "洗衣机",
		amount:64,
		pid:2
	}, {
		id: 21,
		name: "洗衣机",
		amount:64,
		pid:3
	}, {
		id: 21,
		name: "洗衣机",
		amount:64,
		pid:4
	}, {
		id: 21,
		name: "洗衣机",
		amount:64,
		pid:5
	}

];
//树状图插件
$(".tree").ProTree({
	arr: arr,//数据
	simIcon: "fa fa-file-text-o",//单个标题字体图标 不传默认glyphicon-file
	mouIconOpen: "fa fa-folder-open",//含多个标题的打开字体图标  不传默认glyphicon-folder-open
	mouIconClose:"fa fa-folder",//含多个标题的关闭的字体图标  不传默认glyphicon-folder-close
})
	/******时间设置*******/
  var start = {
    elem: '#start',
    format: 'YYYY-MM-DD',
   // min: laydate.now(), //设定最小日期为当前日期
    max: '2099-06-16', //最大日期
    istime: true,
    istoday: false,
    choose: function(datas){
         end.min = datas; //开始日选好后，重置结束日的最小日期
         end.start = datas //将结束日的初始值设定为开始日
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
        start.max = datas; //结束日选好后，重置开始日的最大日期
    }
};
laydate(start);
laydate(end);
/*订单-删除*/
function Order_form_del(obj,id){
	layer.confirm('确认要删除吗？',function(index){
		$(obj).parents("tr").remove();
		layer.msg('已删除!',{icon:1,time:1000});
	});
}
/**发货**/
function Delivery_stop(obj,id){
	layer.open({
        type: 1,
        title: '发货',
		maxmin: true, 
		shadeClose:false,
        area : ['500px' , ''],
        content:$('#Delivery_stop'),
		//btn:['确定','取消'],
		yes: function(index, layero){		
		if($('#form-field-1').val()==""){
			layer.alert('快递号不能为空！',{
               title: '提示框',				
			  icon:0,		
			  }) 
			}else{			
			 layer.confirm('提交成功！',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style=" display:none" class="btn btn-xs btn-success" onClick="member_stop(this,id)" href="javascript:;" title="已发货"><i class="fa fa-cubes bigger-120"></i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">已发货</span>');
		$(obj).remove();
		layer.msg('已发货!',{icon: 6,time:1000});
			});  
			layer.close(index);    		  
		  }
		}
	})
};
		var oldie = /msie\s*(8|7|6)/.test(navigator.userAgent.toLowerCase());
			$('.easy-pie-chart.percentage').each(function(){
				$(this).easyPieChart({
					barColor: $(this).data('color'),
					trackColor: '#EEEEEE',
					scaleColor: false,
					lineCap: 'butt',
					lineWidth: 10,
					animate: oldie ? false : 1000,
					size:103
				}).css('color', $(this).data('color'));
			});
</script>