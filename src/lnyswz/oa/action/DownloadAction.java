package lnyswz.oa.action;

import java.io.InputStream;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class DownloadAction extends ActionSupport {
	private String filePath;
	private String fileName;
	
	public InputStream getDownloadFile(){
			
		String file = "/upload/" + filePath;
		System.out.println(file);
		InputStream input = ServletActionContext.getServletContext().getResourceAsStream(file);
		System.out.println(input);
		return input;
	}
	
	@Override
	public String execute() throws Exception {
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("charset=utf-8");
		return SUCCESS;
	}
	
	/** 提供转换编码后的供下载用的文件名 */
	public String getDownloadFileName() {
		String downFileName = fileName;
		try {
			downFileName = new String(downFileName.getBytes(), "ISO8859-1");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return downFileName;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getFilePath() {
		return filePath;
	}
	
	
}
