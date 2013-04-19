package lnyswz.oa.utils;

import java.util.List;

import org.hibernate.Query;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import lnyswz.oa.utils.PagerModel;
import lnyswz.oa.utils.SystemContext;

public class AbstractPagerManager extends HibernateDaoSupport {
	
	public PagerModel searchPaginated(String hql) {
		return this.searchPaginated(hql, null, SystemContext.getOffset(), SystemContext.getPagesize());
	}
	
	public PagerModel searchPaginated(String hql, Object param) {
		return this.searchPaginated(hql, new Object[]{param}, SystemContext.getOffset(), SystemContext.getPagesize());
	}
	
	public PagerModel searchPaginated(String hql, Object[] params) {
		return this.searchPaginated(hql, params, SystemContext.getOffset(), SystemContext.getPagesize());
	}
	
	public PagerModel searchPaginated(String hql,int offset, int pagesize) {
		return this.searchPaginated(hql, null, offset, pagesize);
	}
	
	public PagerModel searchPaginated(String hql, Object obj, int offset, int pagesize) {
		return this.searchPaginated(hql, new Object[]{obj}, offset, pagesize);
	}
	
	/**
	 * ����Hql���Խ��з�ҳ
	 * @param hql HQL���
	 * @param params HQL���Ĳ���
	 * @param offset �ӵڼ�����¼��ʼ��ѯ
	 * @param pagesize ÿҳ��ʾ������
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public PagerModel searchPaginated(String hql,Object[] params, int offset, int pagesize) {
		
		
		//��ȡ�ܼ�¼��
		String countHql = this.getCountQuery(hql);
		Query query = this.getSession().createQuery(countHql);
		if(query != null && params != null && params.length > 0) {
			for(int i=0; i<params.length; i++) {
				query.setParameter(i, params[i]);
			}
		}
		
		int total = ((Long)query.uniqueResult()).intValue();
		//��õ�ǰҳ�Ľ����
		query = this.getSession().createQuery(hql);
		if(query != null && params != null && params.length > 0) {
			for(int i=0; i<params.length; i++) {
				query.setParameter(i, params[i]);
			}
		}
		query.setFirstResult(offset);
		query.setMaxResults(pagesize);
		List<Object> list = query.list();
		
		PagerModel pm = new PagerModel();
		pm.setTotal(total);
		pm.setList(list);
		
		return pm;
		
	}
	
	private String getCountQuery(String hql) {
		int index = hql.indexOf("from");
		//���˵�order by ����
		int order = hql.indexOf("order by");
		
		if(index != -1){
			if(order != -1){  //��orber by����
				return "select count(*) " + hql.substring(index, order - index);
			}else{
				return "select count(*) " + hql.substring(index);
			}
		}
		
		System.out.println("�������");
		throw new RuntimeException("��Ч��HQL��ѯ��䣡");
	}
}
