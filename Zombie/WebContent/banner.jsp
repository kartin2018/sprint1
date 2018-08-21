<%@page import="entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css" />">
<script src="<c:url value="/js/jquery.2.2.4.min.js" />"></script>
<script src="<c:url value="/js/bootstrap.min.js" />"></script>
<title>Insert title here</title>
</head>
<body>
<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header navbar-brand">KartIn - <small>Luxury watches</small></div>
<%	User user = (User) session.getAttribute("User"); 
	if(user != null) { %>
	<ul class="nav navbar-nav">
		<li class="active">Hey <%= user.getUserName() %></li>
		<li><a href="logout.do">Logout</a></li>
	</ul>
<%	} else { %>
	<ul class="nav navbar-nav">
		<li class="active">Hi there</li> 
		<li><a href="home.jsp">Home</a></li>
	</ul>
<%	} %>

	<form action="search.do" class="navbar-form navbar-left" >
		<div class="form-group">
		<input name="keyword" placeholder="Search"> <input type="submit" value="Search">
		</div>
	</form>
</div>
</div>
</div>
</body>
</html>
