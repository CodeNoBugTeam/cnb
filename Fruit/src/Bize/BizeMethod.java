package Bize;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import Bean.Order;
import Bean.introduce;
import Bean.user;
import Bean.worker;
import Expection.LoginException;
import ly.DBHelper;
import Bean.record;
import Bean.shoppingCart;

public class BizeMethod {

	public static worker login(String code, String name, String pwd) throws LoginException {
		if (name == null || name.trim().isEmpty()) {
			throw new LoginException("用户名不能为空！");
		}

		if (code == null || code.trim().isEmpty()) {
			throw new LoginException("验证码不能为空！");
		}

		if (pwd == null || pwd.trim().isEmpty()) {
			throw new LoginException("密码不能为空！");
		}
		String sql = "select * from worker where wname = ? and wpwd = ?";
		worker user = DBHelper.unique(sql, worker.class, name, pwd);
		return user;
	}

	public Object findUser(user u) {
		String sql = "select * from user where 1=1";
		ArrayList<Object> params = new ArrayList<Object>();
		if (u.getUname() != null && u.getUname().trim().isEmpty() == false) {
			sql += " and uname like ?";
			params.add("%" + u.getUname() + "%");
		}
		if (u.getUtel() != null && u.getUtel().trim().isEmpty() == false) {
			sql += " and utel like ? ";
			params.add("%" + u.getUtel() + "%");
		}
		if (u.getUaddress() != null && u.getUaddress().trim().isEmpty() == false) {
			sql += " and uaddress like ?";
			params.add("%" + u.getUaddress() + "%");
		}
		if (u.getEmail() != null && u.getEmail().trim().isEmpty() == false) {
			sql += " and email like ?";
			params.add("%" + u.getEmail() + "%");
		}
		return DBHelper.select(sql, user.class, params);
	}

	public static Object findWorker(worker workers) {
		String sql = "select * from worker where 1=1 ";
		ArrayList<Object> param = new ArrayList<Object>();
		if (workers.getWname() != null && workers.getWname().trim().isEmpty() == false) {
			sql += "and wname like ?";
			param.add("%" + workers.getWname() + "%");
		}
		if (workers.getWtel() != null && workers.getWtel().trim().isEmpty() == false) {
			sql += "and wtel like ?";
			param.add("%" + workers.getWtel() + "%");
		}
		return DBHelper.select(sql, worker.class, param);
	}

	public static String getDate() {
		// 设置日期格式
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		// new Date()为获取当前系统时间
		return df.format(new Date());
	}

	public static void addWorker(worker w, String newpwd) throws LoginException {

		if (!w.getWpwd().equals(newpwd)) {
			throw new LoginException("两次输入的密码不一致，注意字母大小写！");
		}
		// String date = getDate();
		java.sql.Timestamp now = new Timestamp(System.currentTimeMillis());
		String sql = "insert into worker(wname,wpwd,wsex,wtel,wemail,jointime) values(?,?,?,?,?,?)";
		DBHelper.insert(sql, w.getWname(), w.getWpwd(), w.getWsex(), w.getWtel(), w.getWemail(), now);
	}

	public static worker editquery(String id) {
		String sql = "select * from worker where wid = ?";
		worker workers = DBHelper.unique(sql, worker.class, id);
		return workers;

	}

	public static user equery(String id) {
		String sql = "select * from user where uid = ?";
		user u = DBHelper.unique(sql, user.class, id);
		return u;
	}

	public static void wupdate(worker w) {
		String sql = "update worker set wname=?,wtel=?,wemail=?,wage=?,wsex=? where wid=?";
		DBHelper.update(sql, w.getWname(), w.getWtel(), w.getWemail(), w.getWage(), w.getWsex(), w.getWid());
	}

	public static void move(String id) {
		String sql = "delete from worker where wid=? ";
		DBHelper.update(sql, id);

	}

	public static void productadd(introduce intro, String family) throws LoginException {
		if (intro.getFin() > 10000 || intro.getFin() < 1000) {
			throw new LoginException("编码只能有四位！");
		}
		java.sql.Timestamp now = new Timestamp(System.currentTimeMillis());
		String sql = "insert into introduce(fin,ipic,fplace,details,family,"
				+ "number,price,jointime,fname) values(?,?,?,?,?,?,?,?,?)";
		DBHelper.insert(sql, intro.getFin(), intro.getIpic(), intro.getFplace(), intro.getDetails(), family,
				intro.getNumber(), intro.getPrice(), now, intro.getFname());

	}

