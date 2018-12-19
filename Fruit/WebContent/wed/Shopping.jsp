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
    <script>

</script>
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
<form action="../customer.s" method="post">
	<input type="hidden" value="carshopping" name="buy"/>
        <div class="cartBox">
         
                
            <c:forEach items="${carList}" var="i">
                <ul class="order_lists">
                    <li class="list_chk">
                        <input type="checkbox" id="checkbox_${i }" class="son_check" name="fruit" value="${i.fin }">
                        <label for="checkbox_${i }"></label>
                    </li>
                    <li class="list_con">
                    <!-- 	<input type="hidden" name="minid" value="${i.cid }"/>
                    		<input type="hidden" name="fid${i.cid }" value="${i.fin }"/>
                     -->
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
                            <input type="text" value="1" class="sum" id="number">
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
            </div> 
         <!--底部-->
        <div class="bar-wrapper">
            <div class="bar-right">
                <div class="piece">已选商品<strong class="piece_num">0</strong>件</div>
                <div class="totalMoney">共计: <span class="total_text">0.00</span></div>
                <div class="calBtn"><input onclick="ck()" type="submit" value="结算" style="height: 49px ; width: 100px ;font-size: 26px ;background: orange"/></div>
            </div>
        </div>
</form>
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