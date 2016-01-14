package com.kyjszj.controller.system.information.notice;

import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kyjszj.controller.base.BaseController;
import com.kyjszj.model.Page;
import com.kyjszj.service.information.notice.NoticeService;
import com.kyjszj.util.Const;
import com.kyjszj.util.DateUtil;
import com.kyjszj.util.PageData;

/** 
 * 类名称：NoticeController
 * @version
 */
@Controller
@RequestMapping(value="/notice")
public class NoticeController extends BaseController{
	@Resource
	private NoticeService noticeService;
	
	/**
	 * 列表
	 */
	@RequestMapping(value="/list")
	public ModelAndView listUsers(HttpSession session, Page page) throws Exception{
		logBefore(logger, "公告列表");
		ModelAndView mv = new ModelAndView();
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			
			//检索条件================================
			String title = pd.getString("title");
			String publisher = pd.getString("publisher");
			if(null != title && !"".equals(title)){
				title = title.trim();
				pd.put("title", title);
			}
			if(null != publisher && !"".equals(publisher)){
				publisher = publisher.trim();
				pd.put("publisher", publisher);
			}
			//检索条件================================
			
			
			page.setPd(pd);
			List<PageData>	varList = noticeService.list(page);
			
			mv.setViewName("information/notice/notice_list");
			mv.addObject("varList", varList);
			mv.addObject("pd", pd);
			mv.addObject(Const.SESSION_QX,this.getHC());	//按钮权限
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		
		return mv;
	}
	
	
	/**
	 * 去新增页面
	 */
	@RequestMapping(value="/goAdd")
	public ModelAndView goAdd(){
		ModelAndView mv = new ModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			mv.setViewName("information/notice/notice_edit");
			mv.addObject("msg", "save");
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}						
		return mv;
	}
	
	/**
	 * 去修改页面
	 */
	@RequestMapping(value="/goEdit")
	public ModelAndView goEdit(){
		ModelAndView mv = new ModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			
			pd = noticeService.findById(pd);
			
			mv.setViewName("information/notice/notice_edit");
			mv.addObject("msg", "edit");
			mv.addObject("pd", pd);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}						
		return mv;
	}
	
	/**
	 * 修改
	 */
	@RequestMapping(value="/edit")
	public ModelAndView edit(PrintWriter out) throws Exception{
		ModelAndView mv = new ModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		
		
		String sequence = pd.getString("sequence");
		
		pd.put("uptime", DateUtil.getTime());				//修改时间
		pd.put("sequence", "".equals(sequence)?0:sequence);
		
		noticeService.edit(pd);
		
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	
	/**
	 * 保存
	 */
	@RequestMapping(value="/save")
	public ModelAndView save(PrintWriter out) throws Exception{
		ModelAndView mv = new ModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		String sequence = pd.getString("sequence");
		pd.put("addtime", DateUtil.getTime());				//新增时间
		pd.put("uptime", DateUtil.getTime());				//修改时间
		pd.put("sequence", "".equals(sequence)?0:sequence);
		noticeService.save(pd);
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	
	/**
	 * 删除
	 */
	@RequestMapping(value="/delete")
	public void delete(PrintWriter out)throws Exception{
		ModelAndView mv = new ModelAndView();
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			noticeService.delete(pd);
			out.write("success");
			out.close();
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		
	}
	
	/* ===============================权限================================== */
	public Map<String, String> getHC(){
		Subject currentUser = SecurityUtils.getSubject();  //shiro管理的session
		Session session = currentUser.getSession();
		return (Map<String, String>)session.getAttribute(Const.SESSION_QX);
	}
	/* ===============================权限================================== */
}
