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
 * message的servlet
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
		}else if("delete".equals(op)) {
			delete(request,response);
		}else if("query".equals(op)) {
			query(request,response);
		}else if("edit".equals(op)) {
			edit(request,response);
		}else if("suoying".equals(op)) {
			suoying(request,response);
		}else if("read".equals(op)) {
			read(request,response);
		}
	}

	private void read(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException,IOException{
		String mid=request.getParameter("id");	
		System.out.println(mid);
		request.setAttribute("message", mbBiz.findAll(mid));
		System.out.println(mbBiz.findAll(mid));
		request.getRequestDispatcher("wed/title.jsp").forward(request, response);		
	}

	private void suoying(HttpServletRequest request, HttpServletResponse response) 
				throws ServletException,IOException{
		message message=BeanUtils.asBean(request, message.class);		
		request.setAttribute("messageList", mbBiz.findAll());
		request.getRequestDispatcher("wed/consult.jsp").forward(request, response);
	}

	private void query(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		message m = BeanUtils.asBean(request, message.class);
		request.setAttribute("messageList", mbBiz.find(m));
		request.getRequestDispatcher("Article_list.jsp").forward(request, response);
	}

	private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		message m = BeanUtils.asBean(request, message.class);
		request.setAttribute("messageList", mbBiz.delete(m));
		request.getRequestDispatcher("Article_list.jsp").forward(request, response);
	}

	private void edit(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException,IOException{
		String id=request.getParameter("rel");
		System.out.println("+========="+id);
		

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
			response.sendRedirect("Article_list.jsp");
		} catch (BizException e) {
			e.printStackTrace();
			request.setAttribute("msg", e.getMessage());
		
			request.getRequestDispatcher("add_Article.jsp").forward(request,response);	
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
