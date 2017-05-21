package com.zqrc.ITHome.homes.natural.service.Impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zqrc.ITHome.base.service.BaseServiceImpl;
import com.zqrc.ITHome.homes.natural.service.dataService;
import com.zqrc.ITHome.homes.natural.vo.data_class;
import com.zqrc.ITHome.homes.natural.vo.data_data;

/**
 * 资源分类事务
 * @author 李志飞
 *
 */
@Service("dataService")
@Transactional
public class dataServiceImpl extends BaseServiceImpl<data_data> implements dataService{

	public List<data_data> findByKeyWord(String name) {
		return (List<data_data>)getSession().createQuery("FROM data_data d WHERE d.name like '%"+name+"%'").list();
	}

	public List<data_data> findByName(String name) {
		return (List<data_data>)getSession().createQuery("FROM data_data WHERE name = ?").setString(0,name).list();
	}
}
