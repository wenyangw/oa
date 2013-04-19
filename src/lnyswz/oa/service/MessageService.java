package lnyswz.oa.service;

import java.util.List;

import lnyswz.oa.bean.Message;
import lnyswz.oa.bean.MessageList;
import lnyswz.oa.utils.PagerModel;

public interface MessageService {
	public void addMessage(Message message);
	public void modifyMessage(Message message);
	public Message findMessage(int messageId);
	public PagerModel sendedMessages(int personId);

}
