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
<h1>My Feeds</h1><hr size="1" color="crimson">
<table class="table table-bordered">
	<tr>
		<th>Time</th><th>Query</th><th>Comments</th>
	</tr>
		<c:forEach items="${ Feeds }" var="feed">
		<tr>
			<td>${ feed.feedTime }</td>
			<td><a href="question.do?id=${feed.feedId}">${ feed.query }</a></td>
			<td>${ feed.totalCmnts }</td>
		</tr>
		</c:forEach>
</table>
</div>
</body>
</html>