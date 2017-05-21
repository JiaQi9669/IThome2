package com.zqrc.ITHome.homes.natural.service.Impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zqrc.ITHome.base.service.BaseServiceImpl;
import com.zqrc.ITHome.homes.natural.service.classService;
import com.zqrc.ITHome.homes.natural.vo.data_class;
import com.zqrc.ITHome.publics.labRoom.vo.labRoom;
import com.zqrc.ITHome.util.HqlHelper;


@Service("classService")
@Transactional
public class classServiceImpl extends BaseServiceImpl<data_class> implements classService{

//	public List<data_class> findByVisit() {
//		
//		return (List<data_class>)new HqlHelper(labRoom.class, "lab").addOrderByProperty("id", false);
//	}

	public List<data_class> findByName(String name) {
		return (List<data_class>)getSession().createQuery("FROM data_class s WHERE s.name =?").setString(0, name).list();
	}

}
