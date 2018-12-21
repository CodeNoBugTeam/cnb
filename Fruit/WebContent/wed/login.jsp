<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>用户登录注册界面</title>
	<link rel="stylesheet" type="text/css" href="css/styles.css">
	  <link rel="stylesheet" href="css/jigsaw.css">
	  <style>
	  	
	  	  #msg {
      width: 100%;
      line-height: 40px;
      font-size: 14px;
      text-align: center;
    }
	  </style>
</head>
<body>
	<div class="jq22-container" style="padding-top:100px">
		<div class="login-wrap">
			<div class="login-html">
				<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">登录</label>
				<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">注册</label>
				<div class="login-form">
				<form action="../userLogin.s" method="post">
				<input type="hidden" name="op" value="login"/>
					<div class="sign-in-htm">
						<div class="group">
							<label for="user" class="label">用户名</label>
							<input id="username" name="username" value="${uname}" type="text" class="input" value="${param.username}">
						</div>
						<div class="group">
							<label for="pass" class="label">密码</label>
							<input id="password" name="password" type="password" class="input" data-type="password">
						</div>
						<div class="group">
							<div class="container">
							    <div id="captcha" style="position: relative" data-type="password"></div>
								<div id="msg"></div>
							</div>
						</div>
						<div class="group">
							<input id="check" type="checkbox" class="check" name="checkbox" checked>
							<label for="check"><span class="icon"></span> 保持登录</label>
						</div>						
						<div class="group">
							<input type="submit" class="button"  value="登录" >
						</div>
						<div class="hr"></div>
						<div class="foot-lnk">
							<a href="#forgot">忘记密码?</a>
						</div>
					</div>
					</form>
					<form action="../web.s" method="post">
					<input type="hidden" name="op" value="register"/>
					<div class="sign-up-htm">
						<div class="group">
							<label for="user" class="label">用户名</label>
							<input id="uname" name="uname" type="text" class="input">
						</div>
						<div class="group">
							<label for="user" class="label">真实姓名</label>
							<input id="truename" name="truename" type="text" class="input">
						</div>
						<div class="group">
							<label for="user" class="label">电话</label>
							<input id="utel" name="utel" type="text" class="input">
						</div>
						<div class="group">
							<label for="user" class="label">邮箱</label>
							<input id="email" name="email" type="text" class="input">
						</div>
						<div class="group">
							<label for="pass" class="label">地址</label>
							<input id="uaddress" name="uaddress" type="text" class="input">
						</div>
						<div class="group">
							<label for="pass" class="label">密码</label>
							<input id="upwd" name="upwd" type="password" class="input" data-type="password">
						</div>
						<div class="group">
							<label for="pass" class="label">重复密码</label>
							<input id="repassword" name="repassword" type="password" class="input" data-type="password">
						</div>
						<div class="group">
							<a href="register.html"><input type="submit" class="button" value="注册"></a>
						</div>
						<div class="hr"></div>
						<div class="foot-lnk">
							<label for="tab-1">已经成员?</a>
						</div>
					</div>
					</form>
				</div>
			</div>
		</div>
	</div>	
	<script src="js/jigsaw.js"></script>
<script>
	/* var flag=false;	
	function sub(){
		var name=document.getElementById('username').value;
		var pass=document.getElementById('password').value;
		var cname="admin";
		var cpass="123";
		if(name==cname && pass==cpass && flag==true){
		alert("登录成功!")
			//window.location.href="#";
		}else{
			if(flag==false){
				alert("验证失败!")
				return;
			}
			alert("用户名或密码错误!")
		}
			}
 	 jigsaw.init(document.getElementById('captcha'), function () {
  	 flag=true;
    document.getElementById('msg').innerHTML = '登录成功！'  
  }) */
</script>
</body>
</html>
	<c:if test="${! empty msg }">
		<script type="text/javascript">
			alert('${msg}');
		</script>
	</c:if>