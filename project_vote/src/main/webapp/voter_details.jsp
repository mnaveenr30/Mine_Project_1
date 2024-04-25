<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Voter details</title>
</head>
<style>
    body{
        font-family: sans-serif;
    }
    .voter-main-body{
        margin-left: 15%;
    }
    .data-container{
        padding: 5px 50px;
    }
    .head-container{
        padding: 10px 25px;
        font-weight: bold;
    }
    .header{
        margin-left: 45%;
    }
    .registration-main-header{
    display: grid;
    grid-template-columns: 1fr 1fr 1fr;
    margin-top: 2%;
}
    .header-image{
    width: 20%;
    margin-left: 3%;
}
.header-text{
    font-size: 30px;
    font-weight: bold;
    margin-left: 28%;
    margin-right: 13%;
    border-bottom: 1.5px solid orangered;
}
.home-icon{
    margin-left: 60%;
    padding: 4% 5%;
    text-decoration: none;
    color: black;
    border-radius: 50%;
}
.home-icon1{
    padding: 4% 5%;
    text-decoration: none;
    color: black;
    border-radius: 50%;
}
.data-container p{
border-bottom: 1px solid gray;
padding-bottom: 10px;
}
</style>
<body>
<%@page import="com.registration.voterDao,com.registration.voter"%>    
<%  
String reg_voter_id=request.getParameter("reg_voter_id");  
voter v=voterDao.getRecordByVoterId(reg_voter_id); 
%> 
    <div class="registration-main-header">
        <div>
            <div>
                <img class="header-image" src="Vote-PNG-Photos.png" alt="">
            </div>
        </div>
        <div><div>
            <p class="header-text">VOTER DETAILS</p>
        </div>
        </div>
        <div>
            <div>
                <a class="home-icon" href="vote_home.html"><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-house-door-fill" viewBox="0 0 16 16">
                    <path d="M6.5 14.5v-3.505c0-.245.25-.495.5-.495h2c.25 0 .5.25.5.5v3.5a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5"/>
                  </svg></a>
                  <a class="home-icon1" href="#"><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-info-circle-fill" viewBox="0 0 16 16">
                    <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16m.93-9.412-1 4.705c-.07.34.029.533.304.533.194 0 .487-.07.686-.246l-.088.416c-.287.346-.92.598-1.465.598-.703 0-1.002-.422-.808-1.319l.738-3.468c.064-.293.006-.399-.287-.47l-.451-.081.082-.381 2.29-.287zM8 5.5a1 1 0 1 1 0-2 1 1 0 0 1 0 2"/>
                  </svg></a>
            </div>
        </div>
    </div>
    <div class="voter-main-body">
                <table>
                    <tr>
                        <td class="head-container">
                            <label for="voter-reg-no">Registration ID</label></td>
                        <td class="data-container">
                            <p><%=v.getReg_id() %></p>
                        </td>
                    </tr>
                    <tr>
                        <td class="head-container">
                            <label for="voter-reg-no">Voter Registration Number</label></td>
                        <td class="data-container">
                            <p><%=v.getReg_voter_id() %></p>
                        </td>
                    </tr>
                    <tr>
                        <td class="head-container">
                            <label for="Name">Name</label></td>
                        <td class="data-container">
                           <p><%=v.getReg_frist_name() %> <%=v.getReg_last_name() %></p>
                        </td>
                    </tr>
                    <tr>
                        <td class="head-container">
                            <label for="dob">Date of birth</label></td>
                        <td class="data-container">
                            <p><%=v.getReg_date_of_birth() %></p>
                        </td>
                    </tr>
                    <tr>
                        <td class="head-container">
                            <label for="Gender">Gender</label></td>
                        <td class="data-container">
                            <p><%=v.getReg_gender() %></p>
                        </td>
                    </tr>
                    <tr>
                        <td class="head-container">
                            <label for="Aadhar no">Aadhar no</label></td>
                        <td class="data-container">
                            <p><%=v.getReg_aadhar_no() %></p>
                        </td>
                    </tr>
                    <tr>
                        <td class="head-container">
                            <label for="Mobile-number">Mobile number</label></td>
                        <td class="data-container">
                            <p><%=v.getReg_mobile_number() %></p>
                        </td>
                    </tr>
                    <tr>
                        <td class="head-container">
                            <label for="address">Address</label></td>
                        <td class="data-container">
                            <p><%=v.getReg_door_no() %>, <%=v.getReg_village() %>, <%=v.getReg_panchayat() %>, <%=v.getReg_mandal() %>, <%=v.getReg_constituency() %><%=v.getReg_district() %><%=v.getReg_state() %> - <%=v.getReg_pin_code() %></p>
                        </td>
                    </tr>
                </table>
    </div>
</body>
</html>