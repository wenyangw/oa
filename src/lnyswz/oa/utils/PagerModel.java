package lnyswz.oa.utils;

import java.util.Collections;
import java.util.List;

/**
 * 
 * @author zudajun225
 *
 */
public class PagerModel {
	
	/**
	 * �ܼ�¼��
	 */
	private int total;
	
	//��ǰҳ�Ľ����
	private List<Object> list;

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}
	/**
	 * ����Organization�ļ���
	 * @return List&lt;Organization&gt; (size >=0)
	 */
	public List<Object> getList() {
		return list == null? Collections.<Object>emptyList() : list;
	}

	public void setList(List<Object> list) {
		this.list = list;
	}
}
