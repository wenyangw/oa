package lnyswz.oa.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

import lnyswz.oa.bean.Message;
import lnyswz.oa.bean.Paper;
import lnyswz.oa.bean.Person;
import lnyswz.oa.service.MessageService;
import lnyswz.oa.utils.Tools;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class SendMessageAction extends ActionSupport {
	private MessageService messageService;
	
	private String subject;
	private String content;
	private String receivers;
	private List<File> files;
	private List<String> filesFileName;
	private List<String> filesContentType;
	
	@Override
	public String execute() throws Exception {
		HttpSession session = ServletActionContext.getRequest().getSession();
		Person person = (Person)session.getAttribute("person");
		
		Set<Paper> set = new HashSet<Paper>();
		
		//处理附件的保存
		if(files != null){
			
			for(int i = 0; i < files.size(); i++){
				InputStream is = new FileInputStream(files.get(i));
				
				if (is != null){
					String root = ServletActionContext.getRequest().getRealPath("/upload");
					//取得文件的名称和保存在网络上的名称
					String fileName = filesFileName.get(i);
					String filePath = filesFileName.get(i) + Tools.getTimeforName();
					
					Paper paper = new Paper();
					paper.setFileName(fileName);
					paper.setFilePath(filePath);
					
					
					set.add(paper);
					
					File fileDest = new File(root, filePath);
					
					OutputStream os = new FileOutputStream(fileDest);
					
					byte[] buffer = new byte[512];
					int length = 0;
					while(-1 != (length = is.read(buffer))){
						os.write(buffer, 0, length);
					}
					os.close();
				}
				is.close();
				
	 		}
		}
		
		String[] receiver = receivers.split(";");
		Set receivers = new HashSet();
		for(String s : receiver){
			receivers.add(Integer.parseInt(s));
		}
		
		Message message = new Message();
		message.setSubject(subject);
		message.setContent(content);
		message.setReceivers(receivers);
		message.setSendedTime(Tools.getTimeForField());
		message.setSender(person);
		message.setAttachments(set);
		
		messageService.addMessage(message);
		
		return super.execute();
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getReceivers() {
		return receivers;
	}

	public void setReceivers(String receivers) {
		this.receivers = receivers;
	}

	public List<File> getFiles() {
		return files;
	}

	public void setFiles(List<File> files) {
		this.files = files;
	}

	public List<String> getFilesFileName() {
		return filesFileName;
	}

	public void setFilesFileName(List<String> filesFileName) {
		this.filesFileName = filesFileName;
	}

	public List<String> getFilesContentType() {
		return filesContentType;
	}

	public void setFilesContentType(List<String> filesContentType) {
		this.filesContentType = filesContentType;
	}

	public void setMessageService(MessageService messageService) {
		this.messageService = messageService;
	}
	
}
