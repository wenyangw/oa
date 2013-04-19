package lnyswz.oa.interceptor;

import javax.servlet.http.HttpServletResponse;

import lnyswz.oa.bean.Person;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class LoginedCheckInterceptor extends AbstractInterceptor {

	@Override
	 /** �������󲢽��е�¼��Ч����֤ */
    public String intercept(ActionInvocation ai) throws Exception {
        //ȡ�������URL
        String url = ServletActionContext.getRequest().getRequestURL().toString();
        HttpServletResponse response=ServletActionContext.getResponse();
        response.setHeader("Pragma","No-cache");          
        response.setHeader("Cache-Control","no-cache");   
        response.setHeader("Cache-Control", "no-store");   
        response.setDateHeader("Expires",0);
        
        Person person = null;
        //�Ե�¼��ע������ֱ�ӷ���,��������
        if (url.indexOf("login.action")!=-1 || url.indexOf("logout.action")!=-1){
            return ai.invoke();
        }
        else{
            //��֤Session�Ƿ����
            if(!ServletActionContext.getRequest().isRequestedSessionIdValid()){
                //session����,ת��session������ʾҳ,������ת����¼ҳ��
                return "tologin";
            }
            else{
                person = (Person)ServletActionContext.getRequest().getSession().getAttribute("person");
                //��֤�Ƿ��Ѿ���¼
                if (person==null){
                    //��δ��¼,��ת����¼ҳ��
                    return "tologin";
                }else{                    
                    return ai.invoke();
                                
                }                
            }            
        }
    }

}
