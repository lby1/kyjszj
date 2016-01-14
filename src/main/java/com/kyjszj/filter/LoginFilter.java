/**
 * @Title:LoginFilter.java
 * @Package:com.kyjszj.filter
 * @Description:TODO
 * @author:luckyboyguo@126.com
 * @date:2016年1月8日{time}
 * @version:v1.0
 */
package com.kyjszj.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kyjszj.controller.base.BaseController;

/**
 * @ClassName:LoginFilter
 * @Description:登录验证过滤器
 * @author luckyboyguo@126.com
 * @date:2016年1月8日上午10:33:30
 */
public class LoginFilter extends BaseController implements Filter{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) resp;
		
		chain.doFilter(req, resp); // 调用下一过滤器
		
	}
	/**
	 * 初始化
	 */
	@Override
	public void init(FilterConfig arg0) throws ServletException {
		//FileUtil.createDir("d:/kyjszj/topic/");
		
	}

}
