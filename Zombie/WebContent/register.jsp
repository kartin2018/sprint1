<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css" />">
<script src="<c:url value="/js/jquery.2.2.4.min.js" />"></script>
<script src="form-validation.js"></script>
<title>Insert title here</title>
</head>
<body>
<jsp:include page="banner.jsp" />
<div class="container" style="margin-top:50px">
<h1>User Registration</h1><hr size="3" color="crimson">
<form action="register.do"  onSubmit="return formValidation();" >
	<div class="alert alert-danger fade in">${Invalid}</div>
	<table class="table table-bordered">
	<tr><td>Name</td>
			<td><input type="text" name="userName"  id="userName" ></td></tr>
	<tr><td>Mobile Number</td>
			<td><input type="number" name="contact" id="contact"></td></tr>
	<tr><td>Email</td>
			<td><input type="email" name="email" id="email" ></td></tr>
		<tr><td>Password</td>
			<td><input type="password" name="password" id="password"></td></tr>
	<tr><td>Address</td>
			<td><input type="text" name="address" id="address"></td></tr>
	<tr><label for="city">City: <select name="city">
							<% String[] cities={"Mumbai","Pune","Banglore","Chennai","Goa"}; 
							for(String ct: cities){%>
							<option value = "<%=ct%>"><%=ct %></option>
							<% } %>
							</select>					
							<br></tr> 
	<!-- 	<tr><th colspan="2"><input type="button" value="Save"></th></tr> -->
		<tr><th colspan="2"><input type="submit" value="Register"></th></tr>
	</table>
</form>
</div>
</body>
</html>