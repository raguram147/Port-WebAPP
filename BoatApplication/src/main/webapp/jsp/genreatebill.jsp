<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>
    <%@ page import = "java.io.*,java.util.*" %>
    <%@ page import = "javax.servlet.*,java.text.*" %>
    <%@page import="demo.model.Boat"%>
    <%@ page import="demo.service.BoatService" %>
    <%@ page import="demo.service.BillGenerate" %>
    <%@ page import="demo.model.Bill" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bill Receipt</title>
<style>
    body {
        font-family: sans-serif;
        font-size: 10pt;
        background:#006994;
    }

    p {
        margin: 0pt;
    }

    table.items {
        border: 0.1mm solid #e7e7e7;
    }

    td {
        vertical-align: top;
    }

    .items td {
        border-left: 0.1mm solid #e7e7e7;
        border-right: 0.1mm solid #e7e7e7;
    }

    table thead td {
        text-align: center;
        border: 0.1mm solid #e7e7e7;
    }

    .items td.blanktotal {
        background-color: #EEEEEE;
        border: 0.1mm solid #e7e7e7;
        background-color: #FFFFFF;
        border: 0mm none #e7e7e7;
        border-top: 0.1mm solid #e7e7e7;
        border-right: 0.1mm solid #e7e7e7;
    }

    .items td.totals {
        text-align: right;
        border: 0.1mm solid #e7e7e7;
    }

    .items td.cost {
        text-align: "."center;
    }
    </style>
</head>
<body>
<div>
	  <%BillGenerate bg=new BillGenerate();
	  
	  int boatId=(int)session.getAttribute("boatId");
	  Boat boat=	BoatService.getBoatbyBoatId(boatId);
	  Bill  bill = BillGenerate.getBill(boatId);
	  System.out.println(bill.getAmount());
		//if(boat!=null){
		%>
</div>
<table width="100%" style="font-family: sans-serif;" cellpadding="10">
        <tr>
            <td width="100%" style="padding: 0px; text-align: center;">
              <a href="#" target="_blank"><img src="images/logo.png" width="264" height="150" alt="Logo" align="center" border="0"></a>
            </td>
        </tr>
        <tr>
            <td width="100%" style="text-align: center; font-size: 20px; font-weight: bold; padding: 0px;">
              INVOICE
            </td>
        </tr>
        <tr>
          <td height="10" style="font-size: 0px; line-height: 10px; height: 10px; padding: 0px;">&nbsp;</td>
        </tr>
    </table>
    <table width="100%" style="font-family: sans-serif;" cellpadding="10">
        <tr>
           
            <td width="2%">&nbsp;</td>
            <td width="49%" style="border: 0.1mm solid #eee; text-align: right;"><strong>Chennai Port Ltd</strong><br>Chennai-600 001<br>India<br><br><strong>Telephone:</strong> (044)333 333<br><br></td>
        </tr>
    </table>
    <br>
    <table width="100%" style="font-family: sans-serif; font-size: 14px;" >
        <tr>
            <td>
                <table width="60%" align="left" style="font-family: sans-serif; font-size: 14px;" >
                    <tr>
                        <td style="padding: 0px; line-height: 20px;">&nbsp;</td>
                    </tr>
                </table>
                <table width="40%" align="right" style="font-family: sans-serif; font-size: 14px;" >
                    <tr>
                        <td style="border: 1px #eee solid; padding: 0px 8px; line-height: 20px;"><strong>Bill No</strong></td>
                        <td style="border: 1px #eee solid; padding: 0px 8px; line-height: 20px;">#<%=bill.getBillId() %></td>
                    </tr>
                    <tr>
                        <td style="border: 1px #eee solid; padding: 0px 8px; line-height: 20px;"><strong>Invoice Date</strong></td>
                        <td style="border: 1px #eee solid; padding: 0px 8px; line-height: 20px;"><%
         Date dNow = new Date( );
         SimpleDateFormat ft =new SimpleDateFormat ("E yyyy.MM.dd 'at' hh:mm:ss a zzz");
         out.print(ft.format(dNow));
      %></td>
                    </tr>
                    
                 </table>
            </td>
        </tr>
    </table>
    <br>
    <table class="items" width="100%" style="font-size: 14px; border-collapse: collapse;" cellpadding="8">
        <thead>
            <tr>
                <td width="15%" style="text-align: left;"><strong>Boat ID</strong></td>
                <td width="45%" style="text-align: left;"><strong>Boat Name</strong></td>
                <td width="20%" style="text-align: left;"><strong>Capacity & Time Taken</strong></td>
                <td width="30%" style="text-align: left;"><strong>Total Charges</strong></td>
            </tr>
        </thead>
        <tbody>
            <!-- ITEMS HERE -->
            <tr>
                <td style="padding: 0px 7px; line-height: 20px;"></td>
                <td style="padding: 0px 7px; line-height: 20px;"></td>
                <td style="padding: 0px 7px; line-height: 20px;"></td>
                <td style="padding: 0px 7px; line-height: 20px;"></td>
                
                
            </tr>
            <tr>
                <td style="padding: 0px 7px; line-height: 20px;"><%= boat.getBoatId()%></td>
                <td style="padding: 0px 7px; line-height: 20px;"><%= boat.getBoatName() %></td>
                <td style="padding: 0px 7px; line-height: 20px;"><%= bill.getLoadCap() %> ×<%=bill.getTime() %>(include charges)</td>
                <td style="padding: 0px 7px; line-height: 20px;"><%= bill.getAmount()%></td>
                
                
            </tr>
            
            
        </tbody>
    </table>
    <br>
    <table width="100%" style="font-family: sans-serif; font-size: 14px;" >
        <tr>
            <td>
                <table width="60%" align="left" style="font-family: sans-serif; font-size: 14px;" >
                    <tr>
                        <td style="padding: 0px; line-height: 20px;">&nbsp;</td>
                    </tr>
                </table>
                <table width="40%" align="right" style="font-family: sans-serif; font-size: 14px;" >
                    <tr>
                        <td style="border: 1px #eee solid; padding: 0px 8px; line-height: 20px;"><strong>Total amount</strong></td>
                        <td style="border: 1px #eee solid; padding: 0px 8px; line-height: 20px;"><%= bill.getAmount() %></td>
                    </tr>
                    <tr>
                        <td style="border: 1px #eee solid; padding: 0px 8px; line-height: 20px;"><strong>Status</strong></td>
                        <td style="border: 1px #eee solid; padding: 0px 8px; line-height: 20px;"><h3>Paid/Unpaid</h3></td>
                    </tr>
                 </table>
            </td>
        </tr>
    </table>
    <br>
    <table width="100%" style="font-family: sans-serif; font-size: 14px;" >
        <br>
        <tr>
            <td>
                <table width="25%" align="left" style="font-family: sans-serif; font-size: 14px;" >
                    <tr>
                        <td style="padding: 0px; line-height: 20px;">
                            <img src="img/protected.png" alt="protected" style="display: block; margin: auto;">
                        </td>
                    </tr>
                </table>
                <table width="50%" align="left" style="font-family: sans-serif; font-size: 13px; text-align: center;" >
                    <tr>
                        <td style="padding: 0px; line-height: 20px;">
                            <strong>Chennai Port</strong>
                            <br>
                            Tel:(044) 1234 5678 | Email: info@chennaiport.com
                            <br>
                            Company Registered in India. Company Reg. 12121212.                           
                        </td>
                    </tr>
                </table>
                <table width="25%" align="right" style="font-family: sans-serif; font-size: 14px;" >
                    <tr>
                        <td style="padding: 0px; line-height: 20px;">
                            <img src="img/abtot.png" alt="abtot" style="display: block; margin: auto;">
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <br>
    </table>
</body>
</html>

