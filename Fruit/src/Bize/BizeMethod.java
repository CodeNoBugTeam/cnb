package Bize;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import Bean.introduce;
import Bean.user;
import Bean.worker;
import Expection.LoginException;
import ly.DBHelper;
import Bean.record;

public class BizeMethod {

	public static worker login(String code, String name, String pwd)
			throws LoginException {
		if(name == null || name.trim().isEmpty()) {
			throw new LoginException("用户名不能为空！");
		}
		
		if(code == null || code.trim().isEmpty()) {
			throw new LoginException("验证码不能为空！");
		}
		
		if(pwd == null || pwd.trim().isEmpty()) {
			throw new LoginException("密码不能为空！");
		}
		String sql = "select * from worker where wname = ? and wpwd = ?";
		worker user = DBHelper.unique(sql,worker.class,name,pwd);
		return user;
	}
	public Object findUser(user u) {
		String sql = "select * from user where 1=1";
		ArrayList<Object> params = new ArrayList<Object>();
		if(u.getUname() != null && u.getUname().trim().isEmpty() == false) {
			sql += " and uname like ?";
			params.add("%" + u.getUname() + "%");
		}
		if(u.getUtel() != null && u.getUtel().trim().isEmpty() == false) {
			sql += " and tel like ? ";
			params.add("%" + u.getUtel() + "%");
		}
		if(u.getUaddress() != null && u.getUaddress().trim().isEmpty() == false) {
			sql += " and address like ?";
			params.add("%" + u.getUaddress() + "%");
		}
		if(u.getEmail() != null && u.getEmail().trim().isEmpty() == false) {
			sql += " and email like ?";
			params.add("%" + u.getEmail() + "%");
		}
		return DBHelper.select(sql,user.class, params);
		/*String sql = "SELECT * from user where uname = ? and upwd = ?";
		Bean.user user = DBHelper.unique(sql, Bean.user.class,name,pwd);
		return user;*/
	}

	public static Object findWorker(worker workers) {
		String sql = "select * from worker where 1=1 ";
		ArrayList<Object> param = new ArrayList<Object>();
		if(workers.getWname() != null && workers.getWname().trim().isEmpty() == false) {
			sql += "and wname like ?";
			param.add("%"+workers.getWname()+"%");
		}
		if(workers.getWtel() != null && workers.getWtel().trim().isEmpty() == false) {
			sql += "and wtel like ?";
			param.add("%"+workers.getWtel()+"%");
		}
		return DBHelper.select(sql, worker.class, param);
	}
	
	public static String getDate() {
		//设置日期格式
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		// new Date()为获取当前系统时间
        return df.format(new Date());
	}
	
	public static void addWorker(worker w, String newpwd) throws LoginException {
		
		if(! w.getWpwd().equals(newpwd)) {
			throw new LoginException("两次输入的密码不一致，注意字母大小写！");
			
		}
		//String date = getDate();
		java.sql.Timestamp now = new Timestamp(System.currentTimeMillis());
		String sql = "insert into worker(wname,wpwd,wsex,wtel,wemail,jointime) values(?,?,?,?,?,?)";
		DBHelper.insert(sql,w.getWname(),w.getWpwd(),w.getWsex(),w.getWtel(),w.getWemail(), now);	
	}
	public static worker editquery(String id) {
		String sql = "select * from worker where wid = ?";
		worker workers = DBHelper.unique(sql, worker.class, id);
		return workers;
		
	}
	public static void wupdate(worker w) {
		String sql = "update worker set wname=?,wtel=?,wemail=?,wage=?,wsex=? where wid=?";
		DBHelper.update(sql,w.getWname(),w.getWtel(),w.getWemail(),w.getWage(),w.getWsex(),w.getWid() );	
	}
	public static void move(String id) {
		String sql = "delete from worker where wid=? ";
		DBHelper.update(sql,id);
		
	}
	public static void productadd(introduce intro, String family) throws LoginException {
		if(intro.getFin() > 10000 || intro.getFin() < 1000) {
			throw new LoginException("编码只能有四位！");
		}
		java.sql.Timestamp now = new Timestamp(System.currentTimeMillis());
		String sql = "insert into introduce(fin,ipic,fplace,details,family,"
				+ "number,price,jointime,fname) values(?,?,?,?,?,?,?,?,?)";
		DBHelper.insert(sql,intro.getFin(),intro.getIpic(),intro.getFplace(),intro.getDetails(),
				family,intro.getNumber(),intro.getPrice(),now,intro.getFname());
		
		
		}
	public static List<record> records(String name) {
		Timestamp time = new Timestamp(System.currentTimeMillis());
		String sql = "insert into record (wname,logintime)values(?,?)";
		String sql1 = "select * from record";
		DBHelper.insert(sql, name,time);
		return DBHelper.select(sql1, record.class);
	}
	

}
