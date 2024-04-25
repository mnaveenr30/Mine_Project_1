<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All voters list</title>
</head>
<style>
    body{
       font-family: "Trebuchet MS", "Lucida Sans Unicode", "Lucida Grande",
  "Lucida Sans", Arial, sans-serif;
      background-repeat: no-repeat;
      background-size: cover;
      background-color: rgba(255, 0, 0, 0.516);
      height: 100vh;
    }
    .from-container{
        margin-top: 1%;
    }
    table, th, td {
border: 1px solid black;
border-collapse: collapse;
    }
    th{
       padding:10px 20px;
       background-color:white;
       color:orangered;
    }
    td{
        padding:10px 20px;
        background-color:#f9f9f99e;
    }
    h1{
    text-align:center;
    color:white;
    }
    .search-form{
    margin-top:5%;
    margin-bottom:2%;
    }
    .search-form label{
        font-weight: bold;
    }
    .search-btn{
        background-color: orangered;
        color: white;
        border: none;
        margin-left: 5%;
        padding: 0.5% 2%;
        border-radius: 25px;
    }
        .add-btn{
        background-color: orangered;
        color: white;
        border: none;
        margin-left: 5%;
        padding: 0.5% 2%;
        border-radius: 25px;
        text-decoration:none;
    }

</style>
<body>
<%@page import="com.registration.voterDao,com.registration.voter,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<h1>ALL VOTER'S LIST</h1>  
      <div>
        <form class="search-form" action="voter_details.jsp" method="post">
            <label for="search">Enter voter id number</label>
            <input type="text" placeholder="Enter your voter id no" name="reg_voter_id"/>
            <input class="search-btn" type="submit" value="search"/>
            <a class="add-btn" href="voter_registration.jsp">Add Voter</a>
            </form>
    </div>
<%  
List<voter> list=voterDao.getAllVoters(); 
request.setAttribute("list",list);  
%>  
    <div class="from-container">
        <table  class="all-details-form">  
            <tr><th>Id</th><th>Frist name</th><th>Last name</th><th>Date of birth</th><th>Gender</th><th>Voter reg number</th><th>Aadhar no</th>
                <th>Mobile number</th><th>Email-ID</th><th>Door no</th><th>Village</th><th>Panchayat</th><th>Mandal</th>
                <th>Constituency</th><th>District</th><th>State</th><th>Pin code</th><th>Remove</th>
            </tr>  
            <c:forEach items="${list}" var="v">  
            <tr><td>${v.getReg_id()}</td><td>${v.getReg_frist_name()}</td><td>${v.getReg_last_name()}</td>  
            <td>${v.getReg_date_of_birth()}</td><td>${v.getReg_gender()}</td><td>${v.getReg_voter_id()}</td>
            <td>${v.getReg_aadhar_no()}</td><td>${v.getReg_mobile_number()}</td><td>${v.getReg_email_id()}</td>  
            <td>${v.getReg_door_no()}</td><td>${v.getReg_village()}</td><td>${v.getReg_panchayat()}</td>  
            <td>${v.getReg_mandal()}</td><td>${v.getReg_constituency()}</td><td>${v.getReg_district()}</td>
            <td>${v.getReg_state()}</td><td>${v.getReg_pin_code()}</td>    <td> <a href="delete_voter.jsp?reg_voter_id=${v.getReg_voter_id()}">Remove voter</a></td>

            </c:forEach>  
            </table> 
    </div>
</body>
</html>