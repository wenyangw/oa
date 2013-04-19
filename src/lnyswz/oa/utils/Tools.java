package lnyswz.oa.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Tools {
	
	public static String getTimeforName(){
		SimpleDateFormat format = new SimpleDateFormat("_yyyyMMdd_HHmmss");
		Date date = new Date();
		return format.format(date);
	}
	
	public static String getTimeForField(){
		SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date();
		return format.format(date);
	}
}
