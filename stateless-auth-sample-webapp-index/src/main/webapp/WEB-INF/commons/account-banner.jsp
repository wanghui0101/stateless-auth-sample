<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ include file="../commons/taglibs.jsp" %>
<shiro:notAuthenticated>
	<a href="http://localhost:8080/stateless-auth-sample-cas/login">登录</a>
</shiro:notAuthenticated>
<shiro:authenticated>
	欢迎您，<shiro:principal property="name" />。<a href="http://localhost:8080/stateless-auth-sample-cas/logout?redirect=http://localhost:8080/stateless-auth-sample-webapp-index">登出</a>
	<div>
		<a href="http://localhost:8080/stateless-auth-sample-webapp-index">主页</a>
		<a href="http://localhost:8080/stateless-auth-sample-webapp-usercenter/usercenter">用户中心</a>
	</div>
</shiro:authenticated>