package lnyswz.oa.test;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String hql = "from Message m where m.id = ? order by m.sendedTime";
		//String hql = "from Message m where m.id = ?";
		int index = hql.indexOf("from");
		//¹ıÂËµôorder by ÄÚÈİ
		int order = hql.indexOf("order by");
		System.out.println("index:" + index);
		System.out.println("order:" + order);
		if(index != -1){
			if (order != -1)
				System.out.println(hql.substring(index, order - index));
			else{
				System.out.println(hql.substring(index));
			}
		}
	}

}
