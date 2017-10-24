/**
 * 
 */
package online.qsx.interceptor;

import java.util.Map;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

import online.qsx.model.User;

/**
 * @author Dike
 */
public class VerificationInterceptor extends AbstractInterceptor{

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
        Map session = invocation.getInvocationContext().getSession();
        User user = (User) session.get("currentuser");
        if (null != user) {
            System.out.println("拦截器：合法用户登录---");
            return invocation.invoke();
        } else {
            System.out.println("拦截器：用户未登录---");
            return Action.LOGIN;
        }
	}

}
