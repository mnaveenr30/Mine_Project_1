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
<jsp:setProperty property="*" name="u"/>  
  
<%  
int i=signupDao.save(u);  
if(i>0){  
response.sendRedirect("vote_signup_login.jsp");  
} 
else{
response.sendRedirect("signup_alert.jsp");
}
%>
</body>
</html>