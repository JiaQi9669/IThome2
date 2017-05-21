package com.zqrc.ITHome.homes.person.service.Impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zqrc.ITHome.base.service.BaseServiceImpl;
import com.zqrc.ITHome.homes.person.service.personService;
import com.zqrc.ITHome.publics.login.vo.Friends;

/**
 * 个人事务
 * @author 李志飞
 *
 */
@Service("personService")
@Transactional
public class personServiceImpl extends BaseServiceImpl<Friends> implements personService{

	public Friends findByName(String name) {
		return (Friends)getSession().createQuery("FROM Friends f where f.name =?").setString(0,name).list().get(0);
	}
	
}
