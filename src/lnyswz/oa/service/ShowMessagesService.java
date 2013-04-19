package lnyswz.oa.service;

import lnyswz.oa.utils.PagerModel;

public interface ShowMessagesService {
	public static final String READED = "1";
	public static final String UNREAD = "0";
	public static final String ALL = "2";
	
	public PagerModel showMessages(int receiverId, String isReaded);
}
