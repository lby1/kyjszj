/**
 * @Title:StartFilter.java
 * @Package:com.kyjszj.filter
 * @Description:TODO
 * @author:luckyboyguo@126.com
 * @date:2016年1月8日{time}
 * @version:v1.0
 */
package com.kyjszj.filter;

import java.io.IOException;
import java.net.UnknownHostException;
import java.util.Calendar;
import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.java_websocket.WebSocketImpl;

import com.kyjszj.controller.base.BaseController;
import com.kyjszj.plugin.websocketInstantMsg.ChatServer;
import com.kyjszj.plugin.websocketOnline.OnlineChatServer;

/**
 * @ClassName:StartFilter
 * @Description:{todo}
 * @author luckyboyguo@126.com
 * @date:2016年1月8日上午10:55:37
 */
public class StartFilter extends BaseController implements Filter{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * 初始化
	 */
	@Override
	public void init(FilterConfig arg0) throws ServletException {
		this.startWebsocketInstantMsg();
		this.startWebsocketOnline();
		
	}
	/**
	 * 启动即时聊天服务
	 */
	public void startWebsocketInstantMsg(){
		WebSocketImpl.DEBUG = false;
		int port = 8887; //端口
		ChatServer s;
		try {
			s = new ChatServer(port);
			s.start();
			//System.out.println( "websocket服务器启动,端口" + s.getPort() );
		} catch (UnknownHostException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 启动在线管理服务
	 */
	public void startWebsocketOnline(){
		WebSocketImpl.DEBUG = false;
		int port = 8889; //端口
		OnlineChatServer s;
		try {
			s = new OnlineChatServer(port);
			s.start();
			//System.out.println( "websocket服务器启动,端口" + s.getPort() );
		} catch (UnknownHostException e) {
			e.printStackTrace();
		}
	}
	
	
	//计时器
	public void timer() {
		Calendar calendar = Calendar.getInstance();
		calendar.set(Calendar.HOUR_OF_DAY, 9); // 控制时
		calendar.set(Calendar.MINUTE, 0); 		// 控制分
		calendar.set(Calendar.SECOND, 0); 		// 控制秒

		Date time = calendar.getTime(); 		// 得出执行任务的时间

		Timer timer = new Timer();
		timer.scheduleAtFixedRate(new TimerTask() {
			public void run() {
				
				//PersonService personService = (PersonService)ApplicationContext.getBean("personService");

				
				//System.out.println("-------设定要指定任务--------");
			}
		}, time, 1000*60*60*24);// 这里设定将延时每天固定执行
	}


}
