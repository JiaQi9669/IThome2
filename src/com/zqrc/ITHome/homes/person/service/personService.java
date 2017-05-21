package com.zqrc.ITHome.homes.person.service;

import com.zqrc.ITHome.base.dao.BaseDao;
import com.zqrc.ITHome.publics.login.vo.Friends;

/**
 * 个人管理接口
 * @author 李志飞
 *
 */
public interface personService extends BaseDao<Friends> {
	
	Friends findByName(String name);
	
}
