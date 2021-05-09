<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Generate the bill</title>
<link rel="stylesheet" type="text/css" href="css/style.css"/>
<link rel="stylesheet" type="text/css" href="css/style1.css"/>
</head>
<body>

<form  method="post" action="../BillServlet">
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
					<li ><a class="active" href="addboat.jsp"><i class="fa fa-globe" ></i>Add New Boat</a></li>
					<li><a href="listboat.jsp"><i class="fa fa-group"></i>List Boats</a></li>
					<li><a href="bill.jsp"><i class="fa fa-trophy"></i>Billing for Boats</a></li>
					<li><a  href="updateboat.jsp"><i class="fa fa-certificate"></i>Update Boats</a></li>
					<li><a href="deleteboat.jsp"><i class="fa fa-certificate"></i>Remove Boats</a></li>
					</ul>
			
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
<h2>Bill Details</h2>
Please provide boat details to use this website
<br>
<br>
<div id="login-box-name" style="margin-top:20px;">Boat Id:</div>
<div id="login-box-field" style="margin-top:20px;">
<input name="boatId" class="form-login" title="BoatID" value="" size="30" maxlength="50" />
</div>
<div id="login-box-name">Time Taken:</div><br>
<div id="login-box-field">
<input name="Time" type="text" class="form-login" title="TimeTaken" value="" size="30" maxlength="48" />
</div>
<div id="login-box-name">Processed Capacity:</div><br>
<div id="login-box-field">
<input name="LoadCapacity" type="text" class="form-login" title="Capacity" value="" size="30" maxlength="48" />
</div>
<br />
<br />
<span class="login-box-options">
</span>
<br />
<br />
<input style="margin-left:100px;" type="submit" name="submit" value="Generate the Bill" />
</div>
</div>
</form>
</body>
</html>