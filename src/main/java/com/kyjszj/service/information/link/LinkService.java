package com.kyjszj.service.information.link;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kyjszj.dao.BaseDaoSupport;
import com.kyjszj.model.Page;
import com.kyjszj.util.PageData;

@Service
public class LinkService {
	
	@Resource
	private BaseDaoSupport dao;

	/*
	*列表
	*/
	public List<PageData> list(Page page)throws Exception{
		return (List<PageData>) dao.findForList("LinkMapper.linklistPage", page);
	}
	
	/*
	* 通过id获取数据
	*/
	public PageData findById(PageData pd)throws Exception{
		return (PageData)dao.findForObject("LinkMapper.findById", pd);
	}
	
	/*
	* 保存
	*/
	public void save(PageData pd)throws Exception{
		dao.save("LinkMapper.save", pd);
	}
	
	/*
	* 修改
	*/
	public void edit(PageData pd)throws Exception{
		dao.update("LinkMapper.edit", pd);
	}
	
	/*
	* 删除
	*/
	public void delete(PageData pd)throws Exception{
		dao.update("LinkMapper.delete", pd);
	}
	
	/*
	* 删除图片
	*/
	public void delTp(PageData pd)throws Exception{
		dao.update("LinkMapper.delTp", pd);
	}
}

