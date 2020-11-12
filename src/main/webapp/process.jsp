<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"/>
	<h2 align="center" style="color: blue;">Loan Process</h2>
	<div>
	<h4 style="color: blue">Next steps for loan <%=request.getParameter("loan") %></h4>
	<ul style="list-style-type:none;">
	<li>
	<input type="radio" id="accept" name="loanProcess" value="accept">
	<label for="Accept">Accept</label><br>
	<input type="radio" id="reject" name="loanProcess" value="Reject">
	<label for="Reject">Reject</label><br>
	<input type="radio" id="cancel" name="loanProcess" value="Cancel">
	<label for="Cancel">InProgress</label>
	</li>
	</ul>
	<input type="button" value="Cancel"></input>
	<input type="submit" action="#" value="Submit"></input>
	</div>
	
	<jsp:include page="footer.jsp"/>
</body>
</html>