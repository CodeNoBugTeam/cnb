<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="easyui/demo.css">
	<script type="text/javascript" src="easyui/jquery.min.js"></script>
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
</head>
<body>

	<table class="easyui-datagrid"
	data-options="
	pagination:true,
	url:allEmp.s,
	fit:true,
	singleSelect:true,
	rownumber:true
	">
	<thead>
		<tr>
			<th data-options="field:'FIN'">水果ID</th>
			<th data-options="field:'FPLICE'">水果产地</th>
			<th data-options="field:'DETAILS'">水果描述</th>
			<th data-options="field:'FAMILY'">水果类别</th>
			<th data-options="field:'PRICE'">水果单价</th>
			<th data-options="field:'FIN'">水果ID</th>
			<th data-options="field:'FIN'">水果ID</th>
		
		
		</tr>
	
	</thead>
	
	
	
	</table>



</body>
</html>