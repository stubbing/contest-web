package filter;

import com.opensymphony.xwork2.ActionContext;  
import com.opensymphony.xwork2.ActionInvocation;  
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;  

public class Interceptor extends AbstractInterceptor {

	/** 
	* @Fields serialVersionUID : TODO
	*/
	private static final long serialVersionUID = 1193530030819826345L;

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		// TODO Auto-generated method stub
        String normal = (String) ActionContext.getContext().getSession().get("normaluser");  
        String school = (String) ActionContext.getContext().getSession().get("schooluser");  
        String admin = (String) ActionContext.getContext().getSession().get("adminuser");   
        if (normal == null && school == null && admin == null) {   
            return "error_login";  
        }  
        return invocation.invoke();  
	}


}
