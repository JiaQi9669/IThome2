package com.zqrc.ITHome.homes.develop.service.Impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zqrc.ITHome.base.service.BaseServiceImpl;
import com.zqrc.ITHome.homes.develop.service.projectService;
import com.zqrc.ITHome.homes.develop.vo.Packages;
import com.zqrc.ITHome.homes.develop.vo.Projects;

/**
 * 项目事务
 * @author 李志飞
 *
 */
@Service("projectService")
@Transactional
public class projectServiceImpl extends BaseServiceImpl<Projects> implements projectService{
//	通过name找项目
	public List<Projects> fingByName(String name) {
		return (List<Projects>)getSession().createQuery("FROM Projects p WHERE p.name like '%"+name+"%'").list();
	}

//	通过项目人找项目
	public List<Projects> fingByAdmin(String name) {
		return (List<Projects>)getSession().createQuery("FROM Projects p WHERE p.friend.pickName = ?").setString(0, name).list();
	}

//	通过登录用户查询项目
	public List<Projects> findByAdminId(Integer id) {
		return (List<Projects>)getSession().createQuery("FROM Projects p WHERE p.friend.id = ?").setInteger(0, id).list();
	}
	
////	我参与的项目
//	public List<Projects> findJoinByAdminId(Integer id) {
//		return (List<Projects>)getSession().createQuery("FROM Projects p WHERE p.packages.friends.id = ?").setInteger(0, id).list();
//	}
}
