<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>锡货超市</title>
<link href="css/public.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/base.css" />
<script type="text/javascript" src="js/jquery_cart.js"></script>
<link rel="stylesheet" type="text/css" href="css/buyConfirm.css" />
<script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>
<script src="js/unslider.min.js" type="text/javascript"></script>
<script src="js/index.js" type="text/javascript"></script>
<script type="text/javascript">
	window.onload = function() {
		new tab('test4-input-input_tab1-input_tab2', '-');
	}
	function tab(o, s, cb, ev) { //tab换类
		var $ = function(o) {
			return document.getElementById(o)
		};
		var css = o.split((s || '_'));
		if (css.length != 4)
			return;
		this.event = ev || 'onclick';
		o = $(o);
		if (o) {
			this.ITEM = [];
			o.id = css[0];
			var item = o.getElementsByTagName(css[1]);
			var j = 1;
			for (var i = 0; i < item.length; i++) {
				if (item[i].className.indexOf(css[2]) >= 0
						|| item[i].className.indexOf(css[3]) >= 0) {
					if (item[i].className == css[2])
						o['cur'] = item[i];
					item[i].callBack = cb || function() {
					};
					item[i]['css'] = css;
					item[i]['link'] = o;
					this.ITEM[j] = item[i];
					item[i]['Index'] = j++;
					item[i][this.event] = this.ACTIVE;
				}
			}
			return o;
		}
	}
	tab.prototype = {
		ACTIVE : function() {
			var $ = function(o) {
				return document.getElementById(o)
			};
			this['link']['cur'].className = this['css'][3];
			this.className = this['css'][2];
			try {
				$(this['link']['id'] + '_' + this['link']['cur']['Index']).style.display = 'none';
				$(this['link']['id'] + '_' + this['Index']).style.display = 'block';
			} catch (e) {
			}
			this.callBack.call(this);
			this['link']['cur'] = this;
		}
	}
