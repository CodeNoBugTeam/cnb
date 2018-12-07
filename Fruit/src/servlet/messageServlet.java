package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ly.BeanUtils;
import Bean.message;
import Bize.BizException;
import Bize.MessageBiz;


/**
 * Servlet implementation class message
 */
@WebServlet("/message.s")
public class messageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	MessageBiz mbBiz=new MessageBiz();
	
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		String op = request.getParameter("op");
		if ("messa".equals(op)) {
			messa(request,response);
		}else if ("add".equals(op)) {
			add(request,response);
		}
	}

	private void add(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException,IOException{
		message messag=BeanUtils.asBean(request, message.class);		
		String theme=request.getParameter("form-field-radio");
		String content=request.getParameter("editorValue");
		
		String mstate="未发布";
		messag.setTheme(theme);
		messag.setMstate(mstate);
		messag.setContent(content);
		
		try {
			mbBiz.add(messag);
		} catch (BizException e) {
			e.printStackTrace();
			request.setAttribute("msg", e.getMessage());
		}finally {
			response.sendRedirect("Article_list.jsp");
		}
		
	}

	private void messa(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException,IOException {
		message messag=BeanUtils.asBean(request, message.class);
		request.setAttribute("messageList", mbBiz.find(messag));		
		request.getRequestDispatcher("Article_list.jsp").forward(request,response);	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
