package lnyswz.oa.service.impl;

import lnyswz.oa.dao.MessageDAO;
import lnyswz.oa.service.SendedMessagesService;
import lnyswz.oa.service.ShowMessagesService;
import lnyswz.oa.utils.PagerModel;

public class SendedMessagesServiceImpl implements SendedMessagesService {
	private MessageDAO messageDAO;
	
	public PagerModel sendedMessages(int senderId) {
		return messageDAO.findMsgsBySender(senderId);
	}

	public void setMessageDAO(MessageDAO messageDAO) {
		this.messageDAO = messageDAO;
	}

}
