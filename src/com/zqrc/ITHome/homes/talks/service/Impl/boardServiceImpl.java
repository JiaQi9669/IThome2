package com.zqrc.ITHome.homes.talks.service.Impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zqrc.ITHome.base.service.BaseServiceImpl;
import com.zqrc.ITHome.homes.talks.service.boardService;
import com.zqrc.ITHome.homes.talks.vo.Boards;
import com.zqrc.ITHome.homes.talks.vo.Posts;

/**
 *	板块事务
 * @author 李志飞
 *
 */
@Service("boardService")
@Transactional
public class boardServiceImpl extends BaseServiceImpl<Boards> implements boardService{

	public Boards findByName(String name) {
		return (Boards)getSession().createQuery("FROM Boards b where b.name =?").setString(0,name).list().get(0);
	}

	public List<Boards> findByKeyWord(String name) {
		return (List<Boards>)getSession().createQuery("FROM Boards d WHERE d.name like '%"+name+"%'").list();
	}

	public List<Boards> findBytype(Integer types) {
		return (List<Boards>)getSession().createQuery("FROM Boards d WHERE d.boardType =?").setInteger(0, types).list();
	}

}
