package Bize;

<<<<<<< HEAD
import java.util.ArrayList;

import Bean.user;
=======
import Bean.user;

>>>>>>> branch 'master' of https://github.com/CodeNoBugTeam/cnb.git
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
<<<<<<< HEAD
	}
	public Object find(user u) {
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
		return DBHelper.select(sql, params);
=======
		String sql = "SELECT * from user where uname = ? and upwd = ?";
		Bean.user user = DBHelper.unique(sql, Bean.user.class,name,pwd);
		return user;
		
>>>>>>> branch 'master' of https://github.com/CodeNoBugTeam/cnb.git
	}

}
