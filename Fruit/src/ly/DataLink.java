package ly;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

public class DataLink {
	public static void main(String[] args) {
		/*String sql = "select * from user";
		List<Map<String,Object>>list = DBHelper.select(sql);
		System.out.println(list);*/
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		// new Date()为获取当前系统时间
        System.out.println(df.format(new Date()));
	}

}
