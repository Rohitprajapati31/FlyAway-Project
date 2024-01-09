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
Login  Here</h1>
<form method="POST" action="LoginController.jsp">
<p style="text-align:center;width:100%">
<input type="text"  name="txtUname"  placeholder="Enter User Name" required />
<br /><br />
<input type="password"  name="txtPwd"  placeholder="Enter Password" required />
<br /><br />
<input type="submit"  value="Login" />
</p>
</form>
</body>
</html>