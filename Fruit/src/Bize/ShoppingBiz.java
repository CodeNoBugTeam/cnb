package Bize;


import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import Bean.ShoppingAddress;
import Bean.checks;
import Bean.food;
import ly.DBHelper;

public class ShoppingBiz {

	public Object find(ShoppingAddress shoppingAddress) {
		String sql="select * from shoppingaddress where 1=1  ";	
		return DBHelper.select(sql,ShoppingAddress.class);
	}
	public void add(ShoppingAddress shoppingAddress) {
		String sql="insert into shoppingAddress values(1,?,?,?,?,?,?,?,?) ";
		DBHelper.insert(sql, shoppingAddress.getSname(),shoppingAddress.getStel(),shoppingAddress.getSprovince(),shoppingAddress.getScity(),
				shoppingAddress.getScounty(),shoppingAddress.getSstreet(),shoppingAddress.getSpostcode(),shoppingAddress.getSinput());
		
	}
	public void zhangdan(checks check, food food) {
		String sql1="insert into checks(uid,cdate,sendaddr,senddata,fapiao,sleave,zongji) values(?,?,?,?,?,?,?) ";
		String sql2="insert into food(cid,fid,buynum,perprice,xiaoji) values(?,?,?,?,?) ";
		
		java.sql.Timestamp now=new Timestamp(System.currentTimeMillis());
		DBHelper.insert(sql1, 1,now,check.getSendaddr(),check.getSenddata(),check.getFapiao(),check.getSleave(),check.getZongji());
		checks  params =new checks();
		params=DBHelper.unique("select cid from checks where cdata = ? ",checks.class, now);
		
		DBHelper.insert(sql2, params.getCid(),food.getFid(),food.getPerprice(),food.getBuynum(),food.getXiaoji());

	}

}
