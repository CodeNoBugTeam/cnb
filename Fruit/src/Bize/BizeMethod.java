package Bize;

import Bean.user;

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

}
