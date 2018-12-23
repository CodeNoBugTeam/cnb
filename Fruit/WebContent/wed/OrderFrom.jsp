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
			</ul>
			<ul class="fr 1h">
				<li class="fl"><div class="menu_hd">
						<a href="#">我的订单</a>
					</div></li>
				<li class="fl"><i class="shortcut_s"></i></li>
				<li class="fl"><div class="menu_hd">
						<a href="#">我的果然</a>
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
					width="140" height="50" />
				</a>
			</div>
			<div class="header_searchbox">
				<form action="#">
					<input name="search" type="text" class="header_search_input"
						default_val="锡货网三期上线全场五折" autocomplete="off" x-webkit-speech=""
						x-webkit-grammar="builtin:search" lang="zh" />
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
				<li><a href="" target="_blank">果然专场</a></li>
				<li><a href="" target="_blank">果然超市</a></li>
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
		<form id="checkoutForm" action="customer.s" method="post">
			<input type="hidden" name="buy" value="ljBuy" />
			<div class="container">
				<div class="checkout-box">
					<div class="checkout-box-bd">
						<!-- 地址状态 0：默认选择；1：新增地址；2：修改地址 -->
						<!-- 收货地址 -->
						<div class="xm-box">
							<div class="box-hd ">
								<h2 class="title">收货地址</h2>
								<!---->
							</div>
							<div class="box-bd">
								<div class="clearfix xm-address-list" id="checkoutAddrList">
									<c:forEach items="${ShoppingList }" var="u">
										<dl class="item">
											<dt>
												<strong class="itemConsignee">${u.sname }</strong> <span
													class="itemTag tag">${u.sinput }</span>
											</dt>
											<dd>
												<p class="tel itemTel">${u.stel }</p>
												<p class="itemRegion">${u.sprovince}&nbsp;${ u.scity }&nbsp;${u.scounty }</p>
												<p class="itemStreet">${u.sstreet}(${u.spostcode })</p>
												<span class="edit-btn J_editAddr">编辑</span>
											</dd>

											<dd style="display: none">
												<input type="radio" name="sendaddr" class="addressId"
													value="${u.sname } ${u.stel }  ${u.sprovince}${ u.scity }${u.scounty }${u.sstreet}(${u.spostcode })" />
											</dd>
										</dl>
									</c:forEach>
									<div class="item use-new-addr" id="J_useNewAddr"
										data-state="off">
										<span class="iconfont icon-add"><img
											src="images/add_cart.png" /></span> 使用新地址
									</div>
								</div>
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
											name="Checkout[pay_id]" checked="checked" value="1" />
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
											value="1" />
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
										checked="checked" name="senddata" value="不限送货时间" />
										<p>
											不限送货时间<span>周一至周日</span>
										</p></li>
									<li class="item "><input type="radio" name="senddata"
										value="工作日送货" />
										<p>
											工作日送货<span>周一至周五</span>
										</p></li>
									<li class="item "><input type="radio" name="senddata"
										value="双休日、假日送货" />
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
											<input type="radio" checked="checked" value="电子发票（非纸质）"
											name="fapiao" />
											<p>电子发票（非纸质）</p>
										</li>
										<li class="item "><input type="radio" checked="checked"
											value="普通发票（纸质）" name="fapiao" />
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
											<span class="hide"> <input type="radio" value="4"
												name="Checkout[invoice_type]" checked="checked"
												id="electronicPersonal" class="invoiceType" /></span>
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
									<c:forEach items="${buy}" var="i">
										<dd class="item clearfix">
											<div class="item-row">
												<div class="col col-1">
													<div class="g-pic">
														<img src="${i.ipic }" width="40" height="40" />
													</div>
													<div class="g-info">
														<a href="#"> ${i.fname } </a>
													</div>
												</div>
												<div class="col col-2">${i.price }</div>
												<div class="col col-3">1</div>
												<div class="col col-4">${i.price }</div>
												<input type="hidden" name="fid" value="${i.fin }" /> <input
													type="hidden" name="perprice" value="${i.price }" /> <input
													type="hidden" name="buynum" value="1" /> <input
													type="hidden" name="xiaoji" value="${i.price }" />
											</div>
										</dd>
									</c:forEach>
								</dl>
								<div class="checkout-count clearfix">
									<div class="checkout-count-extend xm-add-buy">
										<h3 class="title">
											会员留言
											</h2>
											</br> <input type="text" name="sleave" value="" />
									</div>
									<!-- checkout-count-extend -->
									<div class="checkout-price">
										<ul>

											<li>订单总额：<span>${sum }元</span>
											</li>
											<li>活动优惠：<span>-0元</span> <script type="text/javascript">												
											</script>
											</li>
											<li>优惠券抵扣：<span id="couponDesc">-0元</span>
											</li>
											<li>运费：<span id="postageDesc">0元</span>
											</li>
										</ul>
										<p class="checkout-total">
											应付总额：<span style="font-size: 26px">${sum }元</span> <input
												type="hidden" name="zongji" value="${sum }" />
										</p>
									</div>
								</div>
							</div>
						</div>
						<!--S 加价购 产品选择弹框 -->
						<div class="modal hide modal-choose-pro" id="J_choosePro-664">
							<div class="modal-header">
								<span class="close" data-dismiss='modal'> <i
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
					<input type="hidden" id="couponType" name="Checkout[couponsType]" />
					<input type="hidden" id="couponValue" name="Checkout[couponsValue]" />
					<div class="checkout-confirm">
						<a href="#" class="btn btn-lineDakeLight btn-back-cart">返回购物车</a>
						<input type="submit" class="btn btn-primary" value="立即付款"
							id="checkoutToPay" />
					</div>
				</div>
			</div>
		</form>
		<!--点击弹出新增/收货地址界面start-->
		<div class="xm-edit-addr-box" id="J_editAddrBox">
			<div class="bd">
				<div class="item">
					<label>收货人姓名<span>*</span></label> <input type="text" name="sname"
						id="Consignee" class="input" placeholder="收货人姓名" maxlength="15"
						autocomplete='off' />
					<p class="tip-msg tipMsg"></p>
				</div>
				<div class="item">
					<label>联系电话<span>*</span></label> <input type="text" name="stel"
						class="input" id="Telephone" placeholder="11位手机号"
						autocomplete='off' />
					<p class="tel-modify-tip" id="telModifyTip"></p>
					<p class="tip-msg tipMsg"></p>
				</div>
				<div class="item">
					<label>地址<span>*</span></label> <select name="sprovince"
						id="Provinces" class="select-1">
						<option>省份/自治区</option>
					</select> <select name="scity" id="Citys" class="select-2" disabled>
						<option>城市/地区/自治州</option>
					</select> <select name="scounty" id="Countys" class="select-3" disabled>
						<option>区/县</option>
					</select>
					<textarea name="sstreet" class="input-area" id="Street"
						placeholder="路名或街道地址，门牌号"></textarea>
					<p class="tip-msg tipMsg"></p>
				</div>
				<div class="item">
					<label>邮政编码<span>*</span></label> <input type="text"
						name="spostcode" id="Zipcode" class="input" placeholder="邮政编码"
						autocomplete='off' />
					<p class="zipcode-tip" id="zipcodeTip"></p>
					<p class="tip-msg tipMsg"></p>
				</div>
				<div class="item">
					<label>地址标签<span>*</span></label> <input type="text" name="sinput"
						id="Tag" class="input" placeholder='地址标签：如"家"、"公司"。限5个字内' />
					<p class="tip-msg tipMsg"></p>
				</div>
			</div>
			<div class="ft clearfix">
				<button type="button" class="btn btn-lineDake btn-small "
					id="J_editAddrCancel">取消</button>
				<button type="button" class="btn btn-primary  btn-small "
					onclick="addadres()">保存</button>
			</div>
		</div>
		<!--点击弹出新增/收货地址界面end-->
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
			<span class="btn btn-primary" id="useGiftCard">确认下单</span> <span
				class="btn btn-dakeLight" id="closeGiftCard">返回修改</span>
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
	<script>
		function addadres() {
			var ShoppingAddress = {};
			ShoppingAddress.sname = $('#Consignee').val();
			ShoppingAddress.stel = $('#Telephone').val();
			var s = $("#Provinces").get(0);
			ShoppingAddress.sprovince = s.options[s.selectedIndex].innerText;
			var d = $("#Citys").get(0);
			ShoppingAddress.scity = s.options[s.selectedIndex].innerText;
			var f = $("#Countys").get(0);
			ShoppingAddress.scounty = s.options[s.selectedIndex].innerText;
			ShoppingAddress.sstreet = $('#Street').val();
			ShoppingAddress.spostcode = $('#Zipcode').val();
			ShoppingAddress.sinput = $('#Tag').val();
			$.post("../customer.s?buy=addadres", ShoppingAddress,
					funcation(userString){
				alert(userString);
				location.reload(true);
			}
			);
		}
	</script>
</body>
<c:if test="${ ! empty msg }">
	<script type="text/javascript">
		alert('${msg}');
	</script>
</c:if>
</html>