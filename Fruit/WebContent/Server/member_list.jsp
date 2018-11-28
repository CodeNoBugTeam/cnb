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
<script type="text/javascript" src="js/proTree.js" ></script>
<title>会员管理</title>
</head>
<!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <script src="js/respond.min.js"></script>
  <script src="js/css3-mediaqueries.js"  type="text/javascript"></script>
  <![endif]-->
<body>
<div class="margin" id="page_style">
   <div class="operation clearfix same_module mb15">
    <ul class="choice_search">
     <li class="clearfix col-xs-2 col-lg-2 col-ms-3 "><label class="label_name ">会员名称：</label><input name="" type="text"  class="form-control col-xs-6 col-lg-5"/></li>
      <li class="clearfix col-xs-4 col-lg-5 col-ms-5 "><label class="label_name ">注册时间：</label> 
     <input class="laydate-icon col-xs-4 col-lg-3" id="start" style=" margin-right:10px; height:28px; line-height:28px; float:left">
      <span  style=" float:left; padding:0px 10px; line-height:32px;">至</span>
      <input class="laydate-icon col-xs-4 col-lg-3" id="end" style="height:28px; line-height:28px; float:left"></li>
     <button class="btn button_btn bg-deep-blue " onclick=""  type="button"><i class="fa  fa-search"></i>&nbsp;搜索</button>
    </ul>
  </div>
 <div class="h_products_list clearfix" id="Sellerber">
   <div class="Sellerber_left menu" id="menuBar">
    <div class="show_btn" id="rightArrow"><span></span></div>
    <div class="side_title"><a title="隐藏" class="close_btn"><span></span></a></div> 
    <div class="menu_style" id="menu_style">
    <div class="list_content">
     <div class="side_list">
        <div class="column_title"><h4 class="lighter smaller">会员等级列表</h4></div>
       <div class="st_tree_style tree">
      </div>
    </div>
  </div>
 </div>
