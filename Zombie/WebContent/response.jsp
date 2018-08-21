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
<h1>Share Your Response</h1><hr size="1" color="crimson">
<table class="table table-bordered">
	<tr><th colspan="2">${Question.query}</th></tr>
	<c:if test="${User != null}">
		<form action="comment.do" method="post">
			<tr><td colspan="2">
				<textarea class="form-control" name="response" rows="5" cols="30"></textarea></td>
			</tr>
			<tr><td colspan="2"><input type="submit" value="Respond"></td></tr>
		</form>
	</c:if>
	<c:forEach items="${ Question.comments }" var="cmnt">
		<tr><td>${cmnt.user.userId}</td>
			<td>${cmnt.response}</td>
		</tr>
	</c:forEach>
</table>
</div>
</body>
</html>
