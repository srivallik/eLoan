<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Track Loan</title>
</head>
<body>

<h1>Loan Application Form</h1>
<!-- write html code to read the application number and send to usercontrollers'
             displaystatus method for displaying the information
	-->
<br/>
	

<form action="/ELoan_App/user"  method="GET">
<table border="0px;">
    <tr>
       <td style="width: 50%;align:left" ><labe>Loan Application Number</td>
       <td style="width: 50%;align:left"><input name="trackApplNum" id="trackApplNum" type="text"></input></td>
    </tr>
     <br/>
	<tr>
	<td style="width: 50%;align:left"><a href="userhome.jsp">Back to User DashBoard</a> </td>
	<td style="width: 50%;align:left">
	   		<div>
	    		<div><button name="action" type="action" value="trackloan" type="submit">Submit</button></div>
       		<div> 
       </td>
	</tr>
	<br/>
	<tr><td colspan="2" style="color:#008000;"><h4><%=(request.getParameter("loanStatusMessage") != null)?request.getParameter("loanStatusMessage"):"" %></h4></td></tr>
</table>
</form>
</body>
</html>