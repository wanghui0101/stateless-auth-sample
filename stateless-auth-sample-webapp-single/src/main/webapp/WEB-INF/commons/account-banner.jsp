<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ include file="../commons/taglibs.jsp" %>
<shiro:notAuthenticated>
	<a href="${ctx}/login">登录</a>
</shiro:notAuthenticated>
<shiro:authenticated>
	欢迎您，<shiro:principal property="name" />。<a href="${ctx}/logout">登出</a>
	<div>
		<a href="${ctx}">主页</a>
		<a href="${ctx}/usercenter">用户中心</a>
	</div>
</shiro:authenticated>