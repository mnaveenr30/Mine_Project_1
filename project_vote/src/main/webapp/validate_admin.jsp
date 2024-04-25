<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@page import="com.admin.adminDao"%>
	<jsp:useBean id="a" class="com.admin.admin"></jsp:useBean>
	<jsp:setProperty property="*" name="a" />
	<%
	boolean status = adminDao.validate_admin(a);
	if (status) {
		response.sendRedirect("vote_admin_page.html");
	} else {
		response.sendRedirect("vote_admin_login.jsp");
	}
	%>
</body>
</html>