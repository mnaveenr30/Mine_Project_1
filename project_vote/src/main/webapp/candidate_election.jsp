<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
    body{
        font-family: sans-serif;
    }
    .candidate-details{
        padding: 30px 30px;
      border: 2px solid gray;
       margin-left: 10%;
       margin-right: 15%;
       margin-top: 2%;
    }
    .container{
        display: grid;
        grid-template-columns: 1fr 1fr;
    }
    .detail-header{
        font-weight: bolder;
        padding:4px 20px;
    }
    .title-of-candidate{
        border-bottom: 1.5px solid orangered;
        text-align: center;
    }
</style>
<body>
<%@page import="com.candidate.candidateDao,com.candidate.candidate,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%  
List<candidate> list=candidateDao.getAllCandidates();
request.setAttribute("list",list);  
%>   
<%@page import="com.election.electionDao,com.election.election,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="e"%> 
<%  
List<election> list1=electionDao.getAllElections1();
request.setAttribute("list1",list1);  
%> 
  <div class="container">
        <div class="candidate">
            <h1 class="title-of-candidate">CANDIDATE DETAILS</h1>
            <div> <c:forEach items="${list}" var="c">  
                <div class="candidate-details">
                <table>
                    <tr>
                    <td class="detail-header">Candidate Code</td>
                    <td>${c.getCandidate_code()}</td>               
                    </tr>
                     <tr>
                    <td class="detail-header">Candidate Name</td>
                    <td>${c.getCandidate_name()}</td>               
                    </tr>
                     <tr>
                    <td class="detail-header">Party name</td>
                    <td>${c.getParty_name()}</td>               
                    </tr>
                     <tr>
                    <td class="detail-header">Election code</td>
                    <td>${c.getElection_code()}</td>               
                    </tr>
                </table>
                </div>
                 </c:forEach></div>
        </div>
        <div>
            <div>
            <h1 class="title-of-candidate">ELECTION DETAILS</h1>
            <div> <c:forEach items="${list1}" var="e">  
                <div class="candidate-details">
                <table>
                    <tr>
                    <td class="detail-header">Election Id</td>
                    <td>${e.getElection_id()}</td>               
                    </tr>
                     <tr>
                    <td class="detail-header">Election code</td>
                    <td>${e.getElection_code()}</td>               
                    </tr>
                     <tr>
                    <td class="detail-header">Election name</td>
                    <td>${e.getElection_name()}</td>               
                    </tr>
                     <tr>
                    <td class="detail-header">Election date</td>
                    <td>${e.getElection_date()}</td>               
                    </tr>
                </table>
                </div>
                 </c:forEach></div>
            </div>
        </div>
     </div>
</body>
</html>