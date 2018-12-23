<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<link href="css/shop.css" type="text/css" rel="stylesheet" />
	<link href="skin/default/skin.css" rel="stylesheet" type="text/css"
		id="skin" />
	<link href="css/Sellerber.css" type="text/css" rel="stylesheet" />
	<link href="css/bkg_ui.css" type="text/css" rel="stylesheet" />
	<link href="font/css/font-awesome.min.css" rel="stylesheet"
		type="text/css" />
	<script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script src="js/layer/layer.js" type="text/javascript"></script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
	<script src="js/Sellerber.js" type="text/javascript"></script>
	<script src="js/shopFrame.js" type="text/javascript"></script>
	<script type="text/javascript" src="js/jquery.cookie.js"></script>
	<title>用户登录</title>
</head>
<body class="login-layout Reg_log_style">
	<div class="logintop">
		<span>欢迎后台管理界面平台</span>
		<ul>
			<li><a href="#">返回首页</a></li>
			<li><a href="#">帮助</a></li>
			<li><a href="#">关于</a></li>
		</ul>
	</div>
	<div class="loginbody">
		<div class="login-container">
			<div class="center">
				<img src="images/logo.png" />
			</div>
			<div class="space-6"></div>
			<div class="position-relative">
				<div id="login-box" class="login-box widget-box no-border visible">
					<div class="login-main">
						<div class="clearfix">
							<div class="login_icon">
								<img src="images/login_img.png" />
							</div>
							<form action="user.s" method="post">
								<input type="hidden" name="op" value="login" />
								<h4 class="title_name">
									<img src="images/login_title.png" />
								</h4>
								<fieldset>
									<ul>
										<li class="frame_style form_error"><label
											class="user_icon"></label> <input name="username" type="text"
											id="username" placeholder="用户名" value="${param.username}" />
										</li>
										<li class="frame_style form_error"><label
											class="password_icon"></label> <input name="userpwd"
											type="password" id="userpwd" placeholder="密码" /></li>

										<li class="frame_style form_error"><label
											class="Codes_icon"></label> <input type="text"
											id="Codes_text" name="code" placeholder="验证码" />
											<div class="Codes_region">
												<img src="imageServlet" width="100%" height="38px" />
											</div></li>
									</ul>
									<div class="space"></div>
									<div class="clearfix">
										<label class="inline"> <input type="checkbox"
											class="ace" name="checkbox" /> <span class="lbl">保存密码</span>
										</label> <label class="inline"> <input type="checkbox"
											class="ace" name="checkbox" /> <input type="submit"
											value="请确认登陆" />
										</label> <label class="inline"> <input type="checkbox"
											class="ace" name="checkbox" /> <a href="">刷新验证码</a>
										</label>
									</div>
									<div class="space-4"></div>
								</fieldset>
						</div>
						</form>
						<div class="social-or-login center">
							<span class="bigger-110">通知</span>
						</div>
						<div class="social-login ">
							为了更好的体验性，本网站系统不再对IE8（含IE8）以下浏览器支持，请见谅。</div>
					</div>
					<!-- /login-main -->
					<!-- /widget-body -->
				</div>
				<!-- /login-box -->
			</div>
			<!-- /position-relative -->
		</div>
	</div>
	<div class="loginbm">
		版权所有 2016 <a href=""></a>
	</div>
	<strong></strong>
</body>
</html>
<c:if test="${! empty msg }">
	<script type="text/javascript">
		alert('${msg}');
	</script>
</c:if>