<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Loan Application Form</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
</head>
<body onload="myFunction()">

<h1>Edit Loan Application Form</h1>
<!--
	write the html code to accept laon info from user and send to placeloan servlet
-->
<br/>

<form action="/ELoan_App/user"  method="GET">
<table border="0px;">
    <tr>
       <td style="width: 50%;align:left" ><labe>Loan Name</td>
       <td style="width: 50%;align:left"><input name="LoanName" id="LoanName" type="text"></input></td>
    </tr>
    <tr>
		<td style="width: 50%;align:left" >Loan Application Number</td>
		<td style="width: 50%;align:left"><label name="LoanApplNum" id="LoanApplNum" type="text"><%=(request.getParameter("applicationNum") != null)?request.getParameter("applicationNum"):"" %></label></td>
	</tr>
	<tr>
		<td style="width: 50%;align:left" >Loan Amount Requested</td>
		<td style="width: 50%;align:left"><label>$ </label><input name="LoanAmountRequested" id="LoanAmountRequested" type="text">
		<%-- <%=(request.getSession(true).getAttribute("applDate") != null)?request.getSession(true).getAttribute("applDate"):"" %></input></td>
	 --%></tr>
	<tr>
		<td style="width: 50%;align:left" >Loan Application Date</td>
		<td style="width: 50%;align:left"><label name="applicationDate" id="applicationDate" type="text"></label></td>
	</tr>
	
	<tr>
		<td style="width: 50%;align:left" ><labe>Term of Loan</td>
		<td style="width: 50%;align:left"><input name="termOfLoan" id="termOfLoan" type="text"></input></td>
	</tr>
	<tr>
		<td style="width: 50%;align:left" ><labe>Payment Start Date</td>
		<td style="width: 50%;align:left"><input name="paymentStartDate" id="paymentStartDate" type="date"></input></td>
	</tr>
  
	<tr>
		<td style="width: 50%;align:left" ><labe>Business Struture</td>
		<td><select name="Businessstruture" id="Businessstruture" class="form-control">
				<option value="Individual">Individual</option>
				<option value="Organization">Organization</option>
	        </select>
	    </td>
	 </tr>
	 <tr>
		<td style="width: 50%;align:left" ><labe>Billing Indicator (Salaried person or not)</td>
		<td><input type="radio" id="salariedYes" name="BillingIndicator" value="yes"><label for="yes">Yes</label>
            <input type="radio" id="salariedNo" name="BillingIndicator" value="no"><label for="no">No</label>
	    </td>
	 </tr>
	<tr>
		<td style="width: 50%;align:left" ><labe>Tax Indicator (Tax payer or not)</td>
		<td><input type="radio" id="taxPayerYes" name="TaxIndicator" value="yes"><label for="yes">Yes</label>
            <input type="radio" id="taxPayerNo" name="TaxIndicator" value="no"><label for="no">No</label>
	    </td>
	 </tr>
	<tr>
		<td style="width: 50%;align:left" ><labe>Address</td>
		<td style="width: 50%;align:left"><textarea name="applicationAddress" id="applicationAddress" type="text"></textarea></td>
	</tr>
	<tr>
		<td style="width: 50%;align:left" ><labe>Mobile</td>
		<td style="width: 50%;align:left"><input name="mobile" id="mobile" type="text"></input></td>
	</tr>
	<tr>
		<td style="width: 50%;align:left" ><labe>Email</td>
		<td style="width: 50%;align:left"><input name="email" id="email" type="text"></input></td>
	</tr> 
	 <br/>
	<tr>
	<td style="width: 50%;align:left"><a href="userhome.jsp">Back to User DashBoard</a> </td>
	<td style="width: 50%;align:left">
	   		<div>
	    		<div><button name="action" type="action" value="placeloan" type="submit">Submit</button></div>
       		<div> 
       </td>
	</tr>
	<br/>
	<tr><td colspan="2" style="color:red;"><h4><%=(request.getParameter("message") != null)?request.getParameter("message"):"" %></h4></td></tr>
 </table>
 </form>
 <br/>
<script>

var today = new Date();
var dd = today.getDate();
var mm = today.getMonth()+1; 
var yyyy = today.getFullYear();
if(dd<10) 
{
    dd='0'+dd;
} 

if(mm<10) 
{
    mm='0'+mm;
} 
today = dd+'-'+mm+'-'+yyyy;
console.log(today);
 
 document.getElementById("applicationDate").innerHTML = today;
 
 function myFunction(){
	 
 }
</script>
</body>
</html>