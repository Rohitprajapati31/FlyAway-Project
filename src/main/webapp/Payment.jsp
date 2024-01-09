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
Make Payment</h1>
<hr/>

<form method="POST" action="Confirmation.jsp">
<p style="text-align:center;width:100%">
<label for="">Payment Type:</label>
<select name="gen" style="width:150px">
	<option value="-1">Payment Type</option>
	<option value="UPI">UPI</option>
	<option value="Net Banking">Net Banking</option>
	<option value="Credit Card">Credit Card</option>
	<option value="Debit Card">Debit Card</option>	
</select>
<br /><br />
<input type="submit"  value="Pay" />
</form>
</body>
</html>