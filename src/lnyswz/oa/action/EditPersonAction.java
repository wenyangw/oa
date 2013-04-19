package lnyswz.oa.action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import lnyswz.oa.bean.Duty;
import lnyswz.oa.bean.Organization;
import lnyswz.oa.bean.Person;
import lnyswz.oa.bean.User;
import lnyswz.oa.service.DutyService;
import lnyswz.oa.service.OrgService;
import lnyswz.oa.service.PersonService;

import com.opensymphony.xwork2.ActionSupport;

public class EditPersonAction extends ActionSupport {
	private String name;
	private String sex;
	private String birth;
	private String inPhone;
	private String extPhone;
	private String cellPhone;
	private int org;
	private int duty;
	
	private PersonService personService;
	private OrgService orgService;
	private DutyService dutyService;
	
	public String execute() throws Exception {
		HttpSession session = ServletActionContext.getRequest().getSession();
		
		Person person = (Person)session.getAttribute("person");
		
		System.out.println(name);
		person.setName(name);
		person.setBirth(birth);
		person.setSex(sex);
		person.setInPhone(inPhone);
		person.setExtPhone(extPhone);
		person.setCellPhone(cellPhone);
		Organization orgClass = orgService.getOrg(org);
		person.setOrg(orgClass);
		Duty dutyClass = dutyService.getDuty(duty);
		if(dutyClass != null){
			person.setDuty(dutyClass);
		}
		
		personService.modifyPerson(person);
		session.setAttribute("person", person);
		
		
		return SUCCESS;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getInPhone() {
		return inPhone;
	}

	public void setInPhone(String inPhone) {
		this.inPhone = inPhone;
	}

	public String getExtPhone() {
		return extPhone;
	}

	public void setExtPhone(String extPhone) {
		this.extPhone = extPhone;
	}

	public String getCellPhone() {
		return cellPhone;
	}

	public void setCellPhone(String cellPhone) {
		this.cellPhone = cellPhone;
	}

	public int getOrg() {
		return org;
	}

	public void setOrg(int org) {
		this.org = org;
	}

	public int getDuty() {
		return duty;
	}

	public void setDuty(int duty) {
		this.duty = duty;
	}

	public void setPersonService(PersonService personService) {
		this.personService = personService;
	}

	public void setOrgService(OrgService orgService) {
		this.orgService = orgService;
	}

	public void setDutyService(DutyService dutyService) {
		this.dutyService = dutyService;
	}
	
	
}
