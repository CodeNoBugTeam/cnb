package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import Bean.introduce;
import Bean.shoppingCart;
import Bize.BizeMethod;
import ly.BeanUtils;

import com.alibaba.fastjson.JSON;

import Bean.ShoppingAddress;
import Bize.ShoppingBiz;

@WebServlet("/customer.s")
public class ShoppingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ShoppingBiz shoppingBiz=new ShoppingBiz();
	String searchTop = "";
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String buy = request.getParameter("buy");
		if("lemon".equals(buy)) {			
			lemon(request,response);
		}else if("addCar".equals(buy)) {
			addCar(request,response);			
		}else if("buy".equals(buy)) {
			buy(request,response);
			
		}else if("queryFruit".equals(buy)) {
			queryFruit(request,response);
		}else if("queryCar".equals(buy)) {
			queryCar(request,response);
		}else if("deleteCar".equals(buy)) {
			deleteCar(request,response);
		}else if("addr".equals(buy)) {
			addr(request,response);
		}else if("addadres".equals(buy)) {
			addadres(request,response);
		}else if("queryhotFruit".equals(buy)) {
			queryHotFruit(request,response);
		}
			
	}

	private void buy(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String fin = request.getParameter("addcar");
		request.setAttribute("buy",BizeMethod.buy(fin));
		
		request.getRequestDispatcher("wed/OrderFrom.jsp").forward(request, response);
	}

	private void queryHotFruit(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		searchTop = "";
		if(request.getParameter("searchTop") != null && !"".equals(request.getParameter("searchTop"))){
			searchTop = request.getParameter("searchTop");
			byte source[] = searchTop.getBytes("iso8859-1");
			searchTop = new String(source,"UTF-8");
		}
		introduce fruit = BeanUtils.asBean(request, introduce.class);
		request.setAttribute("hot", BizeMethod.queryHotFruit(fruit,request,searchTop));
		request.getRequestDispatcher("wed/hot.jsp").forward(request, response);	
		
	}
	
	private void addadres(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException,IOException{
		System.out.println("======================================");
		
		response.setCharacterEncoding("utf-8");
		ShoppingAddress shoppingAddress=BeanUtils.asBean(request, ShoppingAddress.class);
		System.out.println(shoppingAddress.getSname()+"========");
		String msg = null;
		try {
			shoppingBiz.add(shoppingAddress);
			msg = "录入成功";
		} catch (Exception e) {
			e.printStackTrace();	
			msg=e.getMessage();
		}
		String userString =JSON.toJSONString(msg);
		
		response.getWriter().append(userString);
	}


	private void addr(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException,IOException{
		ShoppingAddress shoppingAddress=BeanUtils.asBean(request, ShoppingAddress.class);
		request.setAttribute("ShoppingList", shoppingBiz.find(shoppingAddress));	
		System.out.println(request.getAttribute("ShoppingList"));
		request.getRequestDispatcher("wed/OrderFrom.jsp").forward(request,response);
	}


	private void deleteCar(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		//获取用户id
		String uid="1";
		String fin = request.getParameter("fin");
		BizeMethod.deleteCar(uid,fin);
		request.setAttribute("msg", "购物车商品删除成功！");
		request.getRequestDispatcher("wed/Shopping.jsp").forward(request, response);
	}


	private void queryCar(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		//获取用户id
		String uid = "1";
		List<shoppingCart> car = BizeMethod.queryCar(uid);
		request.setAttribute("carList", BizeMethod.queryCar(uid));
		request.getRequestDispatcher("wed/Shopping.jsp").forward(request, response);
		
	}


	private void addCar(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String fin = request.getParameter("addcar");
		//得到用户id,以后的改；
		String id="1";
		introduce car = BizeMethod.queryFruitCar(fin);
		BizeMethod.addcar(car,id);
		request.setAttribute("msg", "加入购物车成功！");
		request.getRequestDispatcher("wed/lemon.jsp").forward(request, response);
		
	}


	private void lemon(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String fin = request.getParameter("id");
		introduce fruit = BeanUtils.asBean(request, introduce.class);
		request.setAttribute("fruitListLemon", BizeMethod.queryFruitLemon(fruit,fin));
		request.getRequestDispatcher("wed/lemon.jsp").forward(request, response);
	}


	private void queryFruit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 searchTop = "";
		if(request.getParameter("searchTop") != null && !"".equals(request.getParameter("searchTop"))){
			searchTop = request.getParameter("searchTop");
			byte source[] = searchTop.getBytes("iso8859-1");
			searchTop = new String(source,"UTF-8");
		}
		introduce fruit = BeanUtils.asBean(request, introduce.class);
		request.setAttribute("fruitList", BizeMethod.queryFruit(fruit,request,searchTop));
		request.getRequestDispatcher("wed/index.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
