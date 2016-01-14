/**
 * @Title:MyExceptionResolver.java
 * @Package:com.kyjszj.resolver
 * @Description:TODO
 * @author:luckyboyguo@126.com
 * @date:2016年1月8日{time}
 * @version:v1.0
 */
package com.kyjszj.resolver;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

/**
 * @ClassName:MyExceptionResolver
 * @Description:{todo}
 * @author luckyboyguo@126.com
 * @date:2016年1月8日上午11:19:19
 */
public class MyExceptionResolver implements HandlerExceptionResolver{

	public ModelAndView resolveException(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex) {
		// TODO Auto-generated method stub
		System.out.println("==============异常开始=============");
		ex.printStackTrace();
		System.out.println("==============异常结束=============");
		ModelAndView mv = new ModelAndView("error");
		mv.addObject("exception", ex.toString().replaceAll("\n", "<br/>"));
		return mv;
	}

}
