package lnyswz.oa.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.LogFactory;

public class TransNameFilter extends HttpServlet implements Filter {
	private static org.apache.commons.logging.Log logWriter =
	   LogFactory.getLog(TransNameFilter.class.getName());
	/**
	* 
	*/
	public TransNameFilter() {
	   super();
	}
	/* ���� Javadoc��
	   * @see javax.servlet.Filter#init(javax.servlet.FilterConfig)
	   */
	public void init(FilterConfig arg0) throws ServletException {
	}
	/* ���� Javadoc��
	* @see javax.servlet.Filter#doFilter(javax.servlet.ServletRequest, javax.servlet.ServletResponse, javax.servlet.FilterChain)
	*/
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
	   throws IOException, ServletException {
	   HttpServletRequest hreq = (HttpServletRequest) request;
	   String transName = hreq.getParameter("transName");
	   //if (Util.isNullOrEmpty(transName)) {
	   if(transName == null || transName == ""){
	    logWriter.fatal(" there is no transName for this request");
	   } else {
	    logWriter.info(" transName is " + transName);
	   }
	  
	   HttpServletResponse res = (HttpServletResponse) response;
	        //iframe������ڲ�cookie��ʧ
	   res.setHeader("P3P","CP=CAO PSA OUR");
	   if (chain != null)
	    chain.doFilter(request, response);
	}
	/* ���� Javadoc��
	   * @see javax.servlet.Filter#destroy()
	   */
	public void destroy() {
	}
	}