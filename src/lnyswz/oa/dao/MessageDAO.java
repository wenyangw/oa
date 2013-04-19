package lnyswz.oa.dao;

import java.util.List;

import lnyswz.oa.bean.Message;
import lnyswz.oa.utils.PagerModel;

public interface MessageDAO {
	public void addMsg(Message message);
	
	public void deleteMsg(int msgId);
	
	public void modifyMsg(Message message);
	
	public Message findMsg(int msgId);
	
	public PagerModel findAllMsgs();
	
	public PagerModel findMsgsBySender(int senderId);
	
	public PagerModel findMsgsByReceiver(int receiverId);
	
	public PagerModel findMsgsByStatus(int receiverId, String isReaded);
	
}
