package com.zqrc.ITHome.publics.demos.service.Impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zqrc.ITHome.base.dao.BaseDaoImpl;
import com.zqrc.ITHome.base.service.BaseServiceImpl;
import com.zqrc.ITHome.publics.demos.service.DemoService;
import com.zqrc.ITHome.publics.demos.vo.demos;

@Service //("demoService")
@Transactional
public class DemoServiceImpl extends BaseServiceImpl<demos> implements DemoService{

	public List<demos> fingByName(String name) {
		
		return (List<demos>)getSession().createQuery("FROM demos WHERE name ="+name).list();
	}
	
}
