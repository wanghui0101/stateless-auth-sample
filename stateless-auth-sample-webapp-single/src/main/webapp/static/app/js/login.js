$(document).ready(function() {
	$("input[name=captcha]").keypress(function(e) {
		if (e.which == 13) {
			doLogin();
		}
	});
	
	$("#login-btn").click(function() {
		doLogin();
	});
	
	var doLogin = function() {
		if (checkForm()) {
			$("#login-form").ajaxSubmit(function(result) {
				if (result.success) {
					var redirectUrl = result.data;
					console.log(redirectUrl);
					window.location.href = redirectUrl;
				} else {
					alert(result.msg);
					$("#captcha-img").click();
				}
			});
		}
	};
	
	var checkForm = function() {
		var $username = $("input[name=username]");
		var $password = $("input[name=password]");
		var $captcha = $("input[name=captcha]");
		
		if ($username.val() === "") {
			alert("用户名不能为空！");
			$username.focus();
			return false;
		}
		
		if ($password.val() === "") {
			alert("密码不能为空！");
			$password.focus();
			return false;
		}
		
		if ($captcha.val() === "") {
			alert("验证码不能为空！");
			$captcha.focus();
			return false;
		}
		
		return true;
	}
});