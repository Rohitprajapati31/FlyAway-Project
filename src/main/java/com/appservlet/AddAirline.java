package com.appservlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Airlines;
import com.service.AirlineService;

/**
 * Servlet implementation class AddAirline
 */
@WebServlet("/AddAirline")
public class AddAirline extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddAirline() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String name = request.getParameter("txtAirlinename");
		String arpt = request.getParameter("ddlArpt");
				
		AirlineService arns = new AirlineService();
		Airlines airln = new Airlines();
		airln.setName(name);
		airln.setA_code(Integer.parseInt(arpt));
		
		arns.AddArln(airln);
		
		response.sendRedirect("Airline.jsp");
	}

}
