<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="vote_signup_login.jsp"></jsp:include>
<script>
<%
out.println("alert('username already taken......!')");
%>
</script>
</body>
</html>