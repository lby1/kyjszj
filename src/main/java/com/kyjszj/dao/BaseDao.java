/**
 * @Title:BaseDao.java
 * @Package:com.kyjszj.dao
 * @Description:TODO
 * @author:luckyboyguo@126.com
 * @date:2016年1月8日{time}
 * @version:v1.0
 */
package com.kyjszj.dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.ExecutorType;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

/**
 * @ClassName:BaseDao
 * @Description:{todo}
 * @author luckyboyguo@126.com
 * @date:2016年1月8日下午2:33:44
 */
@Repository
public class BaseDao {
	@Resource
	private SqlSessionTemplate sqlSessionTemplate;
	
	/**
	 * 
	 * @Title:save
	 * @Description:保存对象
	 * @param:@param str
	 * @param:@param obj
	 * @param:@return
	 * @param:@throws Exception
	 * @return Object
	 * @throws
	 * @param str
	 * @param obj
	 * @return
	 * @throws Exception
	 */
	public Object save(String str, Object obj) throws Exception {
		return sqlSessionTemplate.insert(str, obj);
	}
	public Object batchSave(String str, List objs )throws Exception{
		return sqlSessionTemplate.insert(str, objs);
	}
	public Object update(String str, Object obj) throws Exception {
		return sqlSessionTemplate.update(str, obj);
	}
	public void batchUpdate(String str, List objs )throws Exception{
		SqlSessionFactory sqlSessionFactory = sqlSessionTemplate.getSqlSessionFactory();
		//批量执行器
		SqlSession sqlSession = sqlSessionFactory.openSession(ExecutorType.BATCH,false);
		try{
			if(objs!=null){
				for(int i=0,size=objs.size();i<size;i++){
					sqlSession.update(str, objs.get(i));
				}
				sqlSession.flushStatements();
				sqlSession.commit();
				sqlSession.clearCache();
			}
		}finally{
			sqlSession.close();
		}
	}
	public Object batchDelete(String str, List objs )throws Exception{
		return sqlSessionTemplate.delete(str, objs);
	}
	public Object delete(String str, Object obj) throws Exception {
		return sqlSessionTemplate.delete(str, obj);
	}
	public Object findForObject(String str, Object obj) throws Exception {
		return sqlSessionTemplate.selectOne(str, obj);
	}
	public Object findForList(String str, Object obj) throws Exception {
		return sqlSessionTemplate.selectList(str, obj);
	}
	
	public Object findForMap(String str, Object obj, String key, String value) throws Exception {
		return sqlSessionTemplate.selectMap(str, obj, key);
	}
}
