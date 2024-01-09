package com.appservlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Passenger;
import com.service.PassengerService;

/**
 * Servlet implementation class AddPassenger
 */
@WebServlet("/AddPassenger")
public class AddPassenger extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddPassenger() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String pname = request.getParameter("txtPassengerName");
		String gen = request.getParameter("gen");
		String age = request.getParameter("txtAge");
		String phno = request.getParameter("txtPhoneNumber");
		String mail = request.getParameter("txtEmail");
		
		PassengerService pss = new PassengerService();
		Passenger psgr = new Passenger();
		psgr.setPname(pname);
		psgr.setGen(gen);
		psgr.setAge(Integer.parseInt(age));
		psgr.setPhno(Long.parseLong(phno));
		psgr.setMail(mail);
		
		pss.AddPassenger(psgr);
		response.sendRedirect("Registration.jsp");
	}

}
