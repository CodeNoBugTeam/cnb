<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	if (request.getAttribute("ShoppingList") == null) {
		request.getRequestDispatcher("../customer.s?buy=addr").forward(request, response);
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>订单提交</title>
<link href="css/public.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/base.css" />
<script type="text/javascript" src="js/jquery_cart.js"></script>
<link rel="stylesheet" type="text/css" href="css/checkOut.css" />
</head>

<body>
	<!--顶部快捷菜单-->
	<div class="shortcut_v2013 alink_v2013">
		<div class="w">
			<ul class="fl 1h">
				<li class="fl">
					<div class="menu">
						<div class="menu_hd">
							<a href="#"> <img src="images/top_phone_icon.png"
								width="12px" height="16px" /> 手机果然
							</a> <b><em></em></b>
						</div>
						<div class="menu_bd">
							<ul>
								<li><a href="#">App For Android</a></li>
								<li><a href="#">App For IOS</a></li>
							</ul>
						</div>
					</div>
				</li>
				<li class="fl"><i class="shortcut_s"></i></li>
				<li class="fl"><div class="menu_hd">您好，欢迎来到果然新鲜</div></li>
				<li class="fl"><div class="menu_hd">
						<a href="#">请登录</a>
					</div></li>
				<li class="fl"><div class="menu_hd">
						<a href="#">免费注册</a>
					</div></li>
			</ul>
			<ul class="fr 1h">
				<li class="fl"><div class="menu_hd">
						<a href="#">我的订单</a>
					</div></li>
				<li class="fl"><i class="shortcut_s"></i></li>
				<li class="fl"><div class="menu_hd">
						<a href="#">我的锡货</a>
					</div></li>
				<li class="fl"><i class="shortcut_s"></i></li>
				<li class="fl"><div class="menu_hd">
						<a href="#">服务中心</a>
					</div></li>
				<li class="fl"><i class="shortcut_s"></i></li>
				<li class="fl"><div class="menu_hd">
						<a href="#">商家入驻</a>
					</div></li>
				<li class="fl"><i class="shortcut_s"></i></li>
				<li class="fl">
					<div class="menu">
						<div class="menu_hd">
							<a href="#">网站导航</a><b><em></em></b>
						</div>
						<div class="menu_bd">
							<ul>
								<li><a href="#">网站导航</a></li>
								<li><a href="#">网站导航</a></li>
							</ul>
						</div>
					</div>
				</li>
			</ul>
			<span class="clr"></span>
		</div>
	</div>
	<!--顶部快捷菜单-->


	<!--顶部Logo及搜索-->
	<div class="header_2013">
		<div class="w">
			<div class="logo_v2013">
				<a href="#"> <img class="border_r" src="images/logo.jpg"
					width="140" height="50">

				</a>
			</div>
			<div class="header_searchbox">
				<form action="#">
					<input name="search" type="text" class="header_search_input"
						default_val="锡货网三期上线全场五折" autocomplete="off" x-webkit-speech=""
						x-webkit-grammar="builtin:search" lang="zh">
					<button type="submit" class="header_search_btn">搜索</button>
				</form>
				<ul class="hot_word">
					<li><a class="red" href="#" target="_blank">礼品卡</a></li>
					<li><a target="_blank" href="#">百货五折</a></li>
					<li><a target="_blank" href="#">大闸蟹</a></li>
					<li><a target="_blank" href="#">年货</a></li>
					<li><a target="_blank" href="#">电子产品</a></li>
				</ul>
			</div>
			<div id="cart_box" class="cart_box">
				<a id="cart" class="cart_link" href="#" rel="nofollow"> <span
					class="text">去购物车结算</span> <img src="images/shopping_icon.png"
					width="24" height="24" class="cart_gif"> <!-- 购物车没有物品时，隐藏此num -->
					<span class="num">12</span> <s class="icon_arrow_right"></s>
				</a>

				<div class="cart_content" id="cart_content">
					<i class="cart-icons"></i>
					<!-- 购物车没有物品时，显示cart_content_null、隐藏cart_content_all -->
					<div class="cart_content_null" style="display: none;">
						购物车中还没有商品，<br>快去挑选心爱的商品吧！
					</div>
					<div class="cart_content_all" style="display: block;">
						<div class="cart_left_time">
							<span>06分49.9秒</span> 后购物车将被清空，请及时结算
						</div>
						<div class="cart_content_center">
							<div class="cart_con_single">
								<div class="single_pic">
									<a href="#" target="_blank" alt="兰蔻 (Lancome)根源补养洁颜啫哩 125ml">
										<img src="images/goods_img01.jpg" />
									</a>
								</div>
								<div class="single_info">
									<a href="#" target="_blank" alt="兰蔻 (Lancome)根源补养洁颜啫哩 125ml"
										class="name">兰蔻 (Lancome)根源补养洁颜啫哩 125ml</a> <span
										class="price">￥269.00</span> <span class="price_plus">
										x </span> <span class="price_num">1</span>
								</div>
							</div>
						</div>
						<div class="con_all">
							<div class="price_whole">
								<span>共<span class="num_all">12</span>件商品
								</span>
							</div>
							<div>
								<span class="price_gongji">共计<em>￥</em><span
									class="total_price">69</span></span><a href="#" class="cart_btn"
									rel="nofollow">去购物车结算</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<span class="clr"></span>
		</div>
	</div>
	<!--顶部Logo及搜索-->

	<!--  导航条    start-->
	<div class="yHeader">
		<div class="shop_Nav">
			<div class="pullDown">
				<h2 class="pullDownTitle">
					<i></i>全部商品分类
				</h2>
			</div>

			<ul class="Menu_box">
				<li><a href="" target="_blank" class="yMenua">首页</a></li>
				<li><a href="" target="_blank">大划算</a></li>
				<li><a href="" target="_blank">抢拍</a></li>
				<li><a href="" target="_blank">锡货专场</a></li>
				<li><a href="" target="_blank">锡货超市</a></li>
			</ul>
			<div class="fr r_icon">
				<i class="i01"></i><span>30天退货</span><i class="i02"></i><span>满59包邮</span>
			</div>
		</div>
	</div>
	<!--  导航条    end-->



	<div class="banner_red_top"></div>


	<!--收货地址body部分开始-->
	<div class="border_top_cart">
		<script type="text/javascript">
			var checkoutConfig = {
				addressMatch : 'common',
				addressMatchVarName : 'data',
				hasPresales : false,
				hasBigTv : false,
				hasAir : false,
				hasScales : false,
				hasGiftcard : false,
				totalPrice : 244.00,
				postage : 10,//运费
				postFree : true,//活动是否免邮了
				bcPrice : 150,//计算界值
				activityDiscountMoney : 0.00,//活动优惠
				showCouponBox : 0,
				invoice : {
					NA : "0",
					personal : "1",
					company : "2",
					electronic : "4"
				}
			};
			var miniCartDisable = true;
		</script>
		<div class="container">
			<div class="checkout-box">
				<form id="checkoutForm" action="#" method="post">
					<div class="checkout-box-bd">
						<!-- 地址状态 0：默认选择；1：新增地址；2：修改地址 -->
						<input type="hidden" name="Checkout[addressState]" id="addrState"
							value="0">
						<!-- 收货地址 -->
						<div class="xm-box">
							<div class="box-hd ">
								<h2 class="title">收货地址</h2>
								<!---->
							</div>
							<div class="box-bd">					
								<div class="clearfix xm-address-list" id="checkoutAddrList">
									<c:forEach items= "${ShoppingList }" var="u">
									<dl class="item">
									<dt>
										<strong class="itemConsignee">${u.sname }</strong> 
										<span class="itemTag tag">${u.sinput }</span>
									</dt>
									<dd>
										<p class="tel itemTel">${u.stel }</p>
										<p class="itemRegion">${u.sprovince}&nbsp;${ u.scity }&nbsp;${u.scounty }</p>
										<p class="itemStreet">${u.sstreet}(${u.spostcode })</p>
										<span class="edit-btn J_editAddr">编辑</span>
									</dd>
									
									<dd style="display: none">
										<input type="radio" name="Checkout[address]"
												class="addressId" value="10140916720030323">
									</dd>
									</dl>
									</c:forEach>
									<div class="item use-new-addr" id="J_useNewAddr"
										data-state="off">
										<span class="iconfont icon-add"><img
											src="images/add_cart.png" /></span> 使用新地址
									</div>
									
								</div>
								
								<!-- <input type="hidden" name="newAddress[type]" id="newType" value="common"> 
								<input type="hidden" name="sname" id="newConsignee">
								<input type="hidden" name="sprovince" id="newProvince">
								<input type="hidden" name="scity" id="newCity">
								<input type="hidden" name="scounty" id="newCounty">
								<input type="hidden" name="sstreet" id="newStreet">
								<input type="hidden" name="spostcode" id="newZipcode">
								<input type="hidden" name="stel" id="newTel">
								<input type="hidden" name="sinput" id="newTag"> -->
								<!--点击弹出新增/收货地址界面start-->
								<form action="customer.s" method="post">
								<input type="hidden" name="buy" value="addadres">
								<div class="xm-edit-addr-box" id="J_editAddrBox">
									<div class="bd">
										<div class="item">
											<label>收货人姓名<span>*</span></label> <input type="text"
												name="sname" id="Consignee" class="input"
												placeholder="收货人姓名" maxlength="15" autocomplete='off'>
											<p class="tip-msg tipMsg"></p>
										</div>
										<div class="item">
											<label>联系电话<span>*</span></label> 
											<input type="text" name="stel" class="input" id="Telephone" placeholder="11位手机号" autocomplete='off'>
											<p class="tel-modify-tip" id="telModifyTip"></p>
											<p class="tip-msg tipMsg"></p>
										</div>
										<div class="item">
											<label>地址<span>*</span></label> <select
												name="sprovince" id="Provinces" class="select-1">
												<option>省份/自治区</option>
											</select> <select name="scity" id="Citys" class="select-2"
												disabled>
												<option>城市/地区/自治州</option>
											</select> <select name="scounty" id="Countys"
												class="select-3" disabled>
												<option>区/县</option>
											</select>
											<textarea name="sstreet" class="input-area"
												id="Street" placeholder="路名或街道地址，门牌号"></textarea>
											<p class="tip-msg tipMsg"></p>
										</div>
										<div class="item">
											<label>邮政编码<span>*</span></label> <input type="text"
												name="spostcode" id="Zipcode" class="input"
												placeholder="邮政编码" autocomplete='off'>
											<p class="zipcode-tip" id="zipcodeTip"></p>
											<p class="tip-msg tipMsg"></p>
										</div>
										<div class="item">
											<label>地址标签<span>*</span></label> <input type="text"
												name="sinput" id="Tag" class="input"
												placeholder='地址标签：如"家"、"公司"。限5个字内'>
											<p class="tip-msg tipMsg"></p>
										</div>
									</div>
									<div class="ft clearfix">
										<button type="button" class="btn btn-lineDake btn-small "
											id="J_editAddrCancel">取消</button>
										<button type="submit" class="btn btn-primary  btn-small "
											id="J_editAddrOk" >保存</button>
									</div>
									
								</div>
								</form>
								<!--点击弹出新增/收货地址界面end-->
								<div class="xm-edit-addr-backdrop" id="J_editAddrBackdrop"></div>
							</div>
						</div>
						<!-- 收货地址 END-->
					
						<div id="checkoutPayment">
							<!-- 支付方式 -->
							<div class="xm-box">
								<div class="box-hd ">
									<h2 class="title">支付方式</h2>
								</div>
								<div class="box-bd">
									<ul id="checkoutPaymentList"
										class="checkout-option-list clearfix J_optionList">
										<li class="item selected"><input type="radio"
											name="Checkout[pay_id]" checked="checked" value="1">
											<p>
												在线支付 <span></span>
											</p></li>
									</ul>
								</div>
							</div>
							<!-- 支付方式 END-->
							<div class="xm-box">
								<div class="box-hd ">
									<h2 class="title">配送方式</h2>
								</div>
								<div class="box-bd">
									<ul id="checkoutShipmentList"
										class="checkout-option-list clearfix J_optionList">
										<li class="item selected"><input type="radio"
											data-price="0" name="Checkout[shipment_id]" checked="checked"
											value="1">
											<p>
												快递配送（免运费） <span></span>
											</p></li>
									</ul>
								</div>
							</div>
							<!-- 配送方式 END-->
							<!-- 配送方式 END-->
						</div>
						<!-- 送货时间 -->
						<div class="xm-box">
							<div class="box-hd">
								<h2 class="title">送货时间</h2>
							</div>
							<div class="box-bd">
								<ul class="checkout-option-list clearfix J_optionList">
									<li class="item selected"><input type="radio"
										checked="checked" name="Checkout[best_time]" value="1">
									<p>
											不限送货时间<span>周一至周日</span>
										</p></li>
									<li class="item "><input type="radio"
										name="Checkout[best_time]" value="2">
									<p>
											工作日送货<span>周一至周五</span>
										</p></li>
									<li class="item "><input type="radio"
										name="Checkout[best_time]" value="3">
									<p>
											双休日、假日送货<span>周六至周日</span>
										</p></li>
								</ul>
							</div>
						</div>
						<!-- 送货时间 END-->
						<!-- 发票信息 -->
						<div id="checkoutInvoice">
							<div class="xm-box">
								<div class="box-hd">
									<h2 class="title">发票信息</h2>
								</div>
								<div class="box-bd">
									<ul
										class="checkout-option-list checkout-option-invoice clearfix J_optionList J_optionInvoice">
										<li class="hide">电子个人发票4</li>
										<li class="item selected">
											<!--<label><input type="radio"  class="needInvoice" value="0" name="Checkout[invoice]">不开发票</label>-->
											<input type="radio" checked="checked" value="4"
											name="Checkout[invoice]">
											<p>电子发票（非纸质）</p>
										</li>
										<li class="item "><input type="radio" value="1"
											name="Checkout[invoice]">
											<p>普通发票（纸质）</p></li>
									</ul>
									<p id="eInvoiceTip" class="e-invoice-tip ">
										电子发票是税务局认可的有效凭证，可作为售后维权凭据，不随商品寄送。开票后不可更换纸质发票，如需报销请选择普通发票。<a
											href="http://bbs.xiaomi.cn/thread-9285999-1-1.html"
											target="_blank">什么是电子发票？</a>
									</p>
									<div class="invoice-info nvoice-info-1"
										id="checkoutInvoiceElectronic" style="display: none;">

										<p class="tip">电子发票目前仅对个人用户开具，不可用于单位报销 ，不随商品寄送</p>
										<p>发票内容：购买商品明细</p>
										<p>发票抬头：个人</p>
										<p>
											<span class="hide"><input type="radio" value="4"
												name="Checkout[invoice_type]" checked="checked"
												id="electronicPersonal" class="invoiceType"></span>
										<dl>
											<dt>什么是电子发票?</dt>
											<dd>&#903;
												电子发票是纸质发票的映像，是税务局认可的有效凭证，与传统纸质发票具有同等法律效力，可作为售后维权凭据。</dd>
											<dd>&#903; 开具电子服务于个人，开票后不可更换纸质发票，不可用于单位报销。</dd>
											<dd>
												&#903; 您在订单详情的"发票信息"栏可查看、下载您的电子发票。<a
													href="http://bbs.xiaomi.cn/thread-9285999-1-1.html"
													target="_blank">什么是电子发票？</a>
											</dd>
										</dl>
										</p>
									</div>
									<div class="invoice-info invoice-info-2"
										id="checkoutInvoiceDetail" style="display: none;">
										<p>发票内容：购买商品明细</p>
										<p>发票抬头：请确认单位名称正确,以免因名称错误耽搁您的报销。注：合约机话费仅能开个人发票</p>
										<ul class="type clearfix J_invoiceType">
											<li class="hide"><input type="radio" value="0"
												name="Checkout[invoice_type]" id="noNeedInvoice"></li>
											<li class=""><input class="invoiceType" type="radio"
												id="commonPersonal" name="Checkout[invoice_type]" value="1">
												个人</li>
											<li class=""><input class="invoiceType" type="radio"
												name="Checkout[invoice_type]" value="2"> 单位</li>
										</ul>
										<div id='CheckoutInvoiceTitle' class=" hide  invoice-title">
											<label for="Checkout[invoice_title]">单位名称：</label> <input
												name="Checkout[invoice_title]" type="text" maxlength="49"
												value="" class="input"> <span
												class="tip-msg J_tipMsg"></span>
										</div>

									</div>

								</div>
							</div>
						</div>
						<!-- 发票信息 END-->
					</div>
					<div class="checkout-box-ft">
						<!-- 商品清单 -->
						<div id="checkoutGoodsList" class="checkout-goods-box">
							<div class="xm-box">
								<div class="box-hd">
									<h2 class="title">确认订单信息</h2>
								</div>
								<div class="box-bd">
									<dl class="checkout-goods-list">
										<dt class="clearfix">
											<span class="col col-1">商品名称</span> <span class="col col-2">购买价格</span>
											<span class="col col-3">购买数量</span> <span class="col col-4">小计（元）</span>
										</dt>
										<dd class="item clearfix">
											<div class="item-row">
												<div class="col col-1">
													<div class="g-pic">
														<img
															src="http://i1.mifile.cn/a1/T11lLgB5YT1RXrhCrK!40x40.jpg"
															srcset="http://i1.mifile.cn/a1/T11lLgB5YT1RXrhCrK!80x80.jpg 2x"
															width="40" height="40" />
													</div>
													<div class="g-info">
														<a href="#"> 小米T恤 忍者米兔双截棍 军绿 XXL </a>
													</div>
												</div>

												<div class="col col-2">39元</div>
												<div class="col col-3">1</div>
												<div class="col col-4">39元</div>
											</div>
										</dd>
										<dd class="item clearfix">
											<div class="item-row">
												<div class="col col-1">
													<div class="g-pic">
														<img
															src="http://i1.mifile.cn/a1/T14BLvBKJT1RXrhCrK!40x40.jpg"
															srcset="http://i1.mifile.cn/a1/T14BLvBKJT1RXrhCrK!80x80.jpg 2x"
															width="40" height="40" />
													</div>
													<div class="g-info">
														<a href="#"> 招财猫米兔 白色 </a>
													</div>
												</div>

												<div class="col col-2">49元</div>
												<div class="col col-3">1</div>
												<div class="col col-4">49元</div>
											</div>
										</dd>
										<dd class="item clearfix">
											<div class="item-row">
												<div class="col col-1">
													<div class="g-pic">
														<img
															src="http://i1.mifile.cn/a1/T1rrDgB4DT1RXrhCrK!40x40.jpg"
															srcset="http://i1.mifile.cn/a1/T1rrDgB4DT1RXrhCrK!80x80.jpg 2x"
															width="40" height="40" />
													</div>
													<div class="g-info">
														<a href="#"> 小米圆领纯色T恤 男款 红色 XXL </a>
													</div>
												</div>

												<div class="col col-2">39元</div>
												<div class="col col-3">4</div>
												<div class="col col-4">156元</div>
											</div>
										</dd>
									</dl>
									<div class="checkout-count clearfix">
										<div class="checkout-count-extend xm-add-buy">
											<h3 class="title">
												会员留言
												</h2>
												</br> <input type="text" />
										</div>
										<!-- checkout-count-extend -->
										<div class="checkout-price">
											<ul>

												<li>订单总额：<span>244元</span>
												</li>
												<li>活动优惠：<span>-0元</span> <script
														type="text/javascript">
													checkoutConfig.activityDiscountMoney = 0;
													checkoutConfig.totalPrice = 244.00;
												</script>
												</li>
												<li>优惠券抵扣：<span id="couponDesc">-0元</span>
												</li>
												<li>运费：<span id="postageDesc">0元</span>
												</li>
											</ul>
											<p class="checkout-total">
												应付总额：<span><strong id="totalPrice">244</strong>元</span>
											</p>
										</div>
										<!--  -->
									</div>
								</div>
							</div>

							<!--S 加价购 产品选择弹框 -->
							<div class="modal hide modal-choose-pro" id="J_choosePro-664">
								<div class="modal-header">
									<span class="close" data-dismiss='modal'><i
										class="iconfont">&#xe617;</i></span>
									<h3>选择产品</h3>
									<div class="more">
										<div class="xm-recommend-page clearfix">
											<a class="page-btn-prev   J_carouselPrev iconfont"
												href="javascript: void(0);">&#xe604;</a><a
												class="page-btn-next  J_carouselNext iconfont"
												href="javascript: void(0);">&#xe605;</a>
										</div>
									</div>
								</div>
								<div class="modal-body J_chooseProCarousel">
									<div class="J_carouselWrap modal-choose-pro-list-wrap">
										<ul class="clearfix J_carouselList">
										</ul>
									</div>
								</div>
								<div class="modal-footer">
									<a href="#" class="btn btn-disabled J_chooseProBtn">加入购物车</a>
								</div>
							</div>
							<!--E 加价购 产品选择弹框 -->

							<!--S 保障计划 产品选择弹框 -->


						</div>
						<!-- 商品清单 END -->
						<input type="hidden" id="couponType" name="Checkout[couponsType]">
						<input type="hidden" id="couponValue"
							name="Checkout[couponsValue]">
						<div class="checkout-confirm">

							<a href="#" class="btn btn-lineDakeLight btn-back-cart">返回购物车</a>
							<input type="submit" class="btn btn-primary" value="立即下单"
								id="checkoutToPay" />
						</div>
					</div>
			</div>

			</form>

		</div>
		<!-- 禮品卡提示 S-->
		<div class="modal hide lipin-modal" id="lipinTip">
			<div class="modal-header">
				<h2 class="title">温馨提示</h2>
				<p>
					为保障您的利益与安全，下单后礼品卡将会被使用，<br> 且订单信息将不可修改。请确认收货信息：
				</p>
			</div>
			<div class="modal-body">
				<ul>
					<li><strong>收&nbsp;&nbsp;货&nbsp;&nbsp;人：</strong><span
						id="lipin-uname"></span></li>
					<li><strong>联系电话：</strong><span id="lipin-uphone"></span></li>
					<li><strong>收货地址：</strong><span id="lipin-uaddr"></span></li>
				</ul>
			</div>
			<div class="modal-footer">
				<span class="btn btn-primary" id="useGiftCard">确认下单</span>
				<span class="btn btn-dakeLight" id="closeGiftCard">返回修改</span>
			</div>
		</div>
		<!--  禮品卡提示 E-->
		<!-- 预售提示 S-->
		<div class="modal hide yushou-modal" id="yushouTip">
			<div class="modal-body">
				<h2>请确认收货地址及发货时间</h2>
				<ul class="list">
					<li><strong>请确认配送地址，提交后不可变更：</strong>
						<p id="yushouAddr"></p> <span class="icon-common icon-1"></span></li>
					<li><strong>支付后发货</strong>
						<p>如您随预售商品一起购买的商品，将与预售商品一起发货</p> <span class="icon-common icon-2"></span>
					</li>
					<li><strong>以支付价格为准</strong>
						<p>如预售产品发生调价，已支付订单价格将不受影响。</p> <span class="icon-common icon-3"></span>
					</li>
				</ul>
			</div>
			<div class="modal-footer">
				<p id="yushouOk" class="yushou-ok">
					<span class="icon-checkbox"><i class="iconfont">&#xe626;</i></span>
					我已确认收货地址正确，不再变更
				</p>
				<span class="btn btn-lineDakeLight" data-dismiss="modal">返回修改地址</span>
				<span class="btn btn-primary" id="yushouCheckout">继续下单</span>

			</div>
		</div>
		<!--  预售提示 E-->

<script id="newAddrTemplate" type="text/x-dot-template">
        <dl class="item selected" data-isnew="true" data-consignee="{{=it.consignee}}" data-tel="{{=it.tel}}" data-province="{{=it.province}}" data-provincename="{{=it.provinceName}}" data-city="{{=it.city}}" data-cityname="{{=it.cityName}}" data-county="{{=it.county}}" data-countyname="{{=it.countyName}}" data-zipcode="{{=it.zipcode}}" data-street="{{=it.street}}" data-tag="{{=it.tag}}">
            <dt>
                <strong class="itemConsignee">{{=it.consignee}}</strong>
                {{? it.tag }}
                    <span  class="itemTag tag">{{=it.tag}}</span>
                {{?}}
            </dt>
            <dd>
                <p class="tel itemTel">{{=it.tel}}</p>
                <p  class="itemRegion">{{=it.provinceName}} {{=it.cityName}} {{=it.countyName}}</p>
                <p  class="itemStreet">{{=it.street}} ({{=it.zipcode}})</p>
                <span class="edit-btn J_editAddr">编辑</span>
            </dd>
        </dl>
</script>


		<!-- 保险弹窗 -->
		<!-- 保险弹窗 -->




		<script src="js/base.min.js"></script>

		<script type="text/javascript" src="js/address_all.js"></script>
		<script type="text/javascript" src="js/checkout.min.js"></script>
	</div>

	<!--收货地址body部分结束-->
</body>
</html>