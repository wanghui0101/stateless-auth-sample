<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ include file="../commons/taglibs.jsp" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>${appname} - 登录</title>
		<c:import url="../commons/header.jsp" />
	</head>
	
	<body>
		<form id="login-form" action="${ctx}/login" method="post">
			<table>
				<tr>
					<td>用户名：</td>
					<td>
						<input type="text" name="username" maxlength="20" />
					</td>
				</tr>
				<tr>
					<td>密码：</td>
					<td>
						<input type="password" name="password" maxlength="20" />
					</td>
				</tr>
				<tr>
					<td>验证码：</td>
					<td>
						<input type="hidden" name="captchaToken" value="${captchaToken}" />
						<input type="text" name="captcha" maxlength="4" />
						<img id="captcha-img" src="${ctx}/captcha?captchaToken=${captchaToken}" onclick="this.src='${ctx}/captcha?captchaToken=${captchaToken}&d='+new Date().getTime()" style="cursor: pointer" />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<button id="login-btn" type="button">登录</button>
					</td>
				</tr>
			</table>
		</form>
	</body>
	<script type="text/javascript" src="${app}/js/login.js"></script>
</html>