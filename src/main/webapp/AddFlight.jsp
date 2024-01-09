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
New Flights Details</h1>
<hr/>
<%
	String uname = (String)session.getAttribute("uname");
	if(uname==null)
	{
		response.sendRedirect("AdminLogin.jsp");
	}
%>
<form method="POST" action="AddFlights">
<p style="text-align:center;width:100%">
<input type="text"  name="txtFlightName" style="width:150px" placeholder="Enter Flight Name" required />
<br /><br />

           <select name="ddlArln" style="width:160px">
               <option value="-1">Preferred Airline</option>
               <option value="American Airline">American Airline</option>
               <option value="Spice Jet">Spice Jet</option>
               <option value="Air India">Air India</option>
               <option value="Indigo">Indigo</option>
               <option value="United Airlines">United Airlines</option>
               <option value="Emirates">Emirates</option>
               <option value="British Airways">British Airways</option>
            </select>
            
<br/><br/>
<select name="ddlArpt" style="width:160px">
	<option value="-1">Select Source</option>
			   <option value="Ahmedabad">Ahmedabad</option>
               <option value="Rajkot">Rajkot</option>
               <option value="Mumbai">Mumbai</option>
               <option value="Los Angeles">Los Angeles</option>
               <option value="Dubai">Dubai</option>
               <option value="London">London</option>	
	</select>
<br /><br />

<select name="ddlArpt" style="width:160px">
	<option value="-1">Select Destination</option>
			   <option value="Ahmedabad">Ahmedabad</option>
               <option value="Rajkot">Rajkot</option>
               <option value="Mumbai">Mumbai</option>
               <option value="Los Angeles">Los Angeles</option>
               <option value="Dubai">Dubai</option>
               <option value="London">London</option>	
	</select>
<br /><br />
<input type="text"  name="txtPrice" style="width:150px" placeholder="Enter Price" required />
<br /><br />
<input type="text"  name="txtSeats" style="width:150px" placeholder="Enter Seats" required />
<br /><br />
<input type="submit"  value="Add Flight" />
</p>
</form>
</body>
</html>
