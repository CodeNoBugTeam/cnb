<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="Author" contect="http://www.webqin.net">
<title>忘记密码</title>
<link rel="shortcut icon" href="images/favicon.ico" />
<link type="text/css" href="css/css.css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-1.8.3-min.js"></script>
<script type="text/javascript">
	//导航定位
	$(function() {
		// $(".nav li:eq(2) a:first").addClass("navCur")
		//验证手机 邮箱 
		$(".selyz").change(function() {
			var selval = $(this).find("option:selected").val();
			if (selval == "0") {
				$(".sel-yzsj").show()
				$(".sel-yzyx").hide()
			} else if (selval == "1") {
				$(".sel-yzsj").hide()
				$(".sel-yzyx").show()
			}
		})
	})
</script>
</head>
<body>
	<div class="content">
		<div class="web-width">
			<div class="for-liucheng">
				<div class="liulist for-cur"></div>
				<div class="liulist for-cur"></div>
				<div class="liulist"></div>
				<div class="liulist"></div>
				<div class="liutextbox">
					<div class="liutext for-cur">
						<em>1</em><br />
						<strong>填写账户名</strong>
					</div>
					<div class="liutext for-cur">
						<em>2</em><br />
						<strong>验证身份</strong>
					</div>
					<div class="liutext">
						<em>3</em><br />
						<strong>设置新密码</strong>
					</div>
					<div class="liutext">
						<em>4</em><br />
						<strong>完成</strong>
					</div>
				</div>
			</div>
			<!--for-liucheng/-->
			<form action="forgetPwd.s" method="post" class="forget-pwd">
				<input type="hidden" name="op" value="forgetPwd2" />
				<dl>
					<dt>验证方式：</dt>
					<dd>
						<select class="selyz">
							<option value="1">已验证邮箱</option>
						</select>
					</dd>
					<div class="clears"></div>
				</dl>
				<dl class="sel-yzyx">
					<dt>已验证邮箱：</dt>
					<dd>
						<input type="text" name="mail" id="userMail" />
					</dd>
					<div class="clears"></div>
				</dl>
				<dl>
					<dt>邮箱校验码：</dt>
					<dd>
						<input type="text" name="mymail" />
						<button id="getCode" type="button">获取邮箱验证码</button>
					</dd>
					<div class="clears"></div>
				</dl>
				<div class="subtijiao">
					<input type="submit" value="提交" />
				</div>
			</form>
			<!--forget-pwd/-->
		</div>
		<!--web-width/-->
	</div>
	<!--content/-->
</body>
<script type="text/javascript">
	$(function() {
		$("#getCode").click(function() {
			//alert(1);
			var name = $(this);
			var email = $("#userMail").val();

			$.ajax({
				type : "POST",
				url : "forgetPwd.s?op=getCode",
				cache : false,
				data : "email=" + email,
				success : function(data) {
					var data = JSON.parse(data);

					$("#userMail").val(data.email);
				}
			});
		});
	});
</script>
</html>
<c:if test="${! empty msg }">
	<script type="text/javascript">
		alert('${msg}');
	</script>
</c:if>