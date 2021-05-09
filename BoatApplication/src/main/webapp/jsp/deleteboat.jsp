<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.Date"%>
<%@page import="demo.model.User"%>
<!DOCTYPE html>
<html>
<head>
<title>Remove the Boats</title>
<link rel="stylesheet" type="text/css" href="css/style.css"/>
<link rel="stylesheet" type="text/css" href="css/style1.css"/>
</head>
<body>

<form method="post" action="../BoatServlet">
<div class="container" style="float: left;width: 39.33%;">
<nav>
		<ul class="mcd-menu">
			<li>
				<a href="home.jsp">
					<i class="fa fa-home"></i>
					<strong>Home</strong>
				</a>
			</li>
			<li>
				<a href="about.html" >
					<i class="fa fa-edit"></i>
					<strong>About us</strong>
				</a>
			</li>
			<li>
				<a class="active">
					<i class="fa fa-gift"></i>
					<strong>Portal</strong>
				</a>
					<ul>
					<li ><a href="addboat.jsp"><i class="fa fa-globe" ></i>Add New Boat</a></li>
					<li><a href="listboat.jsp"><i class="fa fa-group"></i>List Boats</a></li>
					<li><a href="bill.jsp"><i class="fa fa-trophy"></i>Billing for Boats</a></li>
					<li><a href="updateboat.jsp"><i class="fa fa-certificate"></i>Update Boats</a></li>
					<li><a class="active" href="deleteboat.jsp"><i class="fa fa-certificate"></i>Remove Boats</a></li></ul>
			
			<li>
				<a href="">
					<i class="fa fa-envelope-o"></i>
					<strong>Contacts</strong>
					
				</a>
			</li>
		</ul>
	</nav>
</div>
<div style="float: left;width: 39.33%;padding: 50px 50px 50px;align-content: center;">
<div id="login-box" style="padding: 50px 50px;align-content: center;margin-top:7.5px;">
<h2>Boat Details</h2>
Remove the Records of Boat
<br>
<br>
<div id="login-box-name" style="margin-top:20px;">Boat Id:</div>
<div id="login-box-field" style="margin-top:20px;">
<input name="boatId" class="form-login" title="Boatid" value="" size="30" maxlength="50" />
</div>

<input type="hidden" name="choice" value="delete"/>
<br />
<span class="login-box-options">
</span>
<br />
<br />
<input style="margin-left:100px;" type="submit" name="submit" value="Search and Remove" />
</div>
</div>
</form>
<div id="container" align="center" style=margin-bottom:0>
         <h1>Remove page</h1>
             <br/>
             <%=new Date()%><br>
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