	public static void records(String name) {
		Timestamp time = new Timestamp(System.currentTimeMillis());
		String sql = "insert into record (wname,logintime)values(?,?)";
		DBHelper.insert(sql, name, time);
	}

	public static List<introduce> queryFruit(introduce fruit, HttpServletRequest request, String searchTop) {

		return page(searchTop, request);

	}

	public static introduce queryFruitLemon( String fin) {

	
		String sql = "select * from introduce where fin=? ";
		return DBHelper.unique(sql, introduce.class, fin);
	}

	public static introduce queryFruitCar(String fin) {
		String sql = "select * from introduce where fin=?";
		return DBHelper.unique(sql, introduce.class, fin);

	}

	public static void addcar(introduce f, String id) {
		String sql = "insert into shoppingCart(uid,fin,ctime,fname,fdetails,fprice,fipic)" + "values(?,?,?,?,?,?,?)";
		java.sql.Timestamp now = new Timestamp(System.currentTimeMillis());
		DBHelper.update(sql, id, f.getFin(), now, f.getFname(), f.getDetails(), f.getPrice(), f.getIpic());

	}

	public static List<shoppingCart> queryCar(String uid) {
		String sql = "select * from shoppingCart where uid=? ";
		return DBHelper.select(sql, shoppingCart.class, uid);
	}

	public static void deleteCar(String uid, String fin) {
		String sql = "delete from shoppingCart where uid=? and fin=? ";
		DBHelper.update(sql, uid, fin);
	}

	public static void moveuser(String id) {
		String sql = "delete from user where uid = ?";
		DBHelper.update(sql, id);

	}

	public static List<Order> UnfinishedOrder(String state) {
		String sql = "SELECT a.* ,checks.* from food a," + "checks where a.cid=checks.cid and state=?";
		return DBHelper.select(sql, Order.class, state);
	}

	public static List<introduce> page(String searchTop, HttpServletRequest request) {

		int totalSize = 0;// 总记录数
		int perPageSize = 0;// 每页显示多少条
		int totalPage = 0;// 总页数
		int nowPage = 0;// 当前页数
		int start = 0;// 开始页
		int end = 0;// 结束页
		int beforePage = 0;// 前一页
		int afterPage = 0;// 后一页

		String sql2 = "select * from introduce ";

		boolean flag = false;
		if (!"".equals(searchTop) && searchTop != null && searchTop.trim().length() > 0) {
			sql2 = sql2 + " where fin like '%" + searchTop + "%'";
			flag = true;
			System.out.println("这是查询语句2" + sql2);

		}

		List<Map<String, Object>> list2 = DBHelper.select(sql2);

		// 总计录条数
		totalSize = list2.size();
		// System.out.print(totalSize);
		// 每页显示2条
		perPageSize = 4;
		// 总页数
		if (totalSize % perPageSize == 0) {
			totalPage = totalSize / perPageSize;
		} else {
			totalPage = totalSize / perPageSize + 1;
		}
		// 当前页
		if (request.getParameter("nowPage") == null || "".equals(request.getParameter("nowPage"))) {
			nowPage = 1;
		} else {
			nowPage = Integer.parseInt(request.getParameter("nowPage"));
		}
		// 判断上下页是否存在
		if (nowPage == 1) {
			beforePage = 1;
		} else if ("beforePage".equals(request.getParameter("before"))) {
			nowPage = nowPage - 1;
		}

		if (nowPage == totalPage) {
			nowPage = totalPage;
		} else if ("afterPage".equals(request.getParameter("after"))) {
			nowPage = nowPage + 1;
		}

		start = (nowPage - 1) * perPageSize;
		end = perPageSize;
		String sql = "";
		if (flag) {
			sql = "select * from introduce where fin like'%" + searchTop + "%' limit " + start + "," + end;
		} else {
			sql = "select * from introduce limit " + start + "," + end;
		}
		List<introduce> list = DBHelper.select(sql, introduce.class);
		return list;
	}

	public static void faHuo(String express, String id) {
		String state = "已完成";
		String sql = "update checks set express=?,state=? where cid=?";
		DBHelper.update(sql, express, state, id);

	}

	public static List<introduce> queryHotFruit(introduce fruit, HttpServletRequest request, String searchTop) {

		return page1(searchTop, request);

	}

