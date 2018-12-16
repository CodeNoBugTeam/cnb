package Bize;

import java.util.ArrayList;

import Bean.ShoppingAddress;
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

}
