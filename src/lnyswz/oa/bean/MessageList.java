package lnyswz.oa.bean;

public class MessageList {
	private int id;
	private String subject;
	private String recPersons;
	private String sendedTime;
	private String readTime;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getRecPersons() {
		return recPersons;
	}
	public void setRecPersons(String recPersons) {
		this.recPersons = recPersons;
	}
	public String getSendedTime() {
		return sendedTime;
	}
	public void setSendedTime(String sendedTime) {
		this.sendedTime = sendedTime;
	}
	public String getReadTime() {
		return readTime;
	}
	public void setReadTime(String readTime) {
		this.readTime = readTime;
	}
	
}
