<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.election.electionDao"%>  
<jsp:useBean id="e" class="com.election.election"></jsp:useBean>  
<jsp:setProperty property="*" name="e"/>  
<% 
electionDao.delete_election(e);
response.sendRedirect("election_page.jsp");  
%>
</body>
</html>