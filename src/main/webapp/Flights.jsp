<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.model.Flights" %>
<%@page import="com.model.Airlines" %>
<%@page import="com.model.Airports" %>
<%@page import="java.util.List" %>
<%@page import="com.service.FlightService" %>
<%@page import="com.service.AirlineService" %>
<%@page import="com.service.AirportService" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 style="text-align:center;width:100%">
New Flights Details</h1>
<hr/>
<form method="POST" action="AddFlights">
<p style="text-align:center;width:100%">
<input type="text"  name="txtFlightname" style="width:150px" placeholder="Enter Flight Name" required />
<br /><br />

            <select name="ddlArln" style="width:150px">
	<option value="-1">Preferred Airline</option>
	
	<%
	AirlineService ans = new AirlineService();
	List<Airlines> arlnall = ans.ShowAllArlns();
	for(Airlines an : arlnall)
	{
	%>
		<option value='<%=an.getCode() %>'>
				<%=an.getName() %>
		</option>
	<%
	}
	%>
</select>
            
<br/><br/>

<select name="ddlArpt" style="width:150px">
	<option value="-1">Select Source</option>
	
	<%
	AirportService aps = new AirportService();
	List<Airports> arptAll = aps.ShowAllArpt();
	for(Airports a : arptAll)
	{
	%>
		<option value='<%=a.getA_code() %>'>
				<%=a.getCity() %>
		</option>
	<%
	}
	%>
</select>

<br /><br />

<select name="ddlArpt" style="width:150px">
	<option value="-1">Select Destination</option>
	
	<%
	AirportService ap1s = new AirportService();
	List<Airports> arpt1All = ap1s.ShowAllArpt();
	for(Airports a : arpt1All)
	{
	%>
		<option value='<%=a.getA_code() %>'>
				<%=a.getCity() %>
		</option>
	<%
	}
	%>
</select>

<br /><br />
<input type="text"  name="txtPrice" style="width:150px" placeholder="Enter Price" required />
<br /><br />
<input type="text"  name="txtSeats" style="width:150px" placeholder="Enter Seats" required />
<br /><br />
<input type="submit"  value="Add Flight" />
</p>
</form>

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
