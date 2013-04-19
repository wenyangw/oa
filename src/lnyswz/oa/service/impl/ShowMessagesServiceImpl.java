package lnyswz.oa.service.impl;

import lnyswz.oa.dao.MessageDAO;
import lnyswz.oa.service.ShowMessagesService;
import lnyswz.oa.utils.PagerModel;

public class ShowMessagesServiceImpl implements ShowMessagesService {
	private MessageDAO messageDAO;
	
	public PagerModel showMessages(int receiverId, String isReaded) {
		if(isReaded.equals("2")){
			return messageDAO.findMsgsByReceiver(receiverId);
		}else{
			return messageDAO.findMsgsByStatus(receiverId, isReaded);
		}
	}
	
	public void setMessageDAO(MessageDAO messageDAO) {
		this.messageDAO = messageDAO;
	}

}