</script>
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
								width="12px" height="16px" /> 手机锡货
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
				<li class="fl"><div class="menu_hd">您好，欢迎来到果然新鲜！</div></li>
				<li class="fl"><div class="menu_hd">
						
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
					width="120" height="50"></a>
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


	<!--订单提交body部分开始-->


	<div class="border_top_cart">

		<div class="container payment-con">
			<form target="_blank" action="#" id="pay-form" method="post">
				<div class="order-info">
					<div class="msg">
						<h3>您的订单已提交成功！付款咯～</h3>
						<p></p>

						<p class="post-date">成功付款后，7天发货</p>
					</div>
					<div class="info">
						<p>
							金额：<span class="pay-total">${zhangdan.zongji }</span>
						</p>
						<p>订单：${zhangdan.cid }</p>
						<p>
							配送：${zhangdan.sendaddr }<span class="line">/</span> ${zhangdan.senddata }<span
								class="line">/</span> ${zhangdan.fapiao }
						</p>
					</div>
					<div class="icon-box">
						<i class="iconfont"><img src="images/yes_ok.png" /></i>
					</div>
				</div>

				<div class="xm-plain-box">
					<!-- 选择支付方式 -->
					<div class="box-hd bank-title clearfix">
						<div id="titleWrap" class="title-wrap">
							<h2 class="title">选择支付方式</h2>
							<h2 class="title hide ">
								你还需要继续支付 <em>49.00</em> 元
							</h2>
							<span class="tip-tag"></span>
						</div>
					</div>
					<div class="box-bd" id="bankList">
						<div class="payment-bd">
							<form name="ck">
								<dl class="clearfix payment-box">
									<dt>
										<strong>支付平台</strong>
										<p>手机等大额支付推荐使用支付宝快捷支付</p>
									</dt>
									<dd>
										<fieldset id="test4-input-input_tab1-input_tab2"
											style="border: none;">
											<ul class="payment-list clearfix">
												<li><input class="input_tab2" name="myradio" id="r2"
													type="radio" /><label for="r2"><img
														src="images/zfb.png" alt="" /></label></li>
												<li><input class="input_tab2" name="myradio" id="r2"
													type="radio" /><label for="r2"><img
														src="images/yck.png" alt="" /></label></li>
												<li><input class="input_tab2" name="myradio" id="r2"
													type="radio" /><label for="r2"><img
														src="images/zxzf.png" alt="" /></label></li>
											</ul>
											<div>

												<div id="test4_2" style="display: none;"></div>
												<div id="test4_3" style="display: none;"></div>
												<div id="test4_4" style="display: none;"></div>



											</div>
										</fieldset>
									</dd>
								</dl>
							</form>

							<dl class="clearfix payment-box">
								<dt>
									<strong>银行网银</strong>
									<p>支持以下各银行借记卡及信用卡</p>

								</dt>
								<dd>
									<ul class="payment-list clearfix">
										<li><label for="CMB"><input type="radio"
												name="payOnlineBank" id="CMB" value="CMB" /> <img
												src="http://s1.mi.com/images/payOnline_zsyh.gif" alt="" /></label></li>
										<li><label for="ICBCB2C"><input type="radio"
												name="payOnlineBank" id="ICBCB2C" value="ICBCB2C" /> <img
												src="http://s1.mi.com/images/payOnline_gsyh.gif" alt="" /></label></li>
										<li><label for="CCB"><input type="radio"
												name="payOnlineBank" id="CCB" value="CCB" /> <img
												src="http://s1.mi.com/images/payOnline_jsyh.gif" alt="" /></label></li>
										<li><label for="ABC"><input type="radio"
												name="payOnlineBank" id="ABC" value="ABC" /> <img
												src="http://s1.mi.com/images/payOnline_nyyh.gif" alt="" /></label></li>
										<li><label for="BOCB2C"><input type="radio"
												name="payOnlineBank" id="BOCB2C" value="BOCB2C" /> <img
												src="http://s1.mi.com/images/payOnline_zgyh.gif" alt="" /></label></li>
										<li><label for="COMM"><input type="radio"
												name="payOnlineBank" id="COMM" value="COMM" /> <img
												src="http://s1.mi.com/images/payOnline_jtyh.gif" alt="" /></label></li>
										<li><label for="PSBC-DEBIT"><input type="radio"
												name="payOnlineBank" id="PSBC-DEBIT" value="PSBC-DEBIT" />
												<img src="http://s1.mi.com/images/payOnline_youzheng.gif"
												alt="" /></label></li>
										<li><label for="GDB"><input type="radio"
												name="payOnlineBank" id="GDB" value="GDB" /> <img
												src="http://s1.mi.com/images/payOnline_gfyh.gif" alt="" /></label></li>
										<li><label for="SPDB"><input type="radio"
												name="payOnlineBank" id="SPDB" value="SPDB" /> <img
												src="http://s1.mi.com/images/payOnline_pufa.gif" alt="" /></label></li>
										<li><label for="CEBBANK"><input type="radio"
												name="payOnlineBank" id="CEBBANK" value="CEBBANK" /> <img
												src="http://s1.mi.com/images/payOnline_gdyh.gif" alt="" /></label></li>
										<li><label for="SPABANK"><input type="radio"
												name="payOnlineBank" id="SPABANK" value="SPABANK" /> <img
												src="http://s1.mi.com/images/payOnline_payh.gif" alt="" /></label></li>
										<li><label for="CIB"><input type="radio"
												name="payOnlineBank" id="CIB" value="CIB" /> <img
												src="http://s1.mi.com/images/payOnline_xyyh.gif" alt="" /></label></li>
										<li><label for="CMBC"><input type="radio"
												name="payOnlineBank" id="CMBC" value="CMBC" /> <img
												src="http://s1.mi.com/images/payOnline_msyh.gif" alt="" /></label></li>
										<li><label for="BOB"><input type="radio"
												name="payOnlineBank" id="BOB" value="BOB" /> <img
												src="http://s1.mi.com/images/payOnline_bjyh.gif" alt="" /></label></li>
										<li><label for="CITIC"><input type="radio"
												name="payOnlineBank" id="CITIC" value="CITIC" /> <img
												src="http://s1.mi.com/images/payOnline_zxyh.gif" alt="" /></label></li>
										<li><label for="SDB"><input type="radio"
												name="payOnlineBank" id="SDB" value="SDB" /> <img
												src="http://s1.mi.com/images/payOnline_sfyh.gif" alt="" /></label></li>
										<li><label for="SHBANK"><input type="radio"
												name="payOnlineBank" id="SHBANK" value="SHBANK" /> <img
												src="http://s1.mi.com/images/payOnline_shyh.gif" alt="" /></label></li>
										<li><label for="BJRCB"><input type="radio"
												name="payOnlineBank" id="BJRCB" value="BJRCB" /> <img
												src="http://s1.mi.com/images/payOnline_bjnsyh.gif" alt="" /></label></li>
										<li><label for="NBBANK"><input type="radio"
												name="payOnlineBank" id="NBBANK" value="NBBANK" /> <img
												src="http://s1.mi.com/images/payOnline_nbyh.gif" alt="" /></label></li>
										<li><label for="HZCBB2C"><input type="radio"
												name="payOnlineBank" id="HZCBB2C" value="HZCBB2C" /> <img
												src="http://s1.mi.com/images/payOnline_hzyh.gif" alt="" /></label></li>
										<li><label for="SHRCB"><input type="radio"
												name="payOnlineBank" id="SHRCB" value="SHRCB" /> <img
												src="http://s1.mi.com/images/payOnline_shnsyh.gif" alt="" /></label></li>
										<li><label for="FDB"><input type="radio"
												name="payOnlineBank" id="FDB" value="FDB" /> <img
												src="http://s1.mi.com/images/payOnline_fcyh.gif" alt="" /></label></li>
									</ul>
								</dd>
							</dl>




						</div>
					</div>
					<div class="box-ft clearfix">
						<input type="submit" class="btn btn-primary" value="付款成功"
							id="payBtn" /> <span class="tip"></span>
					</div>
				</div>
			</form>
		</div>
		<!-- 支付弹框 -->
		<div class="modal hide to-pay-tip" id="toPayTip">
			<div class="modal-header">
				<span class="close" id="toPayTipClose"> <i class="iconfont">&#xe617;</i>
				</span>
				<h3>正在支付...</h3>
			</div>
			<div class="modal-body">
				<div class="pay-tip clearfix">
					<div class="fail">
						<h4>如果支付失败...</h4>
						<p>
							额度问题，推荐<a href="#" id="alipayTrigger">支付宝快捷支付 &gt;</a>
						</p>
						<p>
							其他问题，查看<a href="#">支付常见问题 &gt;</a>
						</p>
					</div>
					<div class="success">
						<h4>支付成功了</h4>
						<p>
							立即查看<a href="#" target="_blank">订单详情 &gt;</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<!-- 余额支付弹框 -->
		<div class="modal hide  balance-pay" id="balancePay">
			<div class="modal-body">
				<h3>
					账户余额支付：<span class="num"><em id="useCashAccountPayLeft">0.00</em>元</span>
				</h3>
				<p id="checkCodeTip">
					短信验证码已下发至您的手机<span class="num"></span>
				</p>
				<input type="text" name="verifycode" id="verifycode" class="input"
					placeholder="请输入验证码" /> <span class="send-again"
					id="sendAgain">重新发送<em></em></span>
				<p>
					<input type="button" value="确认支付" class="btn btn-primary"
						id="toPay" />
					<div class="select-other">
						<p>
							<span id="bankName"></span> <span class="num">49.00元</span>
						</p>

					</div>
					<a href="javascript:;" id="chooseOther">选择其他方式支付&gt;</a>
			</div>
		</div>
		<script src="js/base.min.js"></script>
		<script type="text/javascript" src="js/buyConfirm.js"></script>
	</div>
	<!--订单提交body部分结束-->
</body>
</html>
