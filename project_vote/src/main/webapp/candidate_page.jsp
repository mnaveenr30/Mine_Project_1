<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
.form-container{
    margin-left: 5%;
}
.register-input{
    border-bottom: 1px solid white;
}
.register-input input{
    border: none;
    outline: none;
    float: left;
}
.register-table td{
padding: 2px 60px;
padding-top: 5%;
}
.registration-headers{
    text-align: center;
    font-size: 20px;
    font-weight:bolder;
}
.register-text{
    border-bottom: 2px solid orangered;
    margin-top: 5%;
    margin-left: 35%;
    margin-right: 35%;
}
.registration-main-header{
    display: grid;
    grid-template-columns: 1fr 1fr 1fr;
    margin-top: 4%;
}

.header-text{
    font-size: 30px;
    font-weight: bold;
}

.registration-sub-btn{
    margin-left: 42%;
}
.registration-sub-btn button{
    background-color: orangered;
    border: none;
    font-size: 20px;
    border-radius: 30px;
    color: white;
    padding: 2% 10%;
}
.input-header{
float: left;
color:white;
font-weight:bolder;
}
.container{
display:grid;
  grid-template-columns: 1fr 1fr;
  margin-top:6%;
}
.title{
text-align:center;
font-size:25px;
color:white;
font-weight:bolder;
}
.from-container1{
margin-top:4%;
margin-left:8%
}
.title1{
font-size:25px;
color:white;
font-weight:bolder;
margin-left:10%;
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
input{
    border: 1px solid transparent;
    background: transparent;
    appearance: unset;
}
::placeholder{
color:white;}
</style>
<body>
<%@page import="com.candidate.candidateDao,com.candidate.candidate,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%  
List<candidate> list=candidateDao.getAllCandidates();
request.setAttribute("list",list);  
%> 
<div class="container">
<div>
<div>
 <div class="form-container">
        <form action="add_candidate.jsp" method="post" >
            <table class="register-table">
            <tr>
            <td class="title" colspan="4" >ADD CANDIDATE</td>
            </tr>
                            <tr>
                    <td><p class="input-header">Candidate Code</p></td>
                    <td class="register-input">
                        <input type="text" placeholder="Enter the candidate code" name="candidate_code">
                    </td>
                </tr>
                <tr>
                    <td><p class="input-header">Candidate Name</p></td>
                    <td class="register-input">
                        <input type="text" placeholder="Enter the candidate name" name="candidate_name">
                    </td>
                </tr>
                <tr>
                    <td><p class="input-header">Party Name</p></td>
                    <td class="register-input">
                        <input type="text" placeholder="Enter the party name" name="party_name">
                    </td>
                </tr>
                   <tr>
                    <td><p class="input-header">Election ID</p></td>
                    <td class="register-input">
                        <input type="text" placeholder="Enter the election code" name="election_code">
                    </td>
                </tr>
                <tr>
                    <td colspan="2" >
                        <div class="registration-sub-btn">
                            <button type="submit">Add Candidate</button>
                        </div>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>
</div>
<div>
<div>
<div class="from-container1"> 
<h1 class="title1">ALL CANDIDATE'S</h1>
        <table  class="all-details-form" class="ft1">  
            <tr><th>Id</th> <th>Candidate code</th> <th>Name</th><th>Party Name</th><th>Election code</th><th>Remove</th>
            
            </tr>  
            <c:forEach items="${list}" var="c">  
            <tr class="tr"><td>${c.getCandidate_id()}</td><td>${c.getCandidate_code()}</td><td>${c.getCandidate_name()}</td><td>${c.getParty_name()}</td>  
            <td>${c.getElection_code()}</td><td><a href="delete_candidate.jsp?candidate_id=${c.getCandidate_id()}">Remove</a></td>
            </c:forEach>  
            </table> 
    </div>
</div>
</div>
</div>
</body>
</html>