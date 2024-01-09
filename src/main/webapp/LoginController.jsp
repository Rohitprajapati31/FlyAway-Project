<%
String uname = request.getParameter("txtUname");
String pwd = request.getParameter("txtPwd");

if(uname.equalsIgnoreCase("Flyaway") && pwd.equals("Admin@123"))
{
	session.setAttribute("uname", "flyaway");
	RequestDispatcher rd = request.getRequestDispatcher("Links.jsp");
	rd.forward(request, response);	
}
else
{
	out.print("<h2 style='text-align:center;color:red'>Please check username/password</h2>");
	RequestDispatcher rd = request.getRequestDispatcher("AdminLogin.jsp");
	rd.include(request, response);
}
%>

<!DOCTYPE html>
<html>
<head>
    <title>Insert title here</title>
</head>
<body>

</body>
</html>

