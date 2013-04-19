package lnyswz.oa.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import lnyswz.oa.bean.Message;
import lnyswz.oa.bean.MessageList;
import lnyswz.oa.dao.MessageDAO;
import lnyswz.oa.dao.PersonDAO;
import lnyswz.oa.service.MessageService;
import lnyswz.oa.utils.PagerModel;

public class MessageServiceImpl implements MessageService {
	MessageDAO messageDAO;
	PersonDAO personDAO;
	
	public void addMessage(Message message) {
		messageDAO.addMsg(message);
	}
	
	public void modifyMessage(Message message){
		messageDAO.modifyMsg(message);
	}
	
	public Message findMessage(int messageId){
		return messageDAO.findMsg(messageId);
	}
	
	public PagerModel sendedMessages(int personId){
		PagerModel pm = new PagerModel();
		
		List<Object> list = new ArrayList<Object>();
		
		pm = messageDAO.findMsgsBySender(personId);
		
		List<Object> messages = pm.getList();
		for(Object o : messages){
			Message message = (Message)o;
			
			MessageList msg = new MessageList();
		
			msg.setId(message.getId());
			msg.setSubject(message.getSubject());
			msg.setSendedTime(message.getSendedTime());
			msg.setReadTime(message.getReadTime());
			Set set = message.getReceivers();
			String recsStr = "";
			for(Object i : set){
				recsStr += (personDAO.findPerson((Integer)i).getName() + ";");
			}
			msg.setRecPersons(recsStr);
			list.add(msg);
		}
		
		pm.setList(list);
		
		return pm;
	}

	public void setMessageDAO(MessageDAO messageDAO) {
		this.messageDAO = messageDAO;
	}

	public void setPersonDAO(PersonDAO personDAO) {
		this.personDAO = personDAO;
	}
	
	
}
