<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>果然新鲜</title>
    <link href="<%=request.getContextPath() %>/css/orange.css"rel="stylesheet">
    <link href="<%=request.getContextPath() %>/css/share.css"rel="stylesheet">
    <script src="<%=request.getContextPath() %>/js/jquery-1.12.3.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.SuperSlide.2.1.1.js"></script>
</head>
<script type="text/javascript">
	function add(){
		var b = document.getElementById("price");
		var a = document.getElementById("number");
		var v = document.getElementById("prices");
		a.value = parseInt(a.value)+1;
		var c = parseInt(b.innerText) * parseInt(a.value);
		v.innerText=c;
	}
	function reduce(){
		
		var a = document.getElementById("number");
		if(a.value > 0){
			a.value = parseInt(a.value)-1;	
			var b = document.getElementById("price");
			var v = document.getElementById("prices");
			var c = parseInt(v.innerText) - parseInt(b.innerText);
			v.innerText=c;
		}
	}
</script>
<body>
<!--顶部导航-->
<jsp:include page="/public/head.jsp"></jsp:include>
<!--顶部导航结束-->
<!--banner图片-->
<div class="her-banner">

</div>
<!--banner图片结束-->
<!--主页内容-->
<div class="content">
<form action="<%=request.getContextPath() %>/customer.s" method="post">

    <div class="cont-top">
        <div class="cont-left">
            <div class="ctl-img">
                <img src="${fruitListLemon.ipic }" >
            </div>
            <div class="collect">
                <div class="coll">
                    <i class="iconfont">&#xe641;</i>
                    收藏
                </div>
                <div class="coll">
                    <i class="iconfont">&#xe617;</i>
                    分享
                    <div class="share">

                    </div>
                </div>
            </div>
            <div class="next">
                <div class="nt">
                    上一个
                </div>
                <div class="nt ntp">
                    下一个
                </div>
            </div>


        </div>
        <div class="cont-right">
            <div class="J_productTitle title g_minor">
                <span name="describe">${fruitListLemon.fname }</span>
                <span id="productQrCode" class="webSiteQrCode">&nbsp;
                <div class="code">
                    <img src="images/qrCode%20(1).gif">
                    <p>扫描二微码</p>
                </div>
                </span>
            </div>
           <div class="pic">
           	   <span class="ppi">单价:</span>
               <span class="f-mallUnit">￥</span>
               <span class="pcc" id="price" name="price" value="0">${fruitListLemon.price }</span>
               
               <span class="ppi">总价格:</span>
               <span class="f-mallUnit">￥</span>
               <span class="pcc" id="prices" name="prices" value="0">${fruitListLemon.price }</span>
           </div>
            <div class="pict">
                <div class="f-proSatifySumWrap">
                    <div class="f-satifyDetail">
                        <span class="g_minor  salesVolume">评论：</span><span class="J_commNum">1</span>条
                    </div>
                    <div class="J_pdDetailBorder f-pdDetailBorder"></div>
                    <div class="f-satifyDetail">
                        <span class="g_minor  salesVolume">收藏：</span>1
                    </div>
                </div>
            </div>

            <div class="fk-pd5MallCartCount">
                <div class="f-cartbuyCountWrap">
                    <span class="f-propName g_minor" style="width:75px;min-width:75px;max-width: 75px;">购买数量：</span>
                    
                    <input type="text"  value="1" class="g_itext cartBuyCount f-cartBuyCount" id="number">
                </div>
                <div class="f-buyCountBtn">
                    <div  class="f-countBtn mallJian" onclick="add()"></div>
                    <div  class="f-countBtn disableMallJian" onclick="reduce()"></div>
                </div>
            </div>
            <div class="fk-pd5MallActBtns">
                <Button class="buttn" type="submit" name="buy" value="addCar">
                    加入购物车
                </Button>
                <input type="hidden" name="addcar" value="${fruitListLemon.fin }"/>
                <Button class="buttn butto" type="submit" name="buy" value="buy">
                    立即购买
                </Button>

            </div>

        </div>
    </div>
 </form>

    <div class="cont-bot">
        <div class="hd">
            <ul>
                <li class="active">
                    <div class="hd1 acti" >
                    </div>
                    产品详情
                </li>
                <li>
                    <div class="hd1">
                    </div>
                    产品评论(1)
                </li>
                <li>
                    <div class="hd1">
                    </div>
                    销售记录(0)
                </li>
            </ul>

        </div>
        <div class="bd">
            <div class="bd1"style="display: block">
                <img src="${fruitListLemon.ipic }">
                <img src="${fruitListLemon.ipic }">
            
            </div>
            <div class="bd1">
                <img src="images/or-5.jpg">
                <img src="images/or-6.jpg">
            </div>
            <div class="bd1">
                <div class="sale">
                    <ul>
                        <li>买家</li>
                        <li>选项​​信息</li>
                        <li>数量</li>
                        <li>成交时间</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

</div>
<!--主页内容结束-->
<!--底部-->
<jsp:include page="/public/foot.jsp"></jsp:include>
<!--底部结束-->

</body>
<c:if test="${! empty msg }">
		<script type="text/javascript">
			alert('${msg}');
		</script>
</c:if>

</html>