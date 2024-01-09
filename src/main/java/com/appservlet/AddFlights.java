package com.appservlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Flights;
import com.service.FlightService;

/**
 * Servlet implementation class AddFlights
 */
@WebServlet("/AddFlights")
public class AddFlights extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddFlights() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String flight_name = request.getParameter("txtFlightname");
		String airline_name = request.getParameter("ddlArln");
		String source = request.getParameter("ddlArpt");
		String destination = request.getParameter("ddlArptd");
		String price = request.getParameter("txtPrice");
		String seats = request.getParameter("txtSeats");
		
		FlightService fs = new FlightService();
		Flights flts = new Flights();
		flts.setFlight_Name(flight_name);
		flts.setAirline_Name(airline_name);
		flts.setSource(source);
		flts.setDestination(destination);
		flts.setPrice(Integer.parseInt(price));
		flts.setSeats(Integer.parseInt(seats));
		
		fs.AddFlts(flts);
		
		response.sendRedirect("Flights.jsp");
		
	}

}
