<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 style="text-align:center;width:100%">
New Passenger Details</h1>
<hr/>
<form method="POST" action="Payment.jsp">
<p style="text-align:center;width:100%">
<label for="">Name:</label>
<input type="text"  name="txtPassengerName" style="width:150px" placeholder="Enter Name" required />
<br /><br />
<label for="">Gender:</label>
<select name="gen" style="width:150px">
	<option value="-1">Gender</option>
	<option value="Male">Male</option>
	<option value="Famale">Female</option>	
</select>
<br /><br />	
<label for="">Age:</label>
<input type="text"  name="txtAge" style="width:150px" placeholder="Enter Age" required />
<br /><br />
<label for="">Phone Number:</label>
<input type="text"  name="txtPhoneNumber" style="width:150px" placeholder="Enter Phone Number" required />
<br /><br />
<label for="">Email ID:</label>
<input type="email"  name="txtEmail" style="width:150px" placeholder="Enter Email ID" required />
<br /><br />

<input type="submit" value="Submit" />
</form>
</body>
</html>