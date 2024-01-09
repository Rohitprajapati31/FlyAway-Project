<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.model.Flights" %>
<%@page import="java.util.List" %>
<%@page import="com.service.FlightService" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 style="text-align:center;width:100%">
Show All Flights</h1>
<hr/>
<p style="text-align:center;width:100%">
<a href="Flights.jsp">Add Flight</a>
<table width="100%" border="1">
	<tr>
		<th>Flight ID</th>
		<th>Flight Name</th>
		<th>Airline</th>
		<th>Source</th>
		<th>Destination</th>
		<th>Price</th>
		<th>Seats</th>
	</tr>
	
<%
FlightService fs = new FlightService();
List<Flights> fltstAll = fs.ShowAllFlts();
for(Flights f : fltstAll)
{
%>
	<tr>
	<td><%=f.getFlight_Id() %></td>
	<td><%=f.getFlight_Name() %></td>
	<td><%=f.getAirline_Name() %></td>
	<td><%=f.getSource() %></td>
	<td><%=f.getDestination() %></td>
	<td><%=f.getPrice() %></td>
	<td><%=f.getSeats() %></td>
	</tr>	
<%
}
%>	
</table>
</body>
</html>