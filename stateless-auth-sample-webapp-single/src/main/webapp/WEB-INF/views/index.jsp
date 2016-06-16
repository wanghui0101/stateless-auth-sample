<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ include file="../commons/taglibs.jsp" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>${appname} - 主页</title>
		<c:import url="../commons/header.jsp" />
	</head>
	
	<body>
		<c:import url="../commons/account-banner.jsp"></c:import>
		<div>主页</div>
		<shiro:hasPermission name="index:show:1">
			<div>内容1</div>
		</shiro:hasPermission>
		<shiro:hasPermission name="index:show:2">
			<div>内容2</div>
		</shiro:hasPermission>
		<shiro:hasPermission name="index:show:3">
			<div>内容3</div>
		</shiro:hasPermission>
		<shiro:hasPermission name="index:authz">
			<div>
				<a href="${ctx}/authz">需要授权的模块</a>
			</div>
		</shiro:hasPermission>
	</body>
	<script type="text/javascript" src="${app}/js/index.js"></script>
</html>