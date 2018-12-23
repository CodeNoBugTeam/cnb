package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;

import Bean.user;
import Bize.Code;
import ly.BeanUtils;
import ly.DBHelper;

import mail.Mailtest;

@WebServlet("/forgetPwd.s")
public class forgetPwd extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String code;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String op = request.getParameter("op");
		if ("forgetPwd1".equals(op)) {
			forgetPwd1(request, response);
		} else if ("forgetPwd2".equals(op)) {
			forgetPwd2(request, response);
		} else if ("getCode".equals(op)) {
			getCode(request, response);
		} else if ("forgetPwd3".equals(op)) {
			forgetPwd3(request, response);
		}
	}

	private void forgetPwd3(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		user u = BeanUtils.asBean(request, user.class);
		String newPwd = request.getParameter("newUpwd");
		String uid = String.valueOf(request.getSession().getAttribute("uid"));
		if (newPwd.equals(u.getUpwd())) {
			String sql = "update user set upwd=? , utel=? where uid=? ";
			DBHelper.update(sql, u.getUpwd(), u.getUtel(), uid);
			request.getRequestDispatcher("wed/forgetPwd4.jsp").forward(request, response);
		}

	}

	private void getCode(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		System.out.println(email + "email");
		user u = mail(email);
		code = Code.achieveCode();
		Mailtest.sendMail(email, code);// 发送邮件
		request.getSession().setAttribute("uid", u.getUid());// 存入邮件
		// 将user数据发送给页面
		String userString = JSON.toJSONString(u);
		response.getWriter().append(userString);
	}

	private user mail(String email) {
		String sql = "select * from user where email=? ";
		System.out.println(email);
		return DBHelper.unique(sql, user.class, email);
	}

	private void forgetPwd2(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String mymail = request.getParameter("mymail");
		System.out.println(mymail);
		if (code.equalsIgnoreCase(mymail)) {
			request.getRequestDispatcher("wed/forgetPwd3.jsp").forward(request, response);
		} else {
			request.setAttribute("msg", "邮箱验证码错误！");
			request.getRequestDispatcher("wed/forgetPwd2.jsp").forward(request, response);
		}

	}

	private void forgetPwd1(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String code = request.getParameter("code");
		String username = request.getParameter("username");
		user u = DBHelper.unique("select* from user where uname=? ", user.class, username);
		String s = (String) request.getSession().getAttribute("piccode");
		if (s.equalsIgnoreCase(code) && u != null) {
			request.getRequestDispatcher("wed/forgetPwd2.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("wed/forgetPwd1.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
