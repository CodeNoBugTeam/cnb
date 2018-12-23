package Bize;

import java.util.List;

import Bean.user;
import Expection.LoginException;
import ly.DBHelper;

public class WebBiz {

	public static user login(String name, String pwd) throws LoginException {
		if (name == null || name.trim().isEmpty()) {
			throw new LoginException("用户名不能为空！");
		}
		if (pwd == null || pwd.trim().isEmpty()) {
			throw new LoginException("密码不能为空！");
		}
		String sql = "select * from user where uname = ? and upwd = ?";
		user u = DBHelper.unique(sql, user.class, name, pwd);
		return u;
	}

	public static List<List<Object>> addUser(user u) {
		String sql = "insert into user(uname,truename,utel,email,uaddress,upwd) value(?,?,?,?,?,?)";
		return DBHelper.insert(sql, u.getUname(), u.getTruename(), u.getUtel(), u.getEmail(), u.getUaddress(),
				u.getUpwd());
	}

}
