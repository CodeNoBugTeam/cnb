<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	if (request.getAttribute("carList") == null) {
		request.getRequestDispatcher("../customer.s?buy=queryCar").forward(request, response);
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>购物车</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/carts.css">
</head>
<body>
    <section class="cartMain">
        <div class="cartMain_hd">
            <ul class="order_lists cartTop">
                <li class="list_chk">
                    <!--所有商品全选-->
                    <input type="checkbox" id="all" class="whole_check">
                    <label for="all"></label>
                    全选
                </li>
                <li class="list_con">商品信息</li>
                <li class="list_info">商品参数</li>
                <li class="list_price">单价</li>
                <li class="list_amount">数量</li>
                <li class="list_sum">金额</li>
                <li class="list_op">操作</li>
            </ul>
        </div>

        <div class="cartBox">
            <div class="shop_info">
                <div class="all_check">
                    <!--店铺全选-->
                    <input type="checkbox" id="shop_a" class="shopChoice">
                    <label for="shop_a" class="shop"></label>
                </div>
                <div class="shop_name">
                    店铺：<a href="javascript:;">搜猎人艺术生活</a>
                </div>
            </div>
         
                
            <c:forEach items="${carList}" var="i">
                <ul class="order_lists">
                    <li class="list_chk">
                        <input type="checkbox" id="checkbox_3" class="son_check">
                        <label for="checkbox_3"></label>
                    </li>
                    <li class="list_con">
                        <div class="list_img"><a href="javascript:;"><img src="${i.fipic}" alt=""></a></div>
                        <div class="list_text"><a href="javascript:;">${i.fname}${i.fdetails}</a></div>
                    </li>
                    <li class="list_info">
                        <p>规格：默认</p>
                        <p>4个装</p>
                    </li>
                    <li class="list_price">
                        <p class="price">${i.fprice}</p>
                    </li>
                    <li class="list_amount">
                        <div class="amount_box">
                            <a href="javascript:;" class="reduce reSty">-</a>
                            <input type="text" value="1" class="sum">
                            <a href="javascript:;" class="plus">+</a>
                        </div>
                    </li>
                    <li class="list_sum">
                        <p class="sum_price">${i.fprice}</p>
                    </li>
                    <li class="list_op">
                        <p class="del"><a href="../customer.s?buy=deleteCar&fin=${i.fin}" class="delBtn">移除商品</a></p>
                    </li>
                </ul>
            </c:forEach>    
               
         <!--底部-->
        <div class="bar-wrapper">
            <div class="bar-right">
                <div class="piece">已选商品<strong class="piece_num">0</strong>件</div>
                <div class="totalMoney">共计: <strong class="total_text">0.00</strong></div>
                <div class="calBtn"><a href="javascript:;">结算</a></div>
            </div>
        </div>
    </section>
    <section class="model_bg"></section>
    <section class="my_model">
        <p class="title">删除宝贝<span class="closeModel">X</span></p>
        <p>您确认要删除该宝贝吗？</p>
        <div class="opBtn"><a href="javascript:;" class="dialog-sure">确定</a>
        <a href="javascript:;" class="dialog-close">关闭</a></div>
    </section>
	
    <script src="js/jquery.min.js"></script>
    <script src="js/carts.js"></script>
	
</body>
<c:if test="${! empty msg }">
		<script type="text/javascript">
			alert('${msg}');
		</script>
</c:if>
</html>