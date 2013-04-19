package lnyswz.oa.bean;

import java.io.Serializable;

/**
 * 
 * @author wenyang
 * @hibernate.class table="t_organization"
 */
public class Organization implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private String name;
	private String sn;
	private String description;
	/**
	 * 
	 * @hibernate.id
	 * generator-class="native"
	 */
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * 
	 * @hibernate.property
	 */
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * 
	 * @return
	 * @hibernate.property
	 */
	public String getSn() {
		return sn;
	}
	public void setSn(String sn) {
		this.sn = sn;
	}
	/**
	 * 
	 * @hibernate.property
	 */
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
}
