package lnyswz.oa.action;

import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import lnyswz.oa.bean.Lxr;
import lnyswz.oa.service.LxrService;

import org.apache.struts2.ServletActionContext;

import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionSupport;

public class ListRecsAction extends ActionSupport {
	private LxrService lxrService;
	@Override
	public String execute() throws Exception {
		Map<Integer, String> maps = lxrService.getReceivers();
				
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
	    String json = gson.toJson(maps);
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
	public void setLxrService(LxrService lxrService) {
		this.lxrService = lxrService;
	}
	
	
}
