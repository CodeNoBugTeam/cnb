package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.user;
import Bize.WebBiz;
import Expection.LoginException;
import ly.BeanUtils;

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
		}if("register".equals(op)) {
			register(request,response);
		}
	}
	private void register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		user u = BeanUtils.asBean(request, user.class);
		List<List<Object>> list = WebBiz.addUser(u);
		if(list != null) {
			//request.getRequestDispatcher("wed/login.jsp").forward(request, response);
			response.sendRedirect("wed/login.jsp");
		}
	}
	private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("username"); 
		String pwd = request.getParameter("password");
		System.out.println("pwd=" + pwd);
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
					request.getRequestDispatcher("wed/index.jsp").forward(request, response);
				}
			}
		}
		try {
			user users = WebBiz.login(name, pwd);
			if (users != null) {
				request.getSession().setAttribute("loginUser", name);
				request.getRequestDispatcher("wed/index.jsp").forward(request, response);
			} else {
				request.setAttribute("msg", "账号或密码错误！");
				request.getRequestDispatcher("wed/login.jsp").forward(request, response);
			}
		} catch (LoginException e) {
			System.out.println("登陆失败");
			request.setAttribute("msg", e.getMessage());
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
