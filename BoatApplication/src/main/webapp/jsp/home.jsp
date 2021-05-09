<%@page import="java.util.List"%>
<%@page import="demo.service.LoginService"%>
<%@page import="java.util.Date"%>
<%@page import="demo.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     <link rel="stylesheet" type="text/css" href="css/style.css"/>
     <title>Welcome to the Port</title>
</head>
<body>

<div class="container" style="float: left;width: 39.33%;">

<nav>
		<ul class="mcd-menu">
			<li>
				<a class="active">
					<i class="fa fa-home"></i>
					<strong>Home</strong>
				</a>
			</li>
			<li>
				<a href="#" >
					<i class="fa fa-edit"></i>
					<strong>About us</strong>
				</a>
				<ul style=width: 39.33% >
					<li style="color:#999663;align:center"><i class="fa fa-globe" ></i><h2 style="color:#ff9900;">We do</h2><br>Our business our oceans and seas we connect throughout the world.</li></ul>
			</li>
			<li>
				<a href="#">
					<i class="fa fa-gift"></i>
					<strong>Portal</strong>
				</a>
					<ul>
					<li ><a href="addboat.jsp"><i class="fa fa-globe" ></i>Add New Boat</a></li>
					<li><a href="listboat.jsp"><i class="fa fa-group"></i>List Boats</a></li>
					<li><a href="bill.jsp"><i class="fa fa-trophy"></i>Billing for Boats</a></li>
					<li><a href="updateboat.jsp"><i class="fa fa-certificate"></i>Update Boats</a></li>
					<li><a href="deleteboat.jsp"><i class="fa fa-certificate"></i>Remove Boats</a></li></ul>
			
			<li>
				<a href="">
					<i class="fa fa-envelope-o"></i>
					<strong>Contacts</strong>
					
				</a>
			</li>
		</ul>
	</nav>
</div>
<div id="content" style="align-content:cover;color:white ">

<h1 style="margin-top:100px;margin-left: 300px">Welcome to the sail,<br>We make great deals over the world</h1>


</div>


     <div id="container" align="center" style=margin-bottom:0>
         <h1>You're Online now</h1>
             <br/>
             <%=new Date()%></br>
             <%
                 User user = (User) session.getAttribute("user");
             %>     
             <b>Welcome <%= user.getAdminName()%></b>     
             <br/>
             <a href="logout.jsp">Logout</a>

 
       
         <br/>
     </div>
</body>
</html>