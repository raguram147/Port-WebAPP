<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>
    <%@page import="demo.model.Boat"%>
    <%@page import="demo.service.BoatService"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of Boats</title>
     <link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>
<body>
<div class="container"style="float: left;width: 39.33%;">
<nav>
		<ul class="mcd-menu">
			<li>
				<a class="active">
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
 <div>
	  <%BoatService bs=new BoatService();
	  	List<Boat> boat = bs.getListOfBoats();
		if(boat.size()!=0){
		%>
		<h2 style="color:white;padding:20px;">List of the Boats<span>&#8608;</span></h2>
		<table cellpadding = "10"  cellspacing = "15">
		
		<tr style=color:white><th> BoatID</th> <th>Boat Name</th><th>Boat Capacity</th></tr>
		<% 
			for(Boat b: boat){
				%>
                 <tr style=color:white><td> <%=b.getBoatId() %></td> <td><%=b.getBoatName() %></td><td><%=b.getBoatCap() %></td></tr>
				<%
			}
		}
		%>
		</table>
		</div>
</body>
</html>