package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import Bean.Paixu;

import Bean.Tongji;
import Bean.checks;
import Bean.food;

import Bean.introduce;

import Bean.user;
import Bean.worker;
import ly.BeanUtils;
import ly.DBHelper;
import Bize.BizeMethod;
import Bize.ShoppingBiz;
import Expection.LoginException;

@WebServlet("/user.s")
public class userServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String searchTop;
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
		}else if("Order_form".equals(op)) {
			Order_form(request,response);
		}else if("faHuo".equals(op)) {
			faHuo(request,response);
		}else if("detailed".equals(op)) {
			detailed(request,response);
		}else if("select1".equals(op)) {
			select1(request,response);

		}else if("paixu".equals(op)) {
			paixu(request,response);
		}else if("tongji".equals(op)) {
			tongji(request,response);
		}else if("recordsList".equals(op)) {
			recordsList(request,response);
		}
	}

	private void recordsList(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setAttribute("recordsList", BizeMethod.records());
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
	}

	private void paixu(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql = "select count(fid) num,b.fid,b.fname " + 
				"from (select a.fid,c.fname from food a,introduce c where a.fid=c.fin) b " + 
				"GROUP BY b.fid " + 
				"ORDER BY num desc";
		//System.out.println(DBHelper.select(sql, Paixu.class));
		request.setAttribute("paixu", DBHelper.select(sql, Paixu.class));
		
		//System.out.println(request.getAttribute("paixu"));
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
	}

	private void tongji(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {	
		Tongji tongji3=new Tongji();
	
		Tongji tongji=DBHelper.unique("select count(*) yiwancheng  from checks where state = ?", Tongji.class, "已完成");
		Tongji tongji1=DBHelper.unique("select count(*) weifahuo  from checks where state = ?", Tongji.class, "未发货");
		Tongji tongji2=DBHelper.unique("select count(*) yifahuo  from checks where state = ?", Tongji.class, "已发货");
		tongji3.setYiwancheng(tongji.getYiwancheng());
		tongji3.setWeifahuo(tongji1.getWeifahuo());
		tongji3.setYifahuo(tongji2.getYifahuo());
		System.out.println(tongji3);
		request.setAttribute("tongji", tongji3);
		request.getRequestDispatcher("index.jsp").forward(request, response);
		}

	private void select1(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String start = request.getParameter("start");
		String end = request.getParameter("end");
		String miss = request.getParameter("miss");
		System.out.println(start + "::" + end + "::" + miss);
		request.setAttribute("UnfinishedOrder", BizeMethod.select1(start, end, miss));
		request.getRequestDispatcher("Order_form.jsp").forward(request, response);
	}

	private void detailed(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String id = request.getParameter("id");
		String state = request.getParameter("state");
		
		request.setAttribute("food", ShoppingBiz.xiangqing(id));
		request.setAttribute("st", state);
		request.getRequestDispatcher("Order_form2.jsp").forward(request, response);
		}

	private void faHuo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		System.out.println(id + "id====================");
		String express = "圆通速运";
		BizeMethod.faHuo(express, id);
		request.setAttribute("msg", "发货成功！");
		request.getRequestDispatcher("Order_form.jsp?state=yes").forward(request, response);
		// response.sendRedirect("Order_form.jsp?state=yes");
	}

	private void Order_form(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String state = request.getParameter("state");
		if (state.equals("no")) {
			state = "未发货";
		} else if (state.equals("yes")) {
			state = "已完成";
		} else if (state.equals("noYes")) {
			state = "未完成";
		}
		searchTop = "";
		if (request.getParameter("searchTop") != null && !"".equals(request.getParameter("searchTop"))) {
			searchTop = request.getParameter("searchTop");
			byte source[] = searchTop.getBytes("iso8859-1");
			searchTop = new String(source, "UTF-8");
		}
		request.setAttribute("UnfinishedOrder", BizeMethod.UnfinishedOrder(state));
		System.out.println(BizeMethod.UnfinishedOrder(state));
		request.getRequestDispatcher("Order_form.jsp").forward(request, response);
	}

	private void productadd(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		introduce introduces = BeanUtils.asBean(request, introduce.class);
		String family = request.getParameter("family");
		String[] name = request.getParameterValues("fname");
		System.out.println(name);
		try {
			BizeMethod.productadd(introduces, family);
			request.setAttribute("msg", "商品添加成功！");
			request.getRequestDispatcher("add_product.jsp").forward(request, response);
		} catch (LoginException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("失败");
		}
	}

	private void moveuser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
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

	private void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
		System.out.println(newpwd + "" + nwpwd);
		try {
			BizeMethod.addWorker(workers, newpwd);
			queryWorker(request, response);
		} catch (LoginException e) {
			e.printStackTrace();
			request.setAttribute("msg", e.getMessage());
		}

	}

	private void queryWorker(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		worker workers = BeanUtils.asBean(request, worker.class);
		request.setAttribute("workerList", BizeMethod.findWorker(workers));
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
		worker u = BizeMethod.getUid1(name,pwd);
		//request.setAttribute("recordsList", BizeMethod.records(name));

		String s = (String) request.getSession().getAttribute("piccode");
		String[] arr = request.getParameterValues("checkbox");
		if(name == null || name.trim().isEmpty()) {
			request.setAttribute("msg", "用户名不能为空！");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		
	if(pwd == null || pwd.trim().isEmpty()) {
			request.setAttribute("msg", "密码不能为空！");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		
		if(DBHelper.unique("select * from worker where wname=? and wpwd=? ", user.class,name,pwd ) != null) {
			if(!s.equalsIgnoreCase(code)) {
				request.setAttribute("msg", "验证码错误！");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
			/*if(arr != null && arr.length >=0) {
				Cookie cookie = new Cookie(name,pwd);
				response.addCookie(cookie);
				cookie.setMaxAge(60*60*24*7);
				response.addCookie(cookie);
			}*/
			BizeMethod.records(name);
			request.getSession().setAttribute("longinUser", u.getWid());
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}/*else {
			Cookie[] cookies = request.getCookies();
			if(cookies == null || cookies.length == 0) {
				response.sendRedirect("login.jsp");
			}
			boolean falg = false;
			for(Cookie c : cookies) {
				if(c.getValue().equals(name)) {
					falg=true;
				}
			}
			if(falg) {
				BizeMethod.records(name);
				request.getSession().setAttribute("longinUser", u.getWid());
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}else {
				response.sendRedirect("login.jsp");
			}
		}*/
	}


	private void queryUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		user u = BeanUtils.asBean(request, user.class);
		request.setAttribute("userList", bmtd.findUser(u));
		request.getRequestDispatcher("member_list.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
