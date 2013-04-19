package lnyswz.oa.bean;

import java.io.Serializable;
import java.util.Set;

/**
 * 
 * @author wenyang
 * @hibernate.class table="t_person"
 */
public class Person implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * 
	 */
	
	private int id;
	private String name;
	private String sex;
	private String birth;
	private String inPhone;
	private String extPhone;
	private String cellPhone;
	private String photo;
	private String description;
	private User user;
	private Organization org;
	private Duty duty;
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
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	/**
	 * 
	 * @return
	 * @hibernate.property
	 */
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	/**
	 * 
	 * @return
	 * @hibernate.property
	 */
	public String getInPhone() {
		return inPhone;
	}
	public void setInPhone(String inPhone) {
		this.inPhone = inPhone;
	}
	/**
	 * 
	 * @return
	 * @hibernate.property
	 */
	public String getExtPhone() {
		return extPhone;
	}
	public void setExtPhone(String extPhone) {
		this.extPhone = extPhone;
	}
	/**
	 * 
	 * @return
	 * @hibernate.property
	 */
	public String getCellPhone() {
		return cellPhone;
	}
	public void setCellPhone(String cellPhone) {
		this.cellPhone = cellPhone;
	}
	/**
	 * 
	 * @return
	 * @hibernate.property
	 */
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	/**
	 * 
	 * @return
	 * @hibernate.property
	 */
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	/**
	 * 
	 * @return
	 * @hibernate.many-to-one
	 */
	public Organization getOrg() {
		return org;
	}
	public void setOrg(Organization org) {
		this.org = org;
	}
	/**
	 * 
	 * @return
	 * @hibernate.many-to-one
	 */
	public Duty getDuty() {
		return duty;
	}
	public void setDuty(Duty duty) {
		this.duty = duty;
	}
	
	/**
	 * 
	 * @return
	 * @hibernate.one-to-one
	 * property-ref="person"
	 */
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
		
}
