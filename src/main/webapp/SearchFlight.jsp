<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.model.Airports" %>
<%@page import="com.model.Flights" %>
<%@page import="java.util.List" %>
<%@page import="com.service.AirportService" %>
<%@page import="com.service.FlightService" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
</head>
<body>

	<h1 style="text-align:center;width:100%">Home Page</h1><hr/>
	<form method="POST" action="SearchFlight.jsp">
	<p style="text-align:center;width:100%">
	
	<label for="">Date:
	<input id="my-date-picker" type="date"
			min="2020-12-31" list=""
			max="2030-12-31" name="" value="" required>
	</label>
	
	&nbsp;&nbsp;|&nbsp;&nbsp;
	
	<label for="">Source:</label>
	<select name="ddlArpt" style="width:150px" required>
	<option value="-1">Select Source</option>
	
		<%
		AirportService aps = new AirportService();
		List<Airports> arptAll = aps.ShowAllArpt();
		for(Airports a : arptAll)
		{
		%>
			<option value='<%=a.getCity() %>'>
					<%=a.getCity() %>
			</option>
		<%
		}
		%>
	</select>
	&nbsp;&nbsp;|&nbsp;&nbsp;
	
	<label for="">Destination:</label>
	<select name="ddlArpt1" style="width:150px" required>
		<option value="-1" >Select Destination</option>
		
		<%
		AirportService ap1s = new AirportService();
		List<Airports> arpt1All = ap1s.ShowAllArpt();
		for(Airports a : arpt1All)
		{
		%>
			<option value='<%=a.getCity() %>'>
					<%=a.getCity() %>
			</option>
		<%
		}
		%>
	</select>
		&nbsp;&nbsp;|&nbsp;&nbsp;
	<label for="">No. of Person:</label>
	<input type="text"  name="txtPerson" style="width:150px" placeholder="Enter No of Person" required />
		&nbsp;&nbsp;|&nbsp;&nbsp;
	<input type="submit"  value="Search" />

	</p>
	</form>
</body>
</html>
<hr/>
<br>
	<%
	String sid = request.getParameter("ddlArpt");
	String did = request.getParameter("ddlArpt1");
	
	System.out.println("\nsid :" + sid + "\t" + "did: " + did);
	FlightService fs = new FlightService();
	List<Flights> f = fs.searchFlights(sid, did);
	if(f != null)
	{
	%>
	<table width="100%" border="1">
		<tr>
			<th>Flight Name</th>
			<th>Airline</th>
			<th>Price</th>
			<th>Seats</th>
			<th>Book</th>
		</tr>
		<tr>
		<%
		for(Flights fts : f)
		{
		%>
			<td><%=fts.getFlight_Name() %></td>
			<td><%=fts.getAirline_Name() %></td>
			<td><%=fts.getPrice() %></td>
			<td><%=fts.getSeats() %></td>
			<td>
			<form method="POST" action="Registration.jsp">
			<center><input type="submit"  value="Book" /></center>
			</td>
		</tr>
		
		<%
		}
		%>
	<%	
	}
	else
	{
		out.print("<h1><center>Flights Not Found</center></h1>");
	}
	%>
	</table>
