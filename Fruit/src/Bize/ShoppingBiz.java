package Bize;



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
		String sql="insert into shoppingAddress values(?,?,?,?,?,?,?,?,?) ";
		DBHelper.insert(sql,shoppingAddress.getUid(),shoppingAddress.getSname(),shoppingAddress.getStel(),shoppingAddress.getSprovince(),shoppingAddress.getScity(),
				shoppingAddress.getScounty(),shoppingAddress.getSstreet(),shoppingAddress.getSpostcode(),shoppingAddress.getSinput());
		
	}
	public void zhangdan(checks check) {
		String sql1="insert into checks(uid,cdate,sendaddr,senddata,fapiao,sleave,zongji,state) values(?,?,?,?,?,?,?,?) ";
			
		DBHelper.insert(sql1, check.getUid(),check.getCdate(),check.getSendaddr(),check.getSenddata(),check.getFapiao(),
				check.getSleave(),check.getZongji(),"未发货");		
		
	}
	public void sanchu(String uid, String[] fids) {
		for (int i = 0; i < fids.length; i++) {
			DBHelper.update("delete from shoppingCart where uid=? and fin=?", uid,fids[i]);
		}
		
	}
	public void zhangdan2(List<food> list) {
		for(food food1 : list) {
			String sql2="insert into food(cid,fid,buynum,perprice,xiaoji) values(?,?,?,?,?) ";	
			DBHelper.insert(sql2, food1.getCid(),food1.getFid(),food1.getPerprice(),food1.getBuynum(),
					food1.getXiaoji());
		}
	}
	public static List<food> xiangqing(String id) {
		String sql ="select * from food where cid = ?";
		return DBHelper.select(sql, food.class, id);
	}

}
