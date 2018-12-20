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
	public void zhangdan(checks check) {
		String sql1="insert into checks(uid,cdate,sendaddr,senddata,fapiao,sleave,zongji) values(?,?,?,?,?,?,?) ";
			
		DBHelper.insert(sql1, 1,check.getCdate(),check.getSendaddr(),check.getSenddata(),check.getFapiao(),
				check.getSleave(),check.getZongji());		
		
	}
	public void sanchu(String[] fids) {
		for (int i = 0; i < fids.length; i++) {
			DBHelper.update("delete from shoppingCart where uid=? and fin=?", 1,fids[i]);
		}
		
	}
	public void zhangdan2(List<food> list) {
		for(food food1 : list) {
			String sql2="insert into food(cid,fid,buynum,perprice,xiaoji) values(?,?,?,?,?) ";	
			DBHelper.insert(sql2, food1.getCid(),food1.getFid(),food1.getPerprice(),food1.getBuynum(),
					food1.getXiaoji());
		}
	}

}
