package ly;

import java.util.List;
import java.util.Map;

public class DataLink {
	public static void main(String[] args) {
		String sql = "select * from user";
		List<Map<String,Object>>list = DBHelper.select(sql);
		System.out.println(list);
	}

}
