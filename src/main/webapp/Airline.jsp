<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.model.Airports" %>
<%@page import="com.model.Airlines" %>
<%@page import="java.util.List" %>
<%@page import="com.service.AirportService" %>
<%@page import="com.service.AirlineService" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 style="text-align:center;width:100%">
New Airline Details</h1>
<hr/>
<%
	String uname = (String)session.getAttribute("uname");
	if(uname==null)
	{
		response.sendRedirect("AdminLogin.jsp");
	}
%>
<form method="POST" action="AddAirline">
<p style="text-align:center;width:100%">
<input type="text"  name="txtAirlinename"  placeholder="Enter Airline Name" required />
<br /><br />
<select name="ddlArpt" style="width:150px">
	<option value="-1">Select Airport</option>
	
	<%
	AirportService aps = new AirportService();
	List<Airports> arptAll = aps.ShowAllArpt();
	for(Airports a : arptAll)
	{
	%>
		<option value='<%=a.getA_code() %>'>
				<%=a.getA_name() %>
		</option>
	<%
	}
	%>
</select>
<br/><br/>
<input type="submit"  value="Click Me" />
</p>
</form>

<table width="100%" border="1">
	<tr>
		<th>Airline Code</th>
		<th>Airline Name</th>
	</tr>
	
<%
AirlineService fs = new AirlineService();
List<Airlines> arlnAll = fs.ShowAllArlns();
for(Airlines arn : arlnAll)
{
%>
	<tr>
	<td><%=arn.getCode() %></td>
	<td><%=arn.getName() %></td>
	</tr>	
<%
}
%>	
</table>
</body>
</html>