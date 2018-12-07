package Bize;

import java.sql.Timestamp;
import java.util.ArrayList;

import Bean.message;
import ly.DBHelper;

public class MessageBiz {

	public Object find(message messag) {
		String sql="select * from message where 1=1  ";
		ArrayList< Object> params =new ArrayList<Object>();
		if (messag.getMtitle() != null && messag.getMtitle().trim().isEmpty() == false) {
			sql +=" and mtitle like ? ";
			params.add("%"+messag.getMtitle()+"%");
		}
	
		
		return DBHelper.select(sql, params);
	}

	public void add(message messag) throws BizException{
		java.sql.Timestamp now=new Timestamp(System.currentTimeMillis());
		String sql="insert into message(mtitle,mdescription,mkeyword,mtime,theme,mstate,content) values(?,?,?,?,?,?,?)";
		DBHelper.insert(sql,messag.getMtitle(),messag.getMdescription(),messag.getMkeyword(),now,
				messag.getTheme(),messag.getMstate(),messag.getContent());
		
	}

}
