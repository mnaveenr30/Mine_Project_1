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
int i=voterDao.save(v);  
if(i>0){  
response.sendRedirect("vote_home_after_register.jsp");  
}else{  
response.sendRedirect("addvoter-error.jsp");  
}  
%>
</body>
</html>