package com.zqrc.ITHome.publics.labRoom.service.Impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zqrc.ITHome.base.service.BaseServiceImpl;
import com.zqrc.ITHome.publics.labRoom.service.labService;
import com.zqrc.ITHome.publics.labRoom.vo.labRoom;

@Service("labService")
@Transactional
public class labServiceImpl extends BaseServiceImpl<labRoom> implements labService{

	public List<labRoom> findDate(){
		return (List<labRoom>)getSession().createQuery("FROM labRoom lab order by lab.dates desc").list();
	}

}
