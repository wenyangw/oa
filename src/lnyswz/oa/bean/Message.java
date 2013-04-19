package lnyswz.oa.bean;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * 
 * @author wenyang
 * @hibernate.class table="t_message"
 */
public class Message implements Serializable{
	private int id;
	private String subject;
	private String content;
	private String sendedTime;
	private String readTime;
	private String isRead;
	private Person sender;
	private String receiverType;
	private Set receivers = new HashSet();
	private Set<Paper> attachments;
	
	/**
	 * 
	 * @return
	 * @hibernate.id
	 * 	generator-class="native"
	 */
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * 
	 * @return
	 * @hibernate.property
	 */
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	/**
	 * 
	 * @return
	 * @hibernate.property
	 */
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	/**
	 * 
	 * @return
	 * @hibernate.property
	 */
	public String getSendedTime() {
		return sendedTime;
	}
	public void setSendedTime(String sendedTime) {
		this.sendedTime = sendedTime;
	}
	/**
	 * 
	 * @return
	 * @hibernate.property
	 */
	public String getReadTime() {
		return readTime;
	}
	public void setReadTime(String readTime) {
		this.readTime = readTime;
	}
	/**
	 * 
	 * @return
	 * @hibernate.property
	 */
	public String getIsRead() {
		return isRead;
	}
	public void setIsRead(String isRead) {
		this.isRead = isRead;
	}
	/**
	 * 
	 * @return
	 * @hibernate.many-to-one 
	 */
	public Person getSender() {
		return sender;
	}
	public void setSender(Person sender) {
		this.sender = sender;
	}
	/**
	 * 
	 * @return
	 * @hibernate.property
	 */
	public String getReceiverType() {
		return receiverType;
	}
	public void setReceiverType(String receiverType) {
		this.receiverType = receiverType;
	}
	/**
	 * 
	 * @return
	 * @hibernate.set table="t_receivers"
	 * @hibernate.key column="messageId"
	 * @hibernate.element type="int" column="receiverId"
	 */
	public Set getReceivers() {
		return receivers;
	}
	public void setReceivers(Set receivers) {
		this.receivers = receivers;
	}
	/**
	 * 
	 * @return
	 * @hibernate.set lazy="false"
	 * @hibernate.key column="messageId" 
	 * @hibernate.one-to-many
	 * 	class="lnyswz.oa.bean.Paper"
	 */
	public Set<Paper> getAttachments() {
		return attachments;
	}
	public void setAttachments(Set<Paper> attachments) {
		this.attachments = attachments;
	}
}	
