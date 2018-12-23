<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>全部水果</title>
<link rel="stylesheet" type="text/css"
	href="easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">
<script type="text/javascript" src="easyui/jquery.min.js"></script>
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
</head>
<body>
	<table class="easyui-datagrid"
		data-options="
	pagination:true,
	fit:true,
	url:'allFruit.s',
	singleSelect:true,
	rownumber:true
	">
		<thead>
			<tr>
				<th data-options="field:'fin',width: 186,align:'center'">水果ID</th>
				<th data-options="field:'fname',width: 186,align:'center'">水果名字</th>
				<th data-options="field:'fplace',width: 186,align:'center'">水果产地</th>
				<th data-options="field:'details',width: 186,align:'center'">水果描述</th>
				<th data-options="field:'family',width: 186,align:'center'">水果类别</th>
				<th data-options="field:'price',width: 186,align:'center'">水果单价</th>
				<th data-options="field:'number',width: 186,align:'center'">剩余数量</th>
			</tr>
		</thead>
		<div>
			<button type="button" style="height: 40px; widows: 100px">
				<a href="index.jsp">返回主页</a>
			</button>
		</div>
	</table>
</body>
</html>