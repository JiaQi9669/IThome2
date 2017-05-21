package com.zqrc.ITHome.homes.natural.service;

import java.util.List;

import com.zqrc.ITHome.base.dao.BaseDao;
import com.zqrc.ITHome.homes.natural.vo.data_data;

/**
 * 资源接口
 * @author 李志飞
 *
 */
public interface dataService extends BaseDao<data_data> {

	public List<data_data> findByKeyWord(String name);
	
//	贾启
	public List<data_data> findByName(String name);
}
