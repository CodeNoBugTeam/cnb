<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	if (request.getAttribute("messageList") == null) {
		request.getRequestDispatcher("message.s?op=messa").forward(request, response);
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
<script src="js/Sellerber.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery.cookie.js"></script>
<script src="js/shopFrame.js" type="text/javascript"></script>
<script src="js/jquery.dataTables.min.js"></script>
<script src="js/jquery.dataTables.bootstrap.js"></script>
<script src="js/layer/layer.js" type="text/javascript"></script>
<script src="js/laydate/laydate.js" type="text/javascript"></script>
<script type="text/javascript" src="js/proTree.js"></script>
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
			<div class="list_Exhibition list_show padding15">
				<div class="operation clearfix mb15  searchs_style">
					<span class="submenu"> <a href="add_Article.jsp" name=""
						class="btn button_btn bg-deep-blue" title="添加产品"><i
							class="fa  fa-edit"></i>&nbsp;添加文章</a>
					</span>
					<div class="search  clearfix">
						<form action="message.s">
							<input type="hidden" name="op" value="messa"> 分类：<input
								name="theme" type="text" value="${param.theme }" /> 标题：<input
								name="mtitle" type="text" value="${param.mtitle }" /> 状态：<input
								name="mstate" type="text" value="${param.mstate }" /> <input
								class="btn button_btn bg-deep-blue " href="message.s?op=query"
								type="submit" value="搜索" /> <span>数量:3433件</span>
						</form>
					</div>
				</div>
				<div class=" datalist_show">
					<div class="datatable_height confirm">
						<table class="table table_list table_striped table-bordered" id="">
							<thead>
								<tr>
									<th width="100">所属分类</th>
									<th width="80px">排序</th>
									<th width="220px">标题</th>
									<th width="">简介</th>
									<th width="150px">添加时间</th>
									<th width="80px">状态</th>
									<th width="250px">操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${messageList }" var="u">
									<tr>
										<td>${u.theme}</td>
										<td>${u.mid }</td>
										<td>${u.mtitle }</td>
										<td class="displayPart" displayLength="60">${u.mdescription }</td>
										<td>${u.mtime }</td>
										<td class="td-status">${u.mstate }</td>
										<td class="td-manage"><<<<<<< HEAD <a rel="${u.mid }"
											title="发布" href="message.s?op=fabu&messageId"
											class="btn btn-xs btn-status">发布</a> <a rel="${u.mid }"
											title="编辑" href="add_Article.jsp" class="btn btn-xs btn-info">编辑</a>
											<a rel="${u.mid }" title="删除"
											href="message.s?op=delete&messageId"
											class="btn btn-xs btn-delete">删除</a> ======= <a rel=" "
											title="发布" href="message.s?op=fabu&mid=${u.mid}"
											class="btn btn-xs btn-status">发布</a> <a rel=" " title="编辑"
											href="message.s?op=edit&mid=${u.mid}"
											class="btn btn-xs btn-info">编辑</a> <a rel="" title="删除"
											href="message.s?op=delete&mid=${u.mid}"
											class="btn btn-xs btn-delete">删除</a> >>>>>>> branch 'master'
											of https://github.com/CodeNoBugTeam/cnb.git
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
<c:if test="${! empty msg }">
	<script type="text/javascript">
		alert('${msg}');
	</script>
</c:if>
</html>
<script>
	/*$(function () { $(".displayPart").displayPart();  });*/
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
</script>