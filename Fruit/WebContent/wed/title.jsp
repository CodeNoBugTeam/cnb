<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<title>最新资讯</title>
<link href="<%=request.getContextPath()%>/css/consult.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/css/share.css"
	rel="stylesheet">
<script src="<%=request.getContextPath()%>/js/jquery-1.12.3.js"></script>
</head>
<body>
	<!--顶部导航-->
	<jsp:include page="/public/head.jsp"></jsp:include>
	<div class="her-banner"></div>
	<!--顶部导航结束-->
	<div class="recommand clear">
		<div class="rec-cont clear">
			<div class="rec-left">
				<jsp:include page="/public/leftmenu.jsp"></jsp:include>
			</div>
			<div>
				<h1 align="center">${message.mtitle }</h1>
				<h4 align="center" style="color: #C0C0C0">${message.mtime }</h4>
				<hr />
				${message.content }
			</div>
		</div>
	</div>
	<!--底部-->
	<jsp:include page="/public/foot.jsp"></jsp:include>
</body>
<script src="js/consult.js"></script>
</html>