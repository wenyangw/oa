package lnyswz.oa.bean;

import java.io.Serializable;

/**
 * 
 * @author wenyang
 * @hibernate.class table="t_user"
 */
public class User implements Serializable{
	
	private int id;
	
	private String name;
	
	private String password;
	
	private Person person;
	
	/**
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	/**
	 * 
	 * @return
	 * @hibernate.many-to-one
	 */
	public Person getPerson() {
		return person;
	}
	public void setPerson(Person person) {
		this.person = person;
	}
	
}
