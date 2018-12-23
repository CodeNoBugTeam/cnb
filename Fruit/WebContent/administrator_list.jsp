<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	if (request.getAttribute("workerList") == null) {
		request.getRequestDispatcher("user.s?op=queryWorker").forward(request, response);
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
<script type="text/javascript" src="js/Validform/Validform.min.js"></script>
<script type="text/javascript" src="js/jquery.cookie.js"></script>
<script src="js/shopFrame.js" type="text/javascript"></script>
<script src="js/Sellerber.js" type="text/javascript"></script>
<script src="js/layer/layer.js" type="text/javascript"></script>
<title>管理员列表</title>
</head>
<!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <script src="js/respond.min.js"></script>
  <script src="js/css3-mediaqueries.js"  type="text/javascript"></script>
  <![endif]-->
<body>
	<div class="margin Competence_style" id="page_style">
		<div class="operation clearfix">
			<a href="index.jsp" class="btn button_btn bg-deep-blue">&nbsp;返回首页</a>
			<button class="btn button_btn btn-danger" type="button" onclick="">
				<i class="fa fa-trash-o"></i>&nbsp;删除
			</button>
			<a id="administrator_add" class="btn button_btn bg-deep-blue"><i
				class="fa  fa-edit"></i>&nbsp;添加管理员</a>
			<div class="search  clearfix">
				<input name="" type="text" class="form-control col-xs-8" />
				<button class="btn button_btn bg-deep-blue " onclick=""
					type="button">
					<i class="fa  fa-search"></i>&nbsp;搜索
				</button>
			</div>
		</div>
		<div class="compete_list">
			<table id="sample_table"
				class="table table_list table_striped table-bordered dataTable no-footer">
				<thead>
					<tr>
						<th class="center"><label><input type="checkbox"
								class="ace"><span class="lbl"></span></label></th>
						<th>登录ID</th>
						<th>登录名</th>
						<th>性别</th>
						<th>手机</th>
						<th>邮箱</th>
						<th class="hidden-480">加入时间</th>
						<th class="hidden-480">操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${workerList}" var="i">
						<tr>
							<td class="center"><label><input type="checkbox"
									class="ace"><span class="lbl"></span></label></td>
							<td>${i.wid}</td>
							<td>${i.wname}</td>
							<td>${i.wsex}</td>
							<td>${i.wtel}</td>
							<td>${i.wemail}</td>
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
	<!--添加管理员-->
	<div id="add_administrator" class=" add_administrator"
		style="display: none">
		<div class="add_style add_administrator_style">
			<form action="user.s" method="post" id="form-admin-add">
				<input type="hidden" value="addWorker" name="op" />
				<ul>
					<li class="clearfix"><label
						class="label_name col-xs-2 col-lg-2"><i>*</i>用户名：</label>
						<div class="formControls col-xs-6">
							<input type="text" name="wname" placeholder="用户名"
								class="input-text col-xs-12" value="" placeholder=""
								id="user-name" datatype="*2-16" nullmsg="用户名不能为空"
								value="${param.wokername}">
						</div>
						<div class="col-4">
							<span class="Validform_checktip"></span>
						</div></li>
					<li class="clearfix"><label
						class="label_name col-xs-2 col-lg-2"><i class="c-red">*</i>初始密码：</label>
						<div class="formControls col-xs-6">
							<input type="password" name="wpwd" placeholder="密码"
								autocomplete="off" value="" class="input-text col-xs-12"
								datatype="*6-20" nullmsg="密码不能为空">
						</div>
						<div class="col-4">
							<span class="Validform_checktip"></span>
						</div></li>
					<li class="clearfix"><label
						class="label_name col-xs-2 col-lg-2"><i class="c-red">*</i>确认密码：</label>
						<div class="formControls  col-xs-6">
							<input type="password" name="newpwd" placeholder="确认新密码"
								autocomplete="off" class="input-text Validform_error  col-xs-12"
								datatype="*" recheck="userpassword" id="newpassword2"
								name="newpassword2">
						</div>
						<div class="col-4">
							<span class="Validform_checktip"></span>
						</div></li>
					<li class="clearfix"><label
						class="label_name col-xs-2 col-lg-2"><i class="c-red">*</i>性&nbsp;别：</label>
						<div class="formControls  skin-minimal col-xs-6">
							<label><input name="wsex" type="radio" class="ace"
								checked="checked"><span class="lbl">保密</span></label>&nbsp;&nbsp;
							<label><input name="wsex" type="radio" class="ace"><span
								class="lbl">男</span></label>&nbsp;&nbsp; <label><input
								name="wsex" type="radio" class="ace"><span class="lbl">女</span></label>
						</div></li>
					<li class="clearfix"><label
						class="label_name col-xs-2 col-lg-2"><i class="c-red">*</i>手&nbsp;机：</label>
						<div class="formControls col-xs-6">
							<input type="text" class="input-text col-xs-12"
								value="${param.usertel}" placeholder="" id="user-tel"
								name="wtel" datatype="m" nullmsg="手机不能为空">
						</div>
						<div class="col-4">
							<span class="Validform_checktip"></span>
						</div></li>
					<li class="clearfix"><label
						class="label_name col-xs-2 col-lg-2"><i class="c-red">*</i>邮&nbsp;箱：</label>
						<div class="formControls col-xs-6">
							<input type="text" name="wemail" class="input-text col-xs-12"
								placeholder="@" id="email" datatype="e" nullmsg="请输入邮箱！"
								value="${param.email}">
						</div>
						<div class="col-4">
							<span class="Validform_checktip"></span>
						</div></li>
					<li class="clearfix"><label
						class="label_name col-xs-2 col-lg-2">备&nbsp;注：</label>
						<div class="formControls col-xs-6">
							<textarea name="" cols="" rows="" class="textarea col-xs-12"
								placeholder="说点什么...100个字符以内" dragonfly="true"
								onkeyup="checkLength(this);"></textarea>
							<span class="wordage">剩余字数：<span id="sy"
								style="color: Red;">100</span>字
							</span>
						</div></li>
					<li class="clearfix col-xs-12 col-lg-12 align"><input
						class="btn button_btn bg-deep-blue btn_height" type="submit"
						id="Add_Administrator" value="提交注册" /> <input name="reset"
						type="reset" class="btn button_btn btn-infobtn-gray btn_height"
						value="取消重置" /></li>
				</ul>
			</form>
		</div>
	</div>
</body>
</html>
<script>
	/*添加管理员*/
	$('#administrator_add').on('click', function() {
		layer.open({
			type : 1,
			title : '添加管理员',
			area : [ '600px', '' ],
			shadeClose : false,
			content : $('#add_administrator'),
		});
	})
	/*编辑管理员*/
	$('#edit').on('click', function() {
		layer.open({
			type : 2,
			title : '添加管理员',
			area : [ '600px', '' ],
			shadeClose : false,
			content : $('#add_administrator'),
		});
	})
	$(function() {
		$("#Competence_sort").click(
				function() {
					var option = $(this).find("option:selected").text();
					var value = $(this).val();
					if (value == 0) {
						$("#sample_table tbody tr").show()
					} else {
						$("#sample_table tbody tr").hide().filter(
								":contains('" + (option) + "')").show();
					}
				}).click();
	});
	/*******滚动条*******/
	$("body").niceScroll({
		cursorcolor : "#888888",
		cursoropacitymax : 1,
		touchbehavior : false,
		cursorwidth : "5px",
		cursorborder : "0",
		cursorborderradius : "5px"
	});
	/****复选框选中******/
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
	//字数限制
	function checkLength(which) {
		var maxChars = 100; //
		if (which.value.length > maxChars) {
			layer.open({
				icon : 2,
				title : '提示框',
				content : '您输入的字数超过限制!',
			});
			// 超过限制的字数了就将 文本框中的内容按规定的字数 截取
			which.value = which.value.substring(0, maxChars);
			return false;
		} else {
			var curr = maxChars - which.value.length; //250 减去 当前输入的
			document.getElementById("sy").innerHTML = curr.toString();
			return true;
		}
	};
</script>