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

		// String s = (String) request.getSession().getAttribute("piccode");
		String[] arr = request.getParameterValues("checkbox");
		if (arr != null) {
			Cookie cookie = new Cookie("username", name);
			cookie.setMaxAge(7 * 3600 * 24);
			response.addCookie(cookie);
		}

		Cookie[] myCookie = request.getCookies();
		if (myCookie != null) {
			for (int i = 0; i < myCookie.length; i++) {
				if (myCookie[i].getValue().equals(name)) {
					request.getSession().setAttribute("longinUser", name);
					System.out.println(request.getSession().getAttribute("longinUser"));
					// request.getRequestDispatcher("wed/index.jsp").forward(request, response);
					response.sendRedirect("wed/index.jsp");
				}
			}
		}
		user users = BizeLogin.login(name, pwd);

		if (users != null) {
			user u = DBHelper.unique("select * from user where uname=? ", user.class, name);
			request.getSession().setAttribute("longinUser", u.getUid());
			request.getRequestDispatcher("wed/index.jsp").forward(request, response);
		} else {
			request.setAttribute("msg", "账号或密码错误！");
			request.getRequestDispatcher("wed/login.jsp").forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
