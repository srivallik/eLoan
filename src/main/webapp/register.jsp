<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Details below</title>
</head>
<body>
<h1>Register Details Here!!</h1>
<br/>

<form action="/ELoan_App/user"  method="GET">
<table border="0px;">
    <tr>
       <td style="width: 50%;align:left" ><labe>FirstName</td>
       <td style="width: 50%;align:left"><input name="FirstName" id="FirstName" type="text"></input></td>
    </tr>
    <tr>
		<td style="width: 50%;align:left" >LastName</td>
		<td style="width: 50%;align:left"><input name="LastName" id="LastName" type="text"></input></td>
	</tr>
	<tr>
		<td style="width: 50%;align:left" >UserName</td>
		<td style="width: 50%;align:left"><input name="UserName" id="UserName" type="text"></input></td>
	</tr>
	<tr>
		<td style="width: 50%;align:left" >Password</td>
		<td style="width: 50%;align:left"><input name="Password" id="Password" type="password"></input></td>
	</tr>
	<tr>
		<td><p>Please select your gender:</p></td>
	</tr>
 	<tr>
		<td style="width: 30%;align:left"><input type="radio" id="male" name="gender" value="male">
  			<label for="male">Male</label><br>
  		</td>
  	</tr>
  	<tr>
       <td style="width: 30%;align:left"><input type="radio" id="female" name="gender" value="female">
             <label for="female">Female</label><br>
       </td>
    </tr>
    <tr>
        <td style="width: 30%;align:left"><input type="radio" id="other" name="gender" value="other">
            <label for="other">Other</label>
        </td>
    </tr>
    <tr>
		<td style="width: 50%;align:left" ><labe>Address1</td>
		<td style="width: 50%;align:left"><input name="Address1" id="Address1" type="text"></input></td>
	</tr>
	<tr>
		<td style="width: 50%;align:left" ><labe>Address2</td>
		<td style="width: 50%;align:left"><input name="Address2" id="Address2" type="text"></input></td>
	</tr>
	<tr>
		<td style="width: 50%;align:left" ><labe>City</td>
		<td style="width: 50%;align:left"><input name="City" id="City" type="text"></input></td>
	</tr> 
	<tr>
		<td style="width: 50%;align:left" ><labe>State</td>
		<td><select name="State" id="State" class="form-control">
				<option value="Andhra Pradesh">Andhra Pradesh</option>
				<option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
				<option value="Arunachal Pradesh">Arunachal Pradesh</option>
				<option value="Assam">Assam</option>
				<option value="Bihar">Bihar</option>
				<option value="Chandigarh">Chandigarh</option>
				<option value="Chhattisgarh">Chhattisgarh</option>
				<option value="Dadar and Nagar Haveli">Dadar and Nagar Haveli</option>
				<option value="Daman and Diu">Daman and Diu</option>
				<option value="Delhi">Delhi</option>
				<option value="Lakshadweep">Lakshadweep</option>
				<option value="Puducherry">Puducherry</option>
				<option value="Goa">Goa</option>
				<option value="Gujarat">Gujarat</option>
				<option value="Haryana">Haryana</option>
				<option value="Himachal Pradesh">Himachal Pradesh</option>
				<option value="Jammu and Kashmir">Jammu and Kashmir</option>
				<option value="Jharkhand">Jharkhand</option>
				<option value="Karnataka">Karnataka</option>
				<option value="Kerala">Kerala</option>
				<option value="Madhya Pradesh">Madhya Pradesh</option>
				<option value="Maharashtra">Maharashtra</option>
				<option value="Manipur">Manipur</option>
				<option value="Meghalaya">Meghalaya</option>
				<option value="Mizoram">Mizoram</option>
				<option value="Nagaland">Nagaland</option>
				<option value="Odisha">Odisha</option>
				<option value="Punjab">Punjab</option>
				<option value="Rajasthan">Rajasthan</option>
				<option value="Sikkim">Sikkim</option>
				<option value="Tamil Nadu">Tamil Nadu</option>
				<option value="Telangana">Telangana</option>
				<option value="Tripura">Tripura</option>
				<option value="Uttar Pradesh">Uttar Pradesh</option>
				<option value="Uttarakhand">Uttarakhand</option>
				<option value="West Bengal">West Bengal</option>
			</select>
		</td>
	</tr>
	<tr>
		<td style="width: 50%;align:left" ><labe>Country</td>
		<td style="width: 50%;align:left"><input name="Country" id="Country" type="text"></input></td>
	</tr>
	<tr><td>
	   <div>
	    <div><button name="action" type="action" value="registernewuser" type="submit">Submit</button></div>
       <div> </td>
	</tr>
	<br/>
	<tr><td colspan="2" style="color: 	red;"><h4><%=(request.getParameter("message") != null)?request.getParameter("message"):"" %></h4></td></tr>
 </table>
 </form>
 <br/>
</body> 
</html>