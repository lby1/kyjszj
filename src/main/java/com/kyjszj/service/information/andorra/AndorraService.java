package com.kyjszj.service.information.andorra;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kyjszj.dao.BaseDaoSupport;
import com.kyjszj.model.Page;
import com.kyjszj.util.PageData;

@Service
public class AndorraService {
	
	@Resource
	private BaseDaoSupport dao;

	/*
	*列表
	*/
	public List<PageData> list(Page page)throws Exception{
		return (List<PageData>) dao.findForList("AndorraMapper.andorralistPage", page);
	}
	
	/*
	* 通过id获取数据
	*/
	public PageData findById(PageData pd)throws Exception{
		return (PageData)dao.findForObject("AndorraMapper.findById", pd);
	}
	
	/*
	* 保存
	*/
	public void save(PageData pd)throws Exception{
		dao.save("AndorraMapper.save", pd);
	}
	
	/*
	* 修改
	*/
	public void edit(PageData pd)throws Exception{
		dao.update("AndorraMapper.edit", pd);
	}
	
	/*
	* 删除
	*/
	public void delete(PageData pd)throws Exception{
		dao.update("AndorraMapper.delete", pd);
	}
	
	/*
	* 删除图片
	*/
	public void delTp(PageData pd)throws Exception{
		dao.update("AndorraMapper.delTp", pd);
	}
}
