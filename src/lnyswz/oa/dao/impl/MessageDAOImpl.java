package lnyswz.oa.dao.impl;

import java.util.List;
import java.util.Set;

import lnyswz.oa.bean.Message;
import lnyswz.oa.bean.Paper;
import lnyswz.oa.dao.MessageDAO;
import lnyswz.oa.utils.AbstractPagerManager;
import lnyswz.oa.utils.PagerModel;

public class MessageDAOImpl extends AbstractPagerManager implements MessageDAO{
	public void addMsg(Message message) {
		Set<Paper> papers = (Set<Paper>)message.getAttachments();
		for(Paper paper : papers){
			this.getHibernateTemplate().save(paper);
		}
		this.getHibernateTemplate().save(message);
	}
	

	public void deleteMsg(int msgId) {
		this.getHibernateTemplate().delete(this.getHibernateTemplate().load(Message.class, msgId));
	}
	

	public void modifyMsg(Message message) {
		this.getHibernateTemplate().update(message);
	}
	

	public Message findMsg(int msgId) {
		return (Message)this.getHibernateTemplate().load(Message.class, msgId);
	}
	

	public PagerModel findAllMsgs() {
		return this.searchPaginated("from Message");
	}
	

	public PagerModel findMsgsBySender(int senderId) {
		return this.searchPaginated("from Message m where m.sender.id = ? order by m.sendedTime desc", senderId);
	}
	

	public PagerModel findMsgsByReceiver(int receiverId) {
		return this.searchPaginated("from Message m where ? in elements(m.receivers) order by m.sendedTime desc", receiverId);
	}
	

	public PagerModel findMsgsByStatus(int receiverId, String isReaded) {
		return this.searchPaginated("from Message m where ? in m.receivers and m.isRead = ?", new Object[]{receiverId, isReaded});
	}

}
