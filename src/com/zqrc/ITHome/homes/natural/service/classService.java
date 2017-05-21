package com.zqrc.ITHome.homes.natural.service;

import java.util.List;

import com.zqrc.ITHome.base.dao.BaseDao;
import com.zqrc.ITHome.homes.natural.vo.data_class;

/**
 * 资源分类接口
 * @author 李志飞
 *
 */
public interface classService extends BaseDao<data_class> {
	
//	通过名称查询
	List<data_class> findByName(String name);
	
}
