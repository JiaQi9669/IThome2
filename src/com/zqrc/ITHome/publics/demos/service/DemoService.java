package com.zqrc.ITHome.publics.demos.service;

import java.util.List;

import com.zqrc.ITHome.base.dao.BaseDao;
import com.zqrc.ITHome.publics.demos.vo.demos;

/**
 * 测试事务接口
 *
 */
public interface DemoService extends BaseDao<demos>{

	public List<demos> fingByName(String name);
}
