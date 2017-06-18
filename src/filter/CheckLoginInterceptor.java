package filter;

import com.opensymphony.xwork2.ActionContext;  
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.opensymphony.xwork2.interceptor.Interceptor; 

public class CheckLoginInterceptor implements Interceptor {

	/** 
	* @Fields serialVersionUID : TODO
	*/
	private static final long serialVersionUID = 1193530030819826345L;

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		// TODO Auto-generated method stub
        String login = (String) ActionContext.getContext().getSession().get("login");   
        if (login != null ) {   
            return invocation.invoke(); 
        }  else {
        	return "input";
        }
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void init() {
		// TODO Auto-generated method stub
		
	}


}
