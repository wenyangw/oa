/* 
* ----------------------------------------------------------- 
* file name : src\main\java\com\isunn\filter\PagerFilter.java 
* authors : Wenyang(wenyangw@gmail.com) 
* created : 2011/3/21 10:26:31 
* copyright : (c) 2009 Isunn Inc. All Rights Reserved. 
* 
* modifications: 
* 
* ----------------------------------------------------------- 
*/ 
package lnyswz.oa.filter; 


import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import lnyswz.oa.utils.SystemContext;

/** 
* to-do. 
* 
* @author Wenyang(wenyangw@gmail.com) 
* @version 1.0 
*/ 
public class PagerFilter implements Filter{ 
    public void destroy(){
    }

    public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain chain) throws IOException, ServletException{
        HttpServletRequest request = (HttpServletRequest)arg0;
        SystemContext.setOffset(getOffset(request));
        SystemContext.setPagesize(getPageSize());

        try{
            chain.doFilter(arg0, arg1);
        }catch(Exception e){
            
        }finally{
            SystemContext.removeOffset();
            SystemContext.removePagesize();
        }
    }

    protected int getOffset(HttpServletRequest request){
        int offset = 0;
        try{
            offset = Integer.parseInt(request.getParameter("pager.offset"));
        }catch(NumberFormatException e){
        }
        return offset;
    }

    protected int getPageSize(){
        return 10;
    }

    public void init(FilterConfig arg0) throws ServletException{
    }
    /** 
    * default constructor. 
    */ 
    public PagerFilter() { 
        super(); 
    } // END: PagerFilter 

    /** 
    * for test. 
    * @param args commond line parameters 
    public static void main(final String[] args) { 
    } // END: main 
    */ 
} // END: PagerFilter 
///:~


