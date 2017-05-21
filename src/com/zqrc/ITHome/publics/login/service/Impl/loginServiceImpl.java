package com.zqrc.ITHome.publics.login.service.Impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zqrc.ITHome.base.service.BaseServiceImpl;
import com.zqrc.ITHome.publics.login.service.loginService;
import com.zqrc.ITHome.publics.login.vo.Friends;

@Service("loginService")
@Transactional
public class loginServiceImpl extends BaseServiceImpl<Friends> implements loginService{

	/**
	 * 通过
	 */
	public List<Friends> findByName(String name) {
		return (List<Friends>)getSession().createQuery("FROM Friends f WHERE f.accounts =?").setString(0,name).list();
	}

	public Friends findByAccount(String name) {
		return (Friends)getSession().createQuery("FROM Friends f WHERE f.accounts =?").setString(0,name).list().get(0);
	}

}
