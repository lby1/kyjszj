package com.kyjszj.service.information.news;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kyjszj.dao.BaseDaoSupport;
import com.kyjszj.model.Page;
import com.kyjszj.util.PageData;

@Service
public class NewsService {
	
	@Resource
	private BaseDaoSupport dao;
	
	
	/*
	*列表
	*/
	public List<PageData> list(Page page)throws Exception{
		return (List<PageData>) dao.findForList("NewsMapper.newslistPage", page);
	}
	
	/*
	* 通过id获取数据
	*/
	public PageData findById(PageData pd)throws Exception{
		return (PageData)dao.findForObject("NewsMapper.findById", pd);
	}
	
	/*
	* 保存
	*/
	public void save(PageData pd)throws Exception{
		dao.save("NewsMapper.save", pd);
	}
	
	/*
	* 修改
	*/
	public void edit(PageData pd)throws Exception{
		dao.update("NewsMapper.edit", pd);
	}
	
	/*
	* 删除
	*/
	public void delete(PageData pd)throws Exception{
		dao.update("NewsMapper.delete", pd);
	}
	
	/*
	*列表
	*/
	public List<PageData> newslist(PageData pd)throws Exception{
		return (List<PageData>) dao.findForList("NewsMapper.newslist", pd);
	}
	
}
