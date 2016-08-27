<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="f"  uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="/Vote/"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>注   册</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
</head>
<body>
<div id="header" class="wrap">
	<img src="images/logo.gif" />
</div>
<div id="navbar" class="wrap">
	<div class="search">
	</div>
</div>
<div id="register" class="box">
	<h2>新用户注册</h2>
	<div class="content">
	  <%--  <form method="post" action="user/register">
			<dl>
				<dt>用户名：</dt>
				<dd><input type="text" class="input-text" name="vuUsername" value="zj"/></dd>
				<dt>密码：</dt>
				<dd><input type="password" class="input-text" name="vuPassword" value="a"/></dd>
				<dt>确认密码：</dt>
				<dd><input type="password" class="input-text" name="confirmPassword" value="a"/></dd>
				<dt></dt>
				<dd><input type="submit" class="input-button" name="submit" value="" /></dd>
			</dl>
		</form> --%>
		<f:form method="post" action="user/register" modelAttribute="user">
			<dl>
				<dt>用户名：</dt>
				<dd>
					<f:input  path="vuUsername" class="input-text" name="vuUsername" required="required" placeholder="请输入用户名"/>
					<f:errors path="vuUsername" cssClass="error"/>
				</dd>
				<dt>密码：</dt>
				<dd>
					<f:password path="vuPassword" class="input-text" name="vuPassword" required="required" placeholder="请输入密码"/>
					<f:errors path="vuPassword" cssClass="error"/>	
				</dd>
				<dt>确认密码：</dt>
				<dd>
					<f:password path="confirmPassword" class="input-text" name="confirmPassword" required="required" placeholder="请确认密码"/>
					<f:errors path="confirmPassword" cssClass="error"/>	
				</dd>
				<dt>电子邮箱：</dt>
				<dd>
					<f:input  path="vuEmail" class="input-text" name="vuEmail" required="required" placeholder="请输入电子邮箱"/>
					<f:errors path="vuEmail" cssClass="error"/>
				</dd>
				<dt></dt>
				<dd><input type="submit" class="input-button" value="" /></dd>
			</dl>
		</f:form>
		<div class="error">${errorMessage}</div>
	</div>
</div>
<div id="footer" class="wrap">
	源辰信息 &copy; 版权所有
</div>
</body>
</html>
