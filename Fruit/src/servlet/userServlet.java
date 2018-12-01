package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.user;
import ly.BeanUtils;

import Bize.BizeMethod;
import Expection.LoginException;

@WebServlet("/user.s")
public class userServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	BizeMethod bmtd = new BizeMethod();
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		String op = request.getParameter("op");

		if ("login".equals(op)) {
			login(request, response);
		}else if("query".equals(op)) {
			query(request,response);
		}
	}

	private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String code = request.getParameter("code");
		String name = request.getParameter("username");
		String pwd = request.getParameter("userpwd");
		String s = (String) request.getSession().getAttribute("piccode");
		String[] arr = request.getParameterValues("checkbox");
		if (arr != null) {
			Cookie cookieName = new Cookie("cname", name);
			cookieName.setMaxAge(7 * 3600 * 24);
			response.addCookie(cookieName);
		}

		System.out.println(code + "," + s);
		Cookie[] myCookie = request.getCookies();
		if (myCookie != null) {
			for (int i = 0; i < myCookie.length; i++) {
				if (myCookie[i].getValue().equals(name)) {
					request.getSession().setAttribute("longinUser", name);
					System.out.println(request.getSession().getAttribute("longinUser"));
					request.getRequestDispatcher("index.jsp").forward(request, response);
				}
			}
		}
		try {
			BizeMethod.login(code, name, pwd);
			if (s.equalsIgnoreCase(code)) {

				if ("admin".equals(name) && "123456".equals(pwd)) {
					request.getSession().setAttribute("longinUser", name);
					request.getRequestDispatcher("index.jsp").forward(request, response);
				} else {
					request.setAttribute("msg", "账号或密码错误！");
					request.getRequestDispatcher("login.jsp").forward(request, response);
				}
			} else {
				request.setAttribute("msg", "验证码填写错误！");
			}

		} catch (LoginException e) {
			request.setAttribute("msg", e.getMessage());
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}
	private void query(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		user u = BeanUtils.asBean(request, user.class);
		request.setAttribute("userList", bmtd.find(u));
		request.getRequestDispatcher("manage-user.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
