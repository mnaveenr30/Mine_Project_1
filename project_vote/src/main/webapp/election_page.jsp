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
<%@page import="com.election.electionDao,com.election.election,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%  
List<election> list=electionDao.getAllElections();
request.setAttribute("list",list);  
%> 
<div class="container">
<div>
<div>
 <div class="form-container">
        <form action="add_election.jsp" method="post" >
            <table class="register-table">
            <tr>
            <td class="title" colspan="4" >ADD ELECTION</td>
            </tr>
                <tr>
                    <td><p class="input-header">Election code</p></td>
                    <td class="register-input">
                        <input type="text" placeholder="Enter the election code" name="election_code">
                    </td>
                </tr>
                <tr>
                    <td><p class="input-header">Election Name</p></td>
                    <td class="register-input">
                        <input type="text" placeholder="Enter the election name" name="election_name">
                    </td>
                </tr>
                   <tr>
                    <td><p class="input-header">Election Date</p></td>
                    <td class="register-input">
                        <input type="text" placeholder="Enter the election date" name="election_date">
                    </td>
                </tr>
                <tr>
                    <td colspan="2" >
                        <div class="registration-sub-btn">
                            <button type="submit">Post Election</button>
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
<h1 class="title1">ALL ELECTION'S</h1>
         <table  class="all-details-form" class="ft1">  
            <tr><th>Id</th><th>Election Code</th><th>Election Name</th><th>Election Date</th><th>Remove</th>
            
            </tr>  
            <c:forEach items="${list}" var="c">  
            <tr class="tr"><td>${c.getElection_id()}</td><td>${c.getElection_code()}</td><td>${c.getElection_name()}</td>  
            <td>${c.getElection_date()}</td><td><a href="delete_election.jsp?election_id=${c.getElection_id()}">Remove</a></td>
            </c:forEach>  
            </table> 
    </div>
</div>
</div>
</div>
</body>
</html>