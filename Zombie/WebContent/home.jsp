<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css" />">
<script src="<c:url value="/js/jquery.2.2.4.min.js" />"></script>
<title>Insert title here</title>
</head>
<body>
<jsp:include page="banner.jsp" /> 
<div class="container" style="margin-top:50px">
<hr>
<form action="login.do">
	<div class="alert alert-warning">${Prompt}</div>
	<table class="table table-bordered">
		<tr><th colspan="2">Login Screen</th></tr>
		<tr><td>Email ID</td>
			<td><input name="email" required></td></tr>
		<tr><td>Password</td>
			<td><input type="password" name="password" required></td></tr>
		<tr><th colspan="2"><input type="submit" value="Login"></th></tr>
		<tr><th colspan="2">Need help! <a href="forget.jsp">Forget Password</a></th></tr>
		<tr><th colspan="2">New user! <a href="register.jsp">Register NOW</a></th></tr>
	</table>
</form>
</div>
</body>
</html>