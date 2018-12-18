package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.introduce;
import Bean.user;
import Bean.worker;
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
		}else if("queryWorker".equals(op)){
			queryWorker(request, response);
		}else if("queryUser".equals(op)) {
			queryUser(request,response);
		}else if("addWorker".equals(op)) {
			addWorker(request,response);
		}else if("edit".equals(op)) {
			edit(request,response);
		}else if("wupdate".equals(op)) {
			wupdate(request,response);
		}else if("move".equals(op)) {
			wmove(request,response);
		}else if("productadd".equals(op)) {
			productadd(request,response);
		}else if("edituser".equals(op)) {
			edituser(request,response);
		}else if("moveuser".equals(op)) {
			moveuser(request,response);
		}
	}

	private void productadd(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		introduce introduces = BeanUtils.asBean(request, introduce.class);
		String family = request.getParameter("family");
		String[] name = request.getParameterValues("fname");
		System.out.println(name);
		try {
			BizeMethod.productadd(introduces,family);
			request.setAttribute("msg", "商品添加成功！");
			request.getRequestDispatcher("add_product.jsp").forward(request, response);
		} catch (LoginException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("失败");
		}
	}
		
	private void moveuser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("userId");
		BizeMethod.moveuser(id);
		request.setAttribute("msg", "删除成功！");
		request.getRequestDispatcher("member_list.jsp").forward(request, response);
	}

	private void wmove(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("workerId");
		BizeMethod.move(id);
		request.setAttribute("msg", "删除成功！");
		request.getRequestDispatcher("administrator_list.jsp").forward(request, response);
	}

	private void wupdate(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		worker workers = BeanUtils.asBean(request, worker.class);
		BizeMethod.wupdate(workers);
		request.setAttribute("msg", "修改成功！");
		request.getRequestDispatcher("administrator_list.jsp").forward(request, response);	
	}

	private void edit(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String id = request.getParameter("workerId");
		worker workers = BizeMethod.editquery(id);
		request.setAttribute("editWorker", workers);
		request.getRequestDispatcher("Personal_info.jsp").forward(request, response);
	}

	private void addWorker(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		worker workers = BeanUtils.asBean(request, worker.class);
		String newpwd = request.getParameter("newpwd");
		String nwpwd = request.getParameter("wpwd");
		System.out.println(newpwd+""+nwpwd);
		try {
			BizeMethod.addWorker(workers,newpwd);
			queryWorker(request,response);
		} catch (LoginException e) {
			e.printStackTrace();
			request.setAttribute("msg", e.getMessage());
		}
	
	}

	private void queryWorker(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		worker workers = BeanUtils.asBean(request, worker.class);
		request.setAttribute("workerList",BizeMethod.findWorker(workers));
		request.getRequestDispatcher("administrator_list.jsp").forward(request, response);
	}

	
	private void edituser(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String id = request.getParameter("u");
		user u = BizeMethod.equery(id);
		request.setAttribute("editUser", u);
		request.getRequestDispatcher("member_list.jsp").forward(request, response);
	}
	private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String code = request.getParameter("code");
		String name = request.getParameter("username"); 
		String pwd = request.getParameter("userpwd");
		request.setAttribute("recordsList", BizeMethod.records(name));
		
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
			worker users = BizeMethod.login(code, name, pwd);
			if (s.equalsIgnoreCase(code)) {

				if (users != null) {
					request.getSession().setAttribute("longinUser", name);
					request.getRequestDispatcher("index.jsp").forward(request, response);
				} else {
					request.setAttribute("msg", "账号或密码错误！");
					request.getRequestDispatcher("login.jsp").forward(request, response);
				}
			} else {
				request.setAttribute("msg", "验证码填写错误！");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}

		} catch (LoginException e) {
			request.setAttribute("msg", e.getMessage());
			
		}
	}
	private void queryUser(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		user u = BeanUtils.asBean(request, user.class);
		request.setAttribute("userList", bmtd.findUser(u));
		request.getRequestDispatcher("member_list.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
