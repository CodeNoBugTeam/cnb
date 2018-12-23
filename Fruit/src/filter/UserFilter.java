package filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

@WebFilter(urlPatterns = {"*.jsp","*.c"})
public class UserFilter implements Filter {

	public void destroy() {

	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		
		  String path = httpRequest.getServletPath();
		  
		  
		 if(path.endsWith("login.jsp") || path.endsWith("user.s")|| 
				 path.endsWith("index1.jsp") || path.endsWith("hot.jsp")||
				 path.endsWith("forgetPwd1.jsp")
				 ||path.endsWith("forgetPwd2.jsp")
				 ||path.endsWith("forgetPwd3.jsp")
				 ||path.endsWith("forgetPwd4.jsp")) {
			 chain.doFilter(request, response); return; 
			}
		 
		 if(httpRequest.getSession().getAttribute("longinUser") != null) {
			  chain.doFilter(request, response); }else { request.setAttribute("msg","请先登录！");
			  request.getRequestDispatcher("login.jsp").forward(request,response);
		  }
		 
		chain.doFilter(request, response);
	}

	public void init(FilterConfig fConfig) throws ServletException {

	}

}
