<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.model.Airports" %>
<%@page import="java.util.List" %>
<%@page import="com.service.AirportService" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 style="text-align:center;width:100%">
New Airport Details</h1>
<hr/>

<%
	String uname = (String)session.getAttribute("uname");
	if(uname==null)
	{
		response.sendRedirect("AdminLogin.jsp");
	}
%>

<form method="POST" action="AddAirport">
<p style="text-align:center;width:100%">
<input type="text"  name="txta_name"  placeholder="Enter Airport Name" required />
<br /><br />
<input type="text"  name="txtCity"  placeholder="Enter City" required />
<br /><br />
<input type="text"  name="txtCountry"  placeholder="Enter Country" required />
<br /><br />
<input type="submit"  value="Click Me" />
</p>
</form>
<hr />
<table width="100%" border="1">
	<tr>
		<th>Airport Code</th>
		<th>Airport Name</th>
		<th>City</th>
		<th>Country</th>
	</tr>
	
<%
AirportService aps = new AirportService();
List<Airports> arptAll = aps.ShowAllArpt();
for(Airports a : arptAll)
{
%>
	<tr>
	<td><%=a.getA_code() %></td>
	<td><%=a.getA_name() %></td>
	<td><%=a.getCity() %></td>
	<td><%=a.getCountry() %></td>
	</tr>	
<%
}
%>	
</table>
</body>
</html>