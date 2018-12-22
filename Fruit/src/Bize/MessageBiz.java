package Bize;

import java.sql.Timestamp;
import java.util.ArrayList;

import Bean.message;
import Expection.LoginException;
import ly.DBHelper;

public class MessageBiz {

	public Object find(message messag) {
		String sql="select * from message where 1=1  ";
		ArrayList< Object> params =new ArrayList<Object>();
		if (messag.getTheme() != null && messag.getTheme().trim().isEmpty() == false) {
			sql +=" and theme like ? ";
			params.add("%"+messag.getTheme()+"%");
		}
		if (messag.getMtitle() != null && messag.getMtitle().trim().isEmpty() == false) {
			sql +=" and mtitle like ? ";
			params.add("%"+messag.getMtitle()+"%");
		}
		if (messag.getMstate() != null && messag.getMstate().trim().isEmpty() == false) {
			sql +=" and mstate like ? ";
			params.add("%"+messag.getMstate()+"%");
		}
		return DBHelper.select(sql, params);
	}

	public void add(message messag) throws BizException{
		if (messag.getMtitle() == null || messag.getMtitle().trim().isEmpty() ) {
			throw new BizException("标题不能为空！");
		}
		if (messag.getMdescription() == null || messag.getMdescription().trim().isEmpty() ) {
			throw new BizException("请简略介绍文章！");
		}
		if (messag.getMkeyword() == null || messag.getMkeyword().trim().isEmpty() ) {
			throw new BizException("请设置文章关键字！");
		}
		if (messag.getTheme() == null || messag.getTheme().trim().isEmpty() ) {
			throw new BizException("请设置文章主题！");
		}
		if (messag.getContent() == null || messag.getContent().trim().isEmpty() ) {
			throw new BizException("文章内容不能为空！");
		}
		
		java.sql.Timestamp now=new Timestamp(System.currentTimeMillis());
		String sql="insert into message(mtitle,mdescription,mkeyword,mtime,theme,mstate,content) values(?,?,?,?,?,?,?)";
		DBHelper.insert(sql,messag.getMtitle(),messag.getMdescription(),messag.getMkeyword(),now,
				messag.getTheme(),messag.getMstate(),messag.getContent());
	}

	public static void delete(String id) {
		String sql = "delete from message where mid=?";
		DBHelper.update(sql,id);
	}

	public static void fabu(String id) {
		String sql = "update message set mstate='已发布' where mid=?";
		DBHelper.update(sql, id);
	}
}