</div>
<div class="bkg_List_style list_Exhibition list_show padding15">
 <div class="bkg_List_operation clearfix searchs_style">
  <ul class="bkg_List_Button_operation">
   <li class="btn btn-danger"><a href="javascrpt:void()" class="btn_add"><em class="bkg_List_icon icon_add"></em>删除用户</a></li>
   <li class="btn bg-deep-blue"><a href="javascrpt:void()" class="btn_add"><em class="bkg_List_icon icon_modify"></em>修改用户</a></li>
   <li class="btn btn-Dark-success"><a href="javascrpt:void()" class="btn_add"><em class="bkg_List_icon icon_close"></em>关闭用户</a></li>
  </ul>
 </div>
  <div class="datalist_show">
 <div class="bkg_List clearfix datatable_height confirm">
  <table class="table  table_list table_striped table-bordered">
   <thead>
    <tr>
     <th  width="40"><label><input type="checkbox" class="ace"><span class="lbl"></span></label></th>
     <th>用户名</th>
     <th>真实姓名</th>
     <th>性别</th>
     <th>电话</th>
     <th>邮箱</th>
     <th>地址</th>
     <th>加入时间</th>
     <th>等级</th>
     <th>状态</th>
      <th>编辑</th>
    </tr>
   </thead>
   <tbody>
    <tr>
     <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>汇海天堂</td>
     <td><a href="javascript:" onClick="userinfo(this,121)">张明珠</a></td>
     <td>男</td>
     <td>1345665656</td>
     <td>4545455@qq.com</td>
     <td>江苏南京雨花台区</td>
     <td>2016-07-22 </td>
     <td>普通用户</td>
      <td class="td-status"><span class="label label-success radius">启用</span></td>
        <td class="td-manage">
        <a onClick="member_stop(this,'10001')"  href="javascript:;" title="下架"  class="btn btn-xs btn-status">停用</a> 
        <a title="编辑" onclick="member_edit('编辑','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >编辑</a> 
        <a title="删除" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >删除</a>
       </td>
    </tr>
        <tr>
     <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>汇海天堂</td>
     <td><a href="javascript:" onClick="userinfo(this,121)">张明珠</a></td>
     <td>男</td>
     <td>1345665656</td>
     <td>4545455@qq.com</td>
     <td>江苏南京雨花台区</td>
     <td>2016-07-22 </td>
     <td>普通用户</td>
      <td class="td-status"><span class="label label-success radius">启用</span></td>
        <td class="td-manage">
        <a onClick="member_stop(this,'10001')"  href="javascript:;" title="下架"  class="btn btn-xs btn-status">停用</a> 
        <a title="编辑" onclick="member_edit('编辑','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >编辑</a> 
        <a title="删除" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >删除</a>
       </td>
    </tr>
        <tr>
     <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>汇海天堂</td>
     <td><a href="javascript:" onClick="userinfo(this,121)">张明珠</a></td>
     <td>男</td>
     <td>1345665656</td>
     <td>4545455@qq.com</td>
     <td>江苏南京雨花台区</td>
     <td>2016-07-22 </td>
     <td>普通用户</td>
      <td class="td-status"><span class="label label-success radius">启用</span></td>
        <td class="td-manage">
        <a onClick="member_stop(this,'10001')"  href="javascript:;" title="下架"  class="btn btn-xs btn-status">停用</a> 
        <a title="编辑" onclick="member_edit('编辑','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >编辑</a> 
        <a title="删除" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >删除</a>
       </td>
    </tr>    <tr>
     <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>汇海天堂</td>
     <td><a href="javascript:" onClick="userinfo(this,121)">张明珠</a></td>
     <td>男</td>
     <td>1345665656</td>
     <td>4545455@qq.com</td>
     <td>江苏南京雨花台区</td>
     <td>2016-07-22 </td>
     <td>普通用户</td>
      <td class="td-status"><span class="label label-success radius">启用</span></td>
        <td class="td-manage">
        <a onClick="member_stop(this,'10001')"  href="javascript:;" title="下架"  class="btn btn-xs btn-status">停用</a> 
        <a title="编辑" onclick="member_edit('编辑','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >编辑</a> 
        <a title="删除" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >删除</a>
       </td>
    </tr>    <tr>
     <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>汇海天堂</td>
     <td><a href="javascript:" onClick="userinfo(this,121)">张明珠</a></td>
     <td>男</td>
     <td>1345665656</td>
     <td>4545455@qq.com</td>
     <td>江苏南京雨花台区</td>
     <td>2016-07-22 </td>
     <td>普通用户</td>
      <td class="td-status"><span class="label label-success radius">启用</span></td>
        <td class="td-manage">
        <a onClick="member_stop(this,'10001')"  href="javascript:;" title="下架"  class="btn btn-xs btn-status">停用</a> 
        <a title="编辑" onclick="member_edit('编辑','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >编辑</a> 
        <a title="删除" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >删除</a>
       </td>
    </tr>    <tr>
     <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>汇海天堂</td>
     <td><a href="javascript:" onClick="userinfo(this,121)">张明珠</a></td>
     <td>男</td>
     <td>1345665656</td>
     <td>4545455@qq.com</td>
     <td>江苏南京雨花台区</td>
     <td>2016-07-22 </td>
     <td>普通用户</td>
      <td class="td-status"><span class="label label-success radius">启用</span></td>
        <td class="td-manage">
        <a onClick="member_stop(this,'10001')"  href="javascript:;" title="下架"  class="btn btn-xs btn-status">停用</a> 
        <a title="编辑" onclick="member_edit('编辑','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >编辑</a> 
        <a title="删除" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >删除</a>
       </td>
    </tr>
        <tr>
     <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>汇海天堂</td>
     <td><a href="javascript:" onClick="userinfo(this,121)">张明珠</a></td>
     <td>男</td>
     <td>1345665656</td>
     <td>4545455@qq.com</td>
     <td>江苏南京雨花台区</td>
     <td>2016-07-22 </td>
     <td>普通用户</td>
      <td class="td-status"><span class="label label-success radius">启用</span></td>
        <td class="td-manage">
        <a onClick="member_stop(this,'10001')"  href="javascript:;" title="下架"  class="btn btn-xs btn-status">停用</a> 
        <a title="编辑" onclick="member_edit('编辑','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >编辑</a> 
        <a title="删除" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >删除</a>
       </td>
    </tr>
        <tr>
     <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>汇海天堂</td>
     <td><a href="javascript:" onClick="userinfo(this,121)">张明珠</a></td>
     <td>男</td>
     <td>1345665656</td>
     <td>4545455@qq.com</td>
     <td>江苏南京雨花台区</td>
     <td>2016-07-22 </td>
     <td>普通用户</td>
      <td class="td-status"><span class="label label-success radius">启用</span></td>
        <td class="td-manage">
        <a onClick="member_stop(this,'10001')"  href="javascript:;" title="下架"  class="btn btn-xs btn-status">停用</a> 
        <a title="编辑" onclick="member_edit('编辑','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >编辑</a> 
        <a title="删除" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >删除</a>
       </td>
    </tr>
        <tr>
     <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>汇海天堂</td>
     <td><a href="javascript:" onClick="userinfo(this,121)">张明珠</a></td>
     <td>男</td>
     <td>1345665656</td>
     <td>4545455@qq.com</td>
     <td>江苏南京雨花台区</td>
     <td>2016-07-22 </td>
     <td>普通用户</td>
      <td class="td-status"><span class="label label-success radius">启用</span></td>
        <td class="td-manage">
        <a onClick="member_stop(this,'10001')"  href="javascript:;" title="下架"  class="btn btn-xs btn-status">停用</a> 
        <a title="编辑" onclick="member_edit('编辑','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >编辑</a> 
        <a title="删除" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >删除</a>
       </td>
    </tr>
        <tr>
     <td><label><input type="checkbox" class="ace"><span class="lbl"></span></label></td>
     <td>汇海天堂</td>
     <td><a href="javascript:" onClick="userinfo(this,121)">张明珠</a></td>
     <td>男</td>
     <td>1345665656</td>
     <td>4545455@qq.com</td>
     <td>江苏南京雨花台区</td>
     <td>2016-07-22 </td>
     <td>普通用户</td>
      <td class="td-status"><span class="label label-success radius">启用</span></td>
        <td class="td-manage">
        <a onClick="member_stop(this,'10001')"  href="javascript:;" title="下架"  class="btn btn-xs btn-status">停用</a> 
        <a title="编辑" onclick="member_edit('编辑','member-add.html','4','','510')" href="javascript:;"  class="btn btn-xs btn-info" >编辑</a> 
        <a title="删除" href="javascript:;"  onclick="member_del(this,'1')" class="btn btn-xs btn-delete" >删除</a>
       </td>
    </tr>
   </tbody>
  </table>
    </div>
   </div>
  </div>
 </div>
</div>
<!--添加用户图层-->
<div class="add_menber" id="add_menber_style" style="display:none">
  
    <ul class=" page-content">
     <li><label class="label_name">用&nbsp;&nbsp;户 &nbsp;名：</label><span class="add_name"><input value="" name="用户名" type="text"  class="text_add"/></span><div class="prompt r_f"></div></li>
     <li><label class="label_name">真实姓名：</label><span class="add_name"><input name="真实姓名" type="text"  class="text_add"/></span><div class="prompt r_f"></div></li>
     <li><label class="label_name">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：</label><span class="add_name">
     <label><input name="form-field-radio" type="radio" checked="checked" class="ace"><span class="lbl">男</span></label>&nbsp;&nbsp;&nbsp;
     <label><input name="form-field-radio" type="radio" class="ace"><span class="lbl">女</span></label>&nbsp;&nbsp;&nbsp;
     <label><input name="form-field-radio" type="radio" class="ace"><span class="lbl">保密</span></label>
     </span>
     <div class="prompt r_f"></div>
     </li>
     <li><label class="label_name">固定电话：</label><span class="add_name"><input name="固定电话" type="text"  class="text_add"/></span><div class="prompt r_f"></div></li>
     <li><label class="label_name">移动电话：</label><span class="add_name"><input name="移动电话" type="text"  class="text_add"/></span><div class="prompt r_f"></div></li>
     <li><label class="label_name">电子邮箱：</label><span class="add_name"><input name="电子邮箱" type="text"  class="text_add"/></span><div class="prompt r_f"></div></li>
     <li class="adderss"><label class="label_name">家庭住址：</label><span class="add_name"><input name="家庭住址" type="text"  class="text_add" style=" width:350px"/></span><div class="prompt r_f"></div></li>
     <li><label class="label_name">状&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;态：</label>
     <span class="add_name">
     <label><input name="form-field-radio1" type="radio" checked="checked" class="ace"><span class="lbl">开启</span></label>&nbsp;&nbsp;&nbsp;
     <label><input name="form-field-radio1" type="radio" class="ace"><span class="lbl">关闭</span></label>
     </span>
     <div class="prompt r_f"></div></li>
    </ul>
 </div>
 <!--用户信息-->
 <div class="userinfo_style" id="userinfo_style" style="display: none">
 	<div class="member_show" >
