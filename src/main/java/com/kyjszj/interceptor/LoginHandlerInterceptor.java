/**
 * @Title:LoginHandlerInterceptor.java
 * @Package:com.kyjszjInterceptor
 * @Description:TODO
 * @author:luckyboyguo@126.com
 * @date:2016年1月8日{time}
 * @version:v1.0
 */
package com.kyjszj.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.kyjszj.model.system.User;
import com.kyjszj.util.Const;
import com.kyjszj.util.Jurisdiction;

/**
 * @ClassName:LoginHandlerInterceptor
 * @Description:{todo}
 * @author luckyboyguo@126.com
 * @date:2016年1月8日上午11:09:12
 */
public class LoginHandlerInterceptor  extends HandlerInterceptorAdapter{
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		// TODO Auto-generated method stub
		String path = request.getServletPath();
		
		if(path.matches(Const.NO_INTERCEPTOR_PATH)){//不对匹配该值的访问路径拦截（正则）
			return true;
		}else{
			//shiro管理的session
			Subject currentUser = SecurityUtils.getSubject();  
			Session session = currentUser.getSession();
			User user = (User)session.getAttribute(Const.SESSION_USER);
			if(user!=null){
				path = path.substring(1, path.length());
				boolean b = Jurisdiction.hasJurisdiction(path);
				if(!b){
					response.sendRedirect(request.getContextPath() + Const.LOGIN);
				}
				return b;
			}else{
				//登陆过滤
				response.sendRedirect(request.getContextPath() + Const.LOGIN);
				return false;		
				//return true;
			}
		}
	}
}
