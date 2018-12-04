<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%
	if (request.getAttribute("userList") == null) {
		request.getRequestDispatcher("user.s?op=queryUser").forward(request, response);
	}
%> --%>
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
<title>会员管理</title>
</head>
<!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <script src="js/respond.min.js"></script>
  <script src="js/css3-mediaqueries.js"  type="text/javascript"></script>
  <![endif]-->
<body>
	<div class="margin" id="page_style">
		<div class="operation clearfix">
			<div class="search  clearfix">
				<form action="user.s">
					<input name="op" type="hidden" value="queryUser"> 用户名：<input
						name="uname" value="${param.uname}"> 电话：<input name="utel"
						value="${param.utel}"> 地址：<input name="uaddress"
						value="${param.uaddress}"> 邮箱：<input name="email"
						value="${param.email}"> <input type="submit" value="查询">
				</form>
			</div>
		</div>
		<div class="datalist_show">
			<div class="bkg_List clearfix datatable_height confirm">
				<table class="table  table_list table_striped table-bordered">
					<thead>
						<tr>
							<th>会员ID</th>
							<th>用户名</th>
							<th>真实姓名</th>
							<th>电话</th>
							<th>邮箱</th>
							<th>地址</th>
							<th>加入时间</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<c:forEach items="${userList}" var="i">
								<tr>
									<td>${i.uid}</td>
									<td>${i.uname}</td>
									<td>${i.truename}</td>
									<td>${i.utel}</td>
									<td>${i.uemail}</td>
									<td>${i.uaddress}</td>
									<td>${i.jointime}</td>
									<td class="td-manage"><a title="停用"
										onclick="Competence_close(this,'12')" href="javascript:;"
										class="btn button_btn btn-Dark-success">停用</a> <a title="编辑"
										href="user.s?op=edit&workerId=${i.wid}"
										class="btn button_btn bg-deep-blue">编辑</a> <a title="删除"
										href="user.s?op=move&workerId=${i.wid}"
										class="btn button_btn btn-danger"> 删除</a> <a title="查看"
										href="javascript:;" onclick="Competence_View(this,'1')"
										class="btn button_btn btn-green">查看</a></td>
								</tr>
							</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
<script>
	//设置内页框架布局
	$(function() {
		$("#Sellerber").frame({
			color_btn : '.skin_select',
			Sellerber_menu : '.list_content',
			page_content : '.list_show',//内容
			datalist : ".datatable_height",//数据列表高度取值
			header : 65,//顶部高度
			mwidth : 200,//菜单栏宽度

		});
	});
	//树状图插件
	$(".tree").ProTree({
		arr : arr,//数据
		simIcon : "fa fa-file-text-o",//单个标题字体图标 不传默认glyphicon-file
		mouIconOpen : "fa fa-folder-open",//含多个标题的打开字体图标  不传默认glyphicon-folder-open
		mouIconClose : "fa fa-folder",//含多个标题的关闭的字体图标  不传默认glyphicon-folder-close

	})
	function userinfo(id) {
		layer.open({
			type : 1,
			title : '用户信息',
			maxmin : true,
			//shadeClose : false, //点击遮罩关闭层
			area : [ '600px', '' ],
			content : $('#userinfo_style'),
		})
	}
	/*用户-编辑*/
	function member_edit(id) {
		layer.open({
			type : 1,
			title : '修改用户信息',
			maxmin : true,
			//shadeClose : false, //点击遮罩关闭层
			area : [ '800px', '' ],
			content : $('#add_menber_style'),
			btn : [ '提交', '取消' ],
			yes : function(index, layero) {
				var num = 0;
				var str = "";
				$(".add_menber input[type$='text']").each(
						function(n) {
							if ($(this).val() == "") {

								layer.alert(str += "" + $(this).attr("name")
										+ "不能为空！\r\n", {
									title : '提示框',
									icon : 0,
								});
								num++;
								return false;
							}
						});
				if (num > 0) {
					return false;
				} else {
					layer.alert('添加成功！', {
						title : '提示框',
						icon : 1,
					});
					layer.close(index);
				}
			}
		});
	}
	/*停用*/
	function member_stop(obj, id) {
		layer
				.confirm(
						'确认要停用该用户吗？',
						function(index) {
							$(obj)
									.parents("tr")
									.find(".td-manage")
									.prepend(
											'<a style="text-decoration:none" class="btn btn-xs " onClick="member_start(this,id)" href="javascript:;" title="上架">上架</a>');
							$(obj)
									.parents("tr")
									.find(".td-status")
									.html(
											'<span class="label label-defaunt radius">已停用</span>');
							$(obj).remove();
							layer.msg('已停用!', {
								icon : 5,
								time : 1000
							});
						});
	}
	/*启用*/
	function member_start(obj, id) {
		layer
				.confirm(
						'确认启用该用户？',
						function(index) {
							$(obj)
									.parents("tr")
									.find(".td-manage")
									.prepend(
											'<a style="text-decoration:none" class="btn btn-xs btn-status" onClick="member_stop(this,id)" href="javascript:;" title="下架">下架</a>');
							$(obj)
									.parents("tr")
									.find(".td-status")
									.html(
											'<span class="label label-success radius">已启用</span>');
							$(obj).remove();
							layer.msg('已启用!', {
								icon : 6,
								time : 1000
							});
						});
	}
	/*用户-删除*/
	function member_del(obj, id) {
		layer.confirm('确认要删除吗？', function(index) {
			$(obj).parents("tr").remove();
			layer.msg('已删除!', {
				icon : 1,
				time : 1000
			});
		});
	}
	/********************列表操作js******************/
	$('table th input:checkbox').on(
			'click',
			function() {
				var that = this;
				$(this).closest('table').find(
						'tr > td:first-child input:checkbox').each(function() {
					this.checked = that.checked;
					$(this).closest('tr').toggleClass('selected');
				});
			});
</script>


