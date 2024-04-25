<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.candidate.candidateDao"%>  
<jsp:useBean id="c" class="com.candidate.candidate"></jsp:useBean>  
<jsp:setProperty property="*" name="c"/>  
  
<%  
int i=candidateDao.save(c);  
if(i>0){  
response.sendRedirect("candidate_page.jsp");  
}else{  
	
response.sendRedirect("candidate-error.jsp");  
}  
%>
</body>
</html>