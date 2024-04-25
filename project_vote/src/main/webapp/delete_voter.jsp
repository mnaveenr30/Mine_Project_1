<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.registration.voterDao"%>  
<jsp:useBean id="v" class="com.registration.voter"></jsp:useBean>  
<jsp:setProperty property="*" name="v"/>  
<% 
voterDao.delete_voter(v);
response.sendRedirect("view_all_voters.jsp");  
%>
</body>
</html>