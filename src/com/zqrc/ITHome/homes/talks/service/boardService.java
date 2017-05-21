package com.zqrc.ITHome.homes.talks.service;

import java.util.List;

import com.zqrc.ITHome.base.dao.BaseDao;
import com.zqrc.ITHome.homes.talks.vo.Boards;

/**
 * 板块事务接口
 * @author 李志飞
 *
 */
public interface boardService extends BaseDao<Boards>{

	Boards findByName(String name);
	
	List<Boards> findByKeyWord(String name);
	
	List<Boards> findBytype(Integer types);
}
