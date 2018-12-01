package Bize;

import java.util.ArrayList;

import Bean.user;
import Bean.worker;
import Expection.LoginException;
import ly.DBHelper;

public class BizeMethod {

	public static user login(String code, String name, String pwd)
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
		String sql = "SELECT * from user where uname = ? and upwd = ?";
		Bean.user user = DBHelper.unique(sql, Bean.user.class,name,pwd);
		return user;
		
	}

	public static Object find(worker workers) {
		String sql = "select * from worker where 1=1 ";
		ArrayList<Object> param = new ArrayList<Object>();
		if(workers.getWname() != null && workers.getWname().trim().isEmpty() == false) {
			sql += "and name like ?";
			param.add("%"+workers.getWname()+"%");
		}
		if(workers.getWtel() != null && workers.getWtel().trim().isEmpty() == false) {
			sql += "and tel like ?";
			param.add("%"+workers.getWtel()+"%");
		}
		return DBHelper.select(sql, worker.class, param);
	}

}
