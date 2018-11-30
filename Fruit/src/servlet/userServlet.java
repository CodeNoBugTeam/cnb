package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/user.s")
public class userServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
	
		String op = request.getParameter("op");
		String name = request.getParameter("username");
		String pwd = request.getParameter("userpwd");
		if("login".equals(op)) {
			
			if("admin".equals(name)&&"123456".equals(pwd)) {
				request.getRequestDispatcher("index.jsp").forward(request, response);
				request.getSession().setAttribute("longinUser", name);
			}else {
				request.setAttribute("msg", "账号或密码错误！");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doGet(request, response);
	}

}
