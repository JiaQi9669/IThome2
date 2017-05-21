package com.zqrc.ITHome.base.dao;

import java.util.List;

import com.zqrc.ITHome.util.HqlHelper;
import com.zqrc.ITHome.util.PageBean;

/**
 * 数据访问接口
 * @author java_one
 *
 * @param <T>
 */
public interface BaseDao<T> {
	/**
	 * 保存实体
	 * 
	 * @param entity
	 */
	void save(T entity);

	/**
	 * 删除实体
	 * 
	 * @param id
	 */
	void delete(Integer id);

	/**
	 * 更新实体
	 * 
	 * @param entity
	 */
	void update(T entity);

	/**
	 * 按id查询
	 * 
	 * @param id
	 * @return
	 */
	T getById(Integer id);

	/**
	 * 按id查询
	 * 
	 * @param ids
	 * @return
	 */
	List<T> getByIds(Integer[] ids);
	
	/**
	 *合并重复 
	 * @param entity
	 */
	void merge(T entity);

	/**
	 * 有增无存
	 * @param entity
	 */
	public void saveOrUpdata(T entity);
	
	/**
	 * 清除session指定对象
	 */
	public void clear(T entity);
	
	/**
	 * 查询所有
	 * 
	 * @return
	 */
	List<T> findAll();
	
	/**
	 * 分页信息，传进来的参数为  起始页，一页显示多少
	 * 
	 */
	PageBean getPageBean(int pageNum,int Pagesize,HqlHelper hqlHelper);
}
