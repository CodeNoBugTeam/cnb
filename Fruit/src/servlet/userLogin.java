package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.user;
import Bean.worker;
import Bize.BizeLogin;
import Bize.BizeMethod;
import Expection.LoginException;
import ly.DBHelper;

@WebServlet("/userLogin.s")
public class userLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String op = request.getParameter("op");
		if ("login".equals(op)) {
			login(request, response);
		}
	}

	private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String name = request.getParameter("username");
		String pwd = request.getParameter("password");
		

		String[] arr = request.getParameterValues("checkbox");
		user u = BizeMethod.getUid(name,pwd);
		if(DBHelper.unique("select * from user where uname=? and upwd=? ", user.class,name,pwd ) != null) {
			if(arr != null && arr.length >=0) {
				Cookie cookie = new Cookie(name,pwd);
				response.addCookie(cookie);
				cookie.setMaxAge(60*60*24*7);
				response.addCookie(cookie);
			}
			request.getSession().setAttribute("longinUser", u.getUid());
			request.getRequestDispatcher("wed/index1.jsp").forward(request, response);
		}else {
			Cookie[] cookies = request.getCookies();
			if(cookies == null || cookies.length == 0) {
				response.sendRedirect("wed/login.jsp");
			}
			boolean falg = false;
			for(Cookie c : cookies) {
				if(c.getValue().equals(name)) {
					request.getSession().setAttribute("longinUser", u.getUid());
					falg=true;
				}
			}
			if(falg) {
				request.getRequestDispatcher("wed/index1.jsp").forward(request, response);
			}else {
				response.sendRedirect("wed/login.jsp");
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
