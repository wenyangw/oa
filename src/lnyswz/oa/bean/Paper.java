package lnyswz.oa.bean;

/**
 * 
 * @author wenyang
 * @hibernate.class table="t_paper"
 */
public class Paper {
	private int id;
	private String fileName;
	private String filePath;
	
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
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	/**
	 * 
	 * @return
	 * @hibernate.property
	 */
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
}