<div class="member_jbxx clearfix" >
  <img class="img" src="images/user.png">
  <dl  class="right_xxln">
  <dt><span class="">张三</span> <span class="">余额：40</span></dt>
  <dd class="" style="margin-left:0">这家伙很懒，什么也没有留下</dd>
  </dl>
</div>
<div class="member_content">
  <ul>
   <li><label class="label_name">性别：</label><span class="name">男</span></li>
   <li><label class="label_name">手机：</label><span class="name">13456765555</span></li>
   <li><label class="label_name">固定电话：</label><span class="name">021-454443344</span></li>
   <li><label class="label_name">邮箱：</label><span class="name">admin@mail.com</span></li>
   <li><label class="label_name">地址：</label><span class="name">江苏南京市雨花台区创业路5号紫荆花园2懂4单元402</span></li>
   <li><label class="label_name">注册时间：</label><span class="name">2014.12.20</span></li>
   <li><label class="label_name">积分：</label><span class="name">330</span></li>
   <li><label class="label_name">等级：</label><span class="name">普通用户</span></li>
   
  </ul>
</div>
</div>
 </div>
</body>
</html>
<script>
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
	//后台传入的 标题列表
var arr = [{
		id: 1,
		name: "普通会员",
	    amount:234,
		pid: 0,
	    
	}, {
		id: 2,
		name: "白金会员",
		amount:64,
		pid: 0,
		
	}, {
		id: 3,
		name: "黄金会员",
		amount:64,
		pid: 0,
		
	}, {
		id: 4,
		name: "金钻会员",
		amount:64,
		pid: 0,
		
	}, {
		id: 5,
		name: "铂金会员",
		amount:64,
		pid: 0,
		
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
function userinfo(id){
	 layer.open({
        type: 1,
        title: '用户信息',
		maxmin: true, 
		shadeClose:false, //点击遮罩关闭层
        area : ['600px' , ''],
        content:$('#userinfo_style'),
	 })
				}
/*用户-编辑*/
function member_edit(id){
	  layer.open({
        type: 1,
        title: '修改用户信息',
		maxmin: true, 
		shadeClose:false, //点击遮罩关闭层
        area : ['800px' , ''],
        content:$('#add_menber_style'),
		btn:['提交','取消'],
		yes:function(index,layero){	
		 var num=0;
		 var str="";
     $(".add_menber input[type$='text']").each(function(n){
          if($(this).val()=="")
          {
               
			   layer.alert(str+=""+$(this).attr("name")+"不能为空！\r\n",{
                title: '提示框',				
				icon:0,								
          }); 
		    num++;
            return false;            
          } 
		 });
		  if(num>0){  return false;}	 	
          else{
			  layer.alert('添加成功！',{
               title: '提示框',				
			icon:1,		
			  });
			   layer.close(index);	
		  }		  		     				
		}
    });
}
/*停用*/
function member_stop(obj,id){
	layer.confirm('确认要停用改用户吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn btn-xs " onClick="member_start(this,id)" href="javascript:;" title="上架">上架</a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">已停用</span>');
		$(obj).remove();
		layer.msg('已下架!',{icon: 5,time:1000});
	});
}
/*启用*/
function member_start(obj,id){
	layer.confirm('确认启用该用户？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn btn-xs btn-status" onClick="member_stop(this,id)" href="javascript:;" title="下架">下架</a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已启用</span>');
		$(obj).remove();
		layer.msg('已上架!',{icon: 6,time:1000});
	});
}
	/*用户-删除*/
function member_del(obj,id){
	layer.confirm('确认要删除吗？',function(index){
		$(obj).parents("tr").remove();
		layer.msg('已删除!',{icon:1,time:1000});
	});
}
/********************列表操作js******************/
$('table th input:checkbox').on('click' , function(){
					var that = this;
					$(this).closest('table').find('tr > td:first-child input:checkbox')
					.each(function(){
						this.checked = that.checked;
						$(this).closest('tr').toggleClass('selected');
					});
						
});
</script>