	private static List<introduce> page1(String searchTop, HttpServletRequest request) {
		int totalSize = 0;// 总记录数
		int perPageSize = 0;// 每页显示多少条
		int totalPage = 0;// 总页数
		int nowPage = 0;// 当前页数
		int start = 0;// 开始页
		int end = 0;// 结束页
		int beforePage = 0;// 前一页
		int afterPage = 0;// 后一页

		String sql2 = "select * from introduce ";

		boolean flag = false;
		if (!"".equals(searchTop) && searchTop != null && searchTop.trim().length() > 0) {
			sql2 = sql2 + " where fin like '%" + searchTop + "%'";
			flag = true;
			System.out.println("这是查询语句2" + sql2);

		}

		List<Map<String, Object>> list2 = DBHelper.select(sql2);

		// 总计录条数
		totalSize = list2.size();
		// System.out.print(totalSize);
		// 每页显示2条
		perPageSize = 6;
		// 总页数
		if (totalSize % perPageSize == 0) {
			totalPage = totalSize / perPageSize;
		} else {
			totalPage = totalSize / perPageSize + 1;
		}
		// 当前页
		if (request.getParameter("nowPage") == null || "".equals(request.getParameter("nowPage"))) {
			nowPage = 1;
		} else {
			nowPage = Integer.parseInt(request.getParameter("nowPage"));
		}
		// 判断上下页是否存在
		if (nowPage == 1) {
			beforePage = 1;
		} else if ("beforePage".equals(request.getParameter("before"))) {
			nowPage = nowPage - 1;
		}

		if (nowPage == totalPage) {
			nowPage = totalPage;
		} else if ("afterPage".equals(request.getParameter("after"))) {
			nowPage = nowPage + 1;
		}

		start = (nowPage - 1) * perPageSize;
		end = perPageSize;
		String sql = "";
		if (flag) {
			sql = "select * from introduce where fin like'%" + searchTop + "%' limit " + start + "," + end;
		} else {
			sql = "select * from introduce limit " + start + "," + end;
		}
		List<introduce> list = DBHelper.select(sql, introduce.class);
		return list;
	}

	public static List<introduce> buy(String fin) {
		String sql = "select * from introduce where fin=?";
		return DBHelper.select(sql, introduce.class, fin);
	}

	public static float buyPrice(String fin) {
		String sql = "select * from introduce where fin=?";
		introduce a = DBHelper.unique(sql, introduce.class, fin);
		return a.getPrice();
	}

	public static List<introduce> buy1(String[] a) {
		List<introduce> list = new ArrayList<introduce>();
		for (int i = 0; i < a.length; i++) {
			if (!"".equals(a[i]) && a[i] != null) {
				String sql = "select * from introduce where fin=?";
				introduce intor = DBHelper.unique(sql, introduce.class, a[i]);
				list.add(intor);
			}
		}
		return list;
	}

	public static float buysum(String[] a) {
		// List<introduce> list = new ArrayList<introduce>();
		float b = 0;
		for (int i = 0; i < a.length; i++) {
			if (!"".equals(a[i]) && a[i] != null) {
				String sql = "select * from introduce where fin=?";
				introduce intor = DBHelper.unique(sql, introduce.class, a[i]);
				// list.add(intor);
				b = b + intor.getPrice();
			}
		}
		return b;
	}

	public static List<Order> select1(String start, String end, String miss) {
		String sql = "select * from checks where 1 = 1 ";
		ArrayList<Object> param = new ArrayList<Object>();
		if (start != null && !"".equals(start)) {
			sql = sql + "and cdate > ?";
			param.add(start);
		}
		if (end != null && !"".equals(end)) {
			sql = sql + "and cdate < ? ";
			param.add(end);
		}
		if (miss != null && !"".equals(miss)) {
			sql += "and sendaddr like ?";
			param.add("%" + miss + "%");
		}
		return DBHelper.select(sql, Order.class, param);

	}


	public static List<record>  records() {
		String sql1 = "select * from record";
		return DBHelper.select(sql1, record.class);
	}

	public static user getUid(String name, String pwd) {
		String sql = "select * from user where 1 = 1 ";
		ArrayList<Object> param = new ArrayList<Object>();
		if (name != null && !"".equals(name)) {
			sql = sql + "and uname = ?";
			param.add(name);
		}
		if (pwd != null && !"".equals(pwd)) {
			sql = sql + "and upwd = ?";
			param.add(pwd);
		}
		return DBHelper.unique(sql, user.class, param);
	}

	public static worker getUid1(String name, String pwd) {
		String sql = "select * from worker where 1 = 1 ";
		ArrayList<Object> param = new ArrayList<Object>();
		if (name != null && !"".equals(name)) {
			sql = sql + "and wname = ?";
			param.add(name);
		}
		if (pwd != null && !"".equals(pwd)) {
			sql = sql + "and wpwd = ?";
			param.add(pwd);
		}
		return DBHelper.unique(sql, worker.class, param);
	}

}
