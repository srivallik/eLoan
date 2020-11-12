<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>user home</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<h4>User Dash Board</h4>
<a href="user?action=application">Apply for Loan</a><br>
<a href="trackloan.jsp">Track Loan Application</a><br>
<a href="editloan.jsp">Edit Loan Application</a>

<br/>
<span colspan="2" style="color: #008000;"><h4><%=(request.getParameter("loanAppliedMessage") != null)?request.getParameter("loanAppliedMessage"):"" %></h4></span>
<br/>
<jsp:include page="footer.jsp"/>
</body>
</html>