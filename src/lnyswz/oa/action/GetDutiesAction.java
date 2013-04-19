package lnyswz.oa.action;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import lnyswz.oa.bean.Duty;
import lnyswz.oa.bean.Organization;
import lnyswz.oa.service.DutyService;

import org.apache.struts2.ServletActionContext;

import com.google.gson.Gson;

public class GetDutiesAction {
	private DutyService dutyService;
	
	public String execute() throws Exception {
		List<Duty> duties = dutyService.getDuties();
						
//		Set<Entry<String,List<Lxr>>> entrySet = maps.entrySet();   
//		for (Entry<String, List<Lxr>> entry : entrySet) {
//			System.out.println(entry.getKey() + "-->");
//			
//			List<Lxr> list = entry.getValue();
//			System.out.println("Ò»¹²ÓÐ " + list.size());
//			for(Lxr lxr : list){
//				
//			}
//		}
		
		Gson gson = new Gson();
	    String json = gson.toJson(duties);
	    System.out.println(json);   
		
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("application/json; charset=utf-8");
		response.setHeader("cache-control", "no-cache");
		
		PrintWriter out = response.getWriter();
		out.print(json);
		out.flush();
		out.close();
		
		return null;
	}

	public void setDutyService(DutyService dutyService) {
		this.dutyService = dutyService;
	}
	
	
}
