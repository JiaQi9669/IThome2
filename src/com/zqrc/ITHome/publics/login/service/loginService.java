package com.zqrc.ITHome.publics.login.service;

import java.util.List;

import com.zqrc.ITHome.base.dao.BaseDao;
import com.zqrc.ITHome.publics.login.vo.Friends;

/**
 * 测试事务接口
 *
 */
public interface loginService extends BaseDao<Friends>{
	
	List<Friends> findByName(String name);
	
	Friends findByAccount(String name) throws Exception;
}
