package com.kyjszj.service.information.line;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kyjszj.dao.BaseDaoSupport;
import com.kyjszj.model.Page;
import com.kyjszj.util.PageData;


@Service
public class LineService {

	@Resource
	private BaseDaoSupport dao;
	
	/*
	* 新增
	*/
	public void save(PageData pd)throws Exception{
		dao.save("LineMapper.save", pd);
	}
	
	/*
	* 删除
	*/
	public void delete(PageData pd)throws Exception{
		dao.delete("LineMapper.delete", pd);
	}
	
	/*
	* 修改
	*/
	public void edit(PageData pd)throws Exception{
		dao.update("LineMapper.edit", pd);
	}
	
	/*
	*列表
	*/
	public List<PageData> list(Page page)throws Exception{
		return (List<PageData>)dao.findForList("LineMapper.datalistPage", page);
	}
	
	/*
	*列表(全部)
	*/
	public List<PageData> listAll(PageData pd)throws Exception{
		return (List<PageData>)dao.findForList("LineMapper.listAll", pd);
	}
	
	/*
	* 通过id获取数据
	*/
	public PageData findById(PageData pd)throws Exception{
		return (PageData)dao.findForObject("LineMapper.findById", pd);
	}
	
	/*
	* 批量删除
	*/
	public void deleteAll(String[] ArrayDATA_IDS)throws Exception{
		dao.delete("LineMapper.deleteAll", ArrayDATA_IDS);
	}
	
}

