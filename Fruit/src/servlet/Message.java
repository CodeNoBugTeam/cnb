package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/customer.s")
public class Message extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String buy = request.getParameter("buy");
		if("lemon".equals(buy)) {
			request.getRequestDispatcher("wed/lemon.jsp").forward(request, response);
		}else if("add".equals(buy)) {
			request.getRequestDispatcher("wed/Shopping.jsp").forward(request, response);
		}else if("buy".equals(buy)) {
			request.getRequestDispatcher("Order_detailed.jsp").forward(request, response);
		}
			
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
