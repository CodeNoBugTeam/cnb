package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.user;
import Bize.WebBiz;
import Expection.LoginException;

//前端页面servlet
@WebServlet("/web.s")
public class webServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		String op = request.getParameter("op");
		
		if ("login".equals(op)) {
			login(request, response);
		}
		
	}

	
	private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("username"); 
		String pwd = request.getParameter("userpwd");
		
		String[] arr = request.getParameterValues("checkbox");
		if (arr != null) {
			Cookie cookieName = new Cookie("cname", name);
			cookieName.setMaxAge(7 * 3600 * 24);
			response.addCookie(cookieName);
		}
		Cookie[] myCookie = request.getCookies();
		if (myCookie != null) {
			for (int i = 0; i < myCookie.length; i++) {
				if (myCookie[i].getValue().equals(name)) {
					request.getSession().setAttribute("loginUser", name);
					System.out.println(request.getSession().getAttribute("loginUser"));
					request.getRequestDispatcher("index.jsp").forward(request, response);
				}
			}
		}
		try {
			user users = WebBiz.login(name, pwd);
			if (users != null) {
				request.getSession().setAttribute("longinUser", name);
				request.getRequestDispatcher("wed/index.jsp").forward(request, response);
			} else {
				request.setAttribute("msg", "账号或密码错误！");
				request.getRequestDispatcher("wed/login.jsp").forward(request, response);
			}
		} catch (LoginException e) {
			request.setAttribute("msg", e.getMessage());
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		doGet(request, response);
	}

}
