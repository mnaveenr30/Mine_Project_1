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
int i=electionDao.save(e);  
if(i>0){  
response.sendRedirect("election_page.jsp");  
}else{  
	
response.sendRedirect("election_error.jsp");  
}  
%>
</body>
</html>