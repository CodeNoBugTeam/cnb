<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<% 
	if(request.getAttribute("messageList") == null){
		request.getRequestDispatcher("message.s?op=messa").forward(request, response);
	}
%>
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
<script type="text/javascript" src="js/jquery.cookie.js"></script>
<script src="js/shopFrame.js" type="text/javascript"></script>
<script src="js/jquery.dataTables.min.js"></script>
<script src="js/jquery.dataTables.bootstrap.js"></script>
<script src="js/layer/layer.js" type="text/javascript"></script>
<script src="js/laydate/laydate.js" type="text/javascript"></script>
<script type="text/javascript" src="js/proTree.js" ></script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js" type="text/javascript"></script>
<script src="js/respond.min.js"></script>
<script src="js/css3-mediaqueries.js"  type="text/javascript"></script>
  <![endif]-->
<title>文章列表</title>
</head>
<body>
<div class="margin" id="page_style">
<!--列表展示-->
<div class="h_products_list clearfix" id="Sellerber">
  <div class="Sellerber_left menu" id="menuBar">
    <div class="show_btn" id="rightArrow"><span></span></div>
    <div class="side_title"><a title="隐藏" class="close_btn"><span></span></a></div>
   
    <div class="menu_style" id="menu_style">
    <div class="list_content">
     <div class="side_list">
        <div class="column_title"><h4 class="lighter smaller">文章分类</h4></div>
       <div class="st_tree_style tree">
      </div>
    </div>
  </div>
 </div>
</div>
<div class="list_Exhibition list_show padding15">
<div class="operation clearfix mb15  searchs_style">
<button class="btn button_btn btn-danger" type="button" onclick=""><i class="fa fa-trash-o"></i>&nbsp;删除</button>
<span class="submenu">
<a href="add_Article.jsp" name="" class="btn button_btn bg-deep-blue" title="添加产品"><i class="fa  fa-edit"></i>&nbsp;添加文章</a>	
<a href="add_product.jsp" name="" class="btn button_btn bg-deep-blue" title="添加产品"><i class="fa  fa-edit"></i>&nbsp;添加分类</a>
</span>
<div class="search  clearfix">
<form action="message.s">
<input type="hidden" name="op" value="messa">
 <label class="label_name">搜索：</label>
 <input name="mtitle" type="text" value="${param.mtitle }"  class="form-control col-xs-5"/>
 <input  class="btn button_btn bg-deep-blue " type="submit" value="搜索"/>
 <span>数量:3433件</span>
 </form>

</div>
</div>
 <div class=" datalist_show">
  <div class="datatable_height confirm">
 <table class="table table_list table_striped table-bordered" id="">
    <thead>
		 <tr>
				<th width="25"><label><input type="checkbox" class="ace"><span class="lbl"></span></label></th>
                <th width="100">所属分类</th>
                <th  width="80px">排序</th>
				<th width="220px">标题</th>
				<th width="">简介</th>
				<th width="150px">添加时间</th>
                <th width="80px">状态</th>                
				<th width="250px">操作</th>
			</tr>
		</thead>
        <tbody>
      	 <c:forEach items= "${messageList }" var="u">
         	<tr>
	         <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
	         <td>${u.theme}</td>
	         <td>${u.mid }</td>
	         <td> ${u.mtitle }</td>
	         <td class="displayPart" displayLength="60">${u.mdescription }</td>
	         <td>${u.mtime }</td>
	         <td class="td-status">${u.mstate }</td>
	         <td class="td-manage">
	         <a onClick="member_stop(this,'10001')"  href="javascript:;" title="发布"  class="btn btn-xs btn-status">发布</a> 
	         <a title="编辑" onclick="member_edit('编辑','add_Article.jsp','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >编辑</a> 
	         <a title="删除" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >删除</a>
         	 </td>
         </tr>
         </c:forEach>
        </tbody>
     </table>
    </div>
    </div>
	</div>
   </div>
</div>
</body>
</html>
<script>
	/*$(function () { $(".displayPart").displayPart();  });*/
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
		
	});
}); 

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
/*产品-停用*/
function member_stop(obj,id){
	layer.confirm('确认发布该信息？',function(index){
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已发布</span>');
		$(obj).remove();
		layer.msg('已发布!',{icon: 6,time:1000});
	});
}
/*删除*/
function member_del(obj,id){
	layer.confirm('确认要删除吗？',function(index){
		$(obj).parents("tr").remove();
		layer.msg('已删除!',{icon:1,time:1000});
	});
}
</script>

