package lnyswz.oa.interceptor;

import javax.servlet.http.HttpServletResponse;

import lnyswz.oa.bean.Person;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class LoginedCheckInterceptor extends AbstractInterceptor {

	@Override
	 /** 拦截请求并进行登录有效性验证 */
    public String intercept(ActionInvocation ai) throws Exception {
        //取得请求的URL
        String url = ServletActionContext.getRequest().getRequestURL().toString();
        HttpServletResponse response=ServletActionContext.getResponse();
        response.setHeader("Pragma","No-cache");          
        response.setHeader("Cache-Control","no-cache");   
        response.setHeader("Cache-Control", "no-store");   
        response.setDateHeader("Expires",0);
        
        Person person = null;
        //对登录与注销请求直接放行,不予拦截
        if (url.indexOf("login.action")!=-1 || url.indexOf("logout.action")!=-1){
            return ai.invoke();
        }
        else{
            //验证Session是否过期
            if(!ServletActionContext.getRequest().isRequestedSessionIdValid()){
                //session过期,转向session过期提示页,最终跳转至登录页面
                return "tologin";
            }
            else{
                person = (Person)ServletActionContext.getRequest().getSession().getAttribute("person");
                //验证是否已经登录
                if (person==null){
                    //尚未登录,跳转至登录页面
                    return "tologin";
                }else{                    
                    return ai.invoke();
                                
                }                
            }            
        }
    }

}
