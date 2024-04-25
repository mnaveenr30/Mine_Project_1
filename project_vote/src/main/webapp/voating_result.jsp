<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Voating Result</title>
</head>
<style>
    body {
   font-family: "Trebuchet MS", "Lucida Sans Unicode", "Lucida Grande",
  "Lucida Sans", Arial, sans-serif;
     padding: 0;
      background-repeat: no-repeat;
      background-size: cover;
      background: linear-gradient(
        120deg,
        rgba(255, 0, 0, 0.516),
        rgb(225, 159, 35),
        rgba(255, 68, 0, 0.845),
        rgba(255, 68, 0, 0.845)
      );
      height: 100vh;
      overflow: hidden;
  }

.from-container1{
display:center;
margin-top:4%;
margin-left:25%
}
.title1{
font-size:25px;
color:white;
font-weight:bolder;
margin-left:20%;
}
th{
padding:10px 20px;
background-color:white;
color:orangered;
}
.tr td{
padding:10px 20px;
background-color:#f9f9f99e;
color:black;
}
::placeholder{
color:white;}
</style>
<body>
<%@page import="com.admin.adminDao,com.admin.admin,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%  
List<admin> list=adminDao.getAllCandidates1();
 request.setAttribute("list",list);  
%> 
<div class="from-container1"> 
<h1 class="title1">Voating Result</h1>
        <table  class="all-details-form" class="ft1">  
            <tr><th>Vote Count</th> <th>Voter ID</th> <th>Candidate Code</th><th>Election Code</th>    </tr>  
            <c:forEach items="${list}" var="c">  
            <tr class="tr"><td>${c.getVote_count()}</td><td>${c.getVoter_id()}</td><td>${c.getCandidate_code()}</td><td>${c.getElection_code()}</td></c:forEach>  
            </table> 
    </div>
</div>
</div>
</div>
</body>
</html>