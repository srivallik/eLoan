<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>eLoan system</title>
</head>
<body>
	<!-- write the html code to read user credentials and send it to validateservlet
	    to validate and user servlet's registernewuser method if create new user
	    account is selected
	-->	
	
<h2>Welcome to ELoan Systems</h2>
<br/>
<form action="/ELoan_App/user"  method="GET">
<table border="0px;">
<tr>
<td style="width: 50%;align:left" ><labe>Username</td>
<td style="width: 50%;align:left"><input name="username" id="username" type="text"></input></td>
</tr>
<tr>
<td style="width: 50%;align:left" >Password</td>
<td style="width: 50%;align:left"><input name="password" id="password" type="password"></input></td>
</tr>
<tr>
<td style="width: 50%;align:left" >&nbsp;</td>
<td style="width: 50%;align:left"><button type="button">Cancel</button> &nbsp;<button name="action" type="action" value="validate" type="submit">Login</button></td>
</tr>

<tr>
<td style="width: 50%;align:left" >Want to register?</td>
<td style="width: 50%;align:left"><a href="register.jsp">Register</a> </td>
</tr>
<tr><td colspan="2" style="color: red;"><h4><%=(request.getParameter("message") != null)?request.getParameter("message"):"" %></h4></td></tr>
<tr><td colspan="2" style="color: 	#008000;"><h4><%=(request.getParameter("acctCreationMessage") != null)?request.getParameter("acctCreationMessage"):"" %></h4></td></tr>
</table>
</form>

<script>
<%-- <% 
String uname=request.getParameter("userName"); 
session.setAttribute("userName",uname); 
%>  --%>
</script>
</body>
</html>