import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;

public class appmain {
	@Autowired
	public static DataSource dataSource;
	public static void main(String[] args) {
		java.util.Date dt = new java.util.Date();

		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");

		String currentTime = sdf.format(dt);
		System.out.println(currentTime.toString());
		
	}

}
