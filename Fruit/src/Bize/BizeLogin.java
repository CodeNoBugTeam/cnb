package Bize;

import Bean.user;
import ly.DBHelper;

public class BizeLogin {

	public static user login(String name, String pwd) {
		String sql = "select * from user where uname=? and upwd=? ";
		return DBHelper.unique(sql, user.class, name, pwd);
	}

}
