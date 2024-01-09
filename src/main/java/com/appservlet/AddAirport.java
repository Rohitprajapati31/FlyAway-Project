package com.appservlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Airports;
import com.service.AirportService;

/**
 * Servlet implementation class AddAirports
 */
@WebServlet("/AddAirport")
public class AddAirport extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddAirport() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String airportname = request.getParameter("txta_name");
		String city = request.getParameter("txtCity");
		String country = request.getParameter("txtCountry");
		
		AirportService aps = new AirportService();
		Airports arpt = new Airports();
		arpt.setA_name(airportname);
		arpt.setCity(city);
		arpt.setCountry(country);
		aps.AddAirport(arpt);
		response.sendRedirect("AddAirport.jsp");
	}

}
