
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	if (request.getAttribute("messageList") == null) {
		request.getRequestDispatcher("../message.s?op=suoying").forward(request, response);
	}
%>
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
	<!--顶部导航结束-->
	<!--banner图片-->
	<div class="her-banner"></div>
	<!--banner图片结束-->
	<div class="content">
		<!--最新资讯开始-->
		<div class="recommand clear">
			<div class="rec-cont clear">
				<div class="rec-left">
					<jsp:include page="/public/leftmenu.jsp"></jsp:include>
				</div>
				<div class="rec-right">
					<div class="bd">
						<c:forEach items="${messageList}" var="i">
							<a
								href="<%=request.getContextPath() %>/message.s?op=read&id=${i.mid}">
								<div class="rec-cot">
									<div class="rgl-cont">
										<p></p>
										<span>${i.mtime }</span>
									</div>
									<div class="rgr-cont">
										<h3>${i.mtitle }</h3>
										<p>${i.mdescription }</p>
									</div>
								</div>
							</a>
						</c:forEach>
					</div>
					<div class="hd">
						<ul>
							<li><span>上一页</span></li>
							<li><a href="#" class="active">1</a></li>
							<li><span>下一页</span></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!--最新资讯结束-->
	</div>
	<!--底部-->
	<jsp:include page="/public/foot.jsp"></jsp:include>
</body>
<script src="js/consult.js"></script>
</html>