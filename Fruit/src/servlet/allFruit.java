package servlet;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;

import Bize.Page;
import Bize.PageData;
import ly.BeanUtils;
import ly.DBHelper;


@WebServlet("/allFruit.s")
public class allFruit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		
		Page page = BeanUtils.asBean(request,Page.class );
		int beginRows = (page.getPage()-1)*page.getRows() + 1;
		int endRows =page.getPage()*page.getRows();
		
		String sql = "select * from introduce limit "+beginRows+","+endRows;
		//查询当前数据
		PageData pd = new PageData();
		System.out.println(DBHelper.select(sql));
		pd.setRows(DBHelper.select(sql));
		sql="select count(*) cnt from introduce";
		
		pd.setTotal(BigDecimal.valueOf((long) DBHelper.uniqueValue(sql, "cnt")));
		String s = JSON.toJSONString(pd);
		response.getWriter().append(s);
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
