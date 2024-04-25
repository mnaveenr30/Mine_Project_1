<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@page import="com.signup.bean.signupDao"%>
	<jsp:useBean id="u" class="com.signup.bean.signup"></jsp:useBean>
	<jsp:setProperty property="*" name="u" />
	<%
	boolean status = signupDao.validate(u);
	
	if (status) {
		 response.sendRedirect("login_alert.jsp");
	} else {
		response.sendRedirect("login_error_alert.jsp");
	}
	%>
</body>
</html>