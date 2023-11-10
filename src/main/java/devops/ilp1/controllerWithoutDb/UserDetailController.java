package devops.ilp1.controllerWithoutDb;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import devops.ilp1.model.User;
import devops.ilp1.service.UserService;

public class UserDetailController extends HttpServlet {
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String Number =request.getParameter("Number of Travellers");
		
		if (Number.isEmpty()) {
			  RequestDispatcher rd = request.getRequestDispatcher("success.jsp");
			   out.println("<font color=red>Please fill all the fields</font>");
			   rd.include(request, response);
			  } else {
				
						RequestDispatcher rd = request.getRequestDispatcher("/contact.jsp");
						rd.forward(request,response);
						return;
			
					
			  }
	}

}
