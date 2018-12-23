<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	if (request.getAttribute("hot") == null) {
		request.getRequestDispatcher("../customer.s?buy=queryhotFruit").forward(request, response);
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<title>蔬果热卖</title>
<link href="<%=request.getContextPath()%>/css/hot.css" rel="stylesheet">
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
		<!--产品推荐开始-->
		<div class="recommand clear">
			<div class="rec-cont clear">
				<div class="rec-left">
					<jsp:include page="/public/leftmenu.jsp"></jsp:include>
				</div>
				<div class="rec-right">
					<div class="bd">
						<div class="bd1" style="display: block">
							<c:forEach items="${hot}" var="i">
								<div class="rcr">
									<div class="rcr-top">
										<img src="${i.ipic}" width="100%">
									</div>
									<div class="rcr-bot">
										<div class="rb-top">${i.fname }</div>
										<div class="second_P">
											<span class="fk-prop">￥</span> <span class="fk-prop-price">${i.price }
												<span class="fk-prop-p">.00</span>
											</span> <span class="second_Marketprice">￥0.00</span>
										</div>
										<div class="buy">
											<a class="second_mallBuy"
												href="<%=request.getContextPath() %>/customer.s?buy=lemon&id=${i.fin}">
												<span style="color: white;">购买</span>
											</a>
										</div>
									</div>
								</div>
							</c:forEach>
							<div class="rcr">
								<div class="rcr-top">
									<img src="images/ht-9.jpg" width="100%">
								</div>
								<div class="rcr-bot">
									<div class="rb-top">精选百香果西番莲8颗</div>
									<div class="second_P">
										<span class="fk-prop">￥</span> <span class="fk-prop-price">29
											<span class="fk-prop-p">.00</span>
										</span> <span class="second_Marketprice">￥0.00</span>
									</div>
									<div class="buy">
										<a class="second_mallBuy"> <span style="color: white;">购买</span>
										</a>
									</div>
								</div>
							</div>
							<div class="rcr">
								<div class="rcr-top">
									<img src="images/ht-10.jpg" width="100%">
								</div>
								<div class="rcr-bot">
									<div class="rb-top">莲藕5g</div>
									<div class="second_P">
										<span class="fk-prop">￥</span> <span class="fk-prop-price">19
											<span class="fk-prop-p">.00</span>
										</span> <span class="second_Marketprice">￥0.00</span>
									</div>
									<div class="buy">
										<a class="second_mallBuy"> <span style="color: white;">购买</span>
										</a>
									</div>
								</div>
							</div>
							<div class="rcr">
								<div class="rcr-top">
									<img src="images/ht-11.jpg" width="100%">
								</div>
								<div class="rcr-bot">
									<div class="rb-top">绿芦笋200g</div>
									<div class="second_P">
										<span class="fk-prop">￥</span> <span class="fk-prop-price">39
											<span class="fk-prop-p">.00</span>
										</span> <span class="second_Marketprice">￥0.00</span>
									</div>
									<div class="buy">
										<a class="second_mallBuy"> <span style="color: white;">购买</span>
										</a>
									</div>
								</div>
							</div>
							<div class="rcr">
								<div class="rcr-top">
									<img src="images/ht-12.jpg" width="100%">
								</div>
								<div class="rcr-bot">
									<div class="rb-top">美国进口红啤梨 6个</div>
									<div class="second_P">
										<span class="fk-prop">￥</span> <span class="fk-prop-price">39
											<span class="fk-prop-p">.00</span>
										</span> <span class="second_Marketprice">￥0.00</span>
									</div>
									<div class="buy">
										<a class="second_mallBuy"> <span style="color: white;">购买</span>
										</a>
									</div>
								</div>
							</div>
						</div>
						<div class="bd1">
							<div class="rcr">
								<div class="rcr-top">
									<img src="images/ht-1.jpg" width="100%">
								</div>
								<div class="rcr-bot">
									<div class="rb-top">菠菜280g</div>
									<div class="second_P">
										<span class="fk-prop">￥</span> <span class="fk-prop-price">19
											<span class="fk-prop-p">.00</span>
										</span> <span class="second_Marketprice">￥0.00</span>
									</div>
									<div class="buy">
										<a class="second_mallBuy"> <span style="color: white;">购买</span>
										</a>
									</div>
								</div>
							</div>
							<div class="rcr">
								<div class="rcr-top">
									<img src="images/ht-2.jpg" width="100%">
								</div>
								<div class="rcr-bot">
									<div class="rb-top">进口香蕉超甜蕉</div>
									<div class="second_P">
										<span class="fk-prop">￥</span> <span class="fk-prop-price">49
											<span class="fk-prop-p">.00</span>
										</span> <span class="second_Marketprice">￥0.00</span>
									</div>
									<div class="buy">
										<a class="second_mallBuy"> <span style="color: white;">购买</span>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="hd">
						<div class="net">
							<a
								href="<%=request.getContextPath()%>/customer.s?before=beforePage&buy=queryhotFruit">上一页</a>
						</div>
						<ul>
							<li><a href="#" class="active">1</a></li>
							<li><a href="#">2</a></li>
						</ul>
						<div class="next">
							<a
								href="<%=request.getContextPath()%>/customer.s?after=afterPage&buy=queryhotFruit">下一页</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--产品推荐结束-->
	</div>
	<!--底部-->
	<jsp:include page="/public/foot.jsp"></jsp:include>
</body>
<script src="js/hot.js"></script>
</html>