<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display All Loans</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<h3 style="color: blue;L:ist of laons">List of Loans</h3>	
<ul>
<% 
ArrayList<String> loanList = (ArrayList<String>)request.getAttribute("loanList");

for(int i=0;i<loanList.size();i++){
%>
<li><label style="color: teal;"> <a href="admin?action=process&loan=<%=loanList.get(i) %>"><%= loanList.get(i)%></a></label></li>
<% }%>
<jsp:include page="footer.jsp"/>
</body>
</html>