package lnyswz.oa.bean;

import java.io.Serializable;

/**
 * 
 * @author wenyang
 * @hibernate.class table="t_duty";
 */
public class Duty implements Serializable{
	private int id;
	private String name;
	private String description;
	
	/**
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
	 * @hibernate.property
	 */
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @hibernate.property
	 */
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
}
