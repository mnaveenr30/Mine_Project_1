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
<jsp:useBean id="v" class="com.admin.admin"></jsp:useBean>  
<jsp:setProperty property="*" name="v"/>  
  
<% 
int i=adminDao.save_vote(v);  
if(i>0){  
response.sendRedirect("vote_page.jsp");  
}else{  
	
response.sendRedirect("vote_error.jsp");  
}  
%>
</body>
</html>