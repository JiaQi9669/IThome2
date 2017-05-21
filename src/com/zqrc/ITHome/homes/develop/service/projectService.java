package com.zqrc.ITHome.homes.develop.service;

import java.util.List;

import com.zqrc.ITHome.base.dao.BaseDao;
import com.zqrc.ITHome.homes.develop.vo.Packages;
import com.zqrc.ITHome.homes.develop.vo.Projects;

/**
 * 项目事务接口
 * @author 李志飞
 *
 */
public interface projectService extends BaseDao<Projects>{
//	通过名字查询
	public List<Projects> fingByName(String name);

	public List<Projects> findByAdminId(Integer id);

}
