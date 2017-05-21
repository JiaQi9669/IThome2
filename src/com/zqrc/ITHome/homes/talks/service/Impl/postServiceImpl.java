package com.zqrc.ITHome.homes.talks.service.Impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zqrc.ITHome.base.service.BaseServiceImpl;
import com.zqrc.ITHome.homes.talks.service.postService;
import com.zqrc.ITHome.homes.talks.vo.Posts;
import com.zqrc.ITHome.homes.talks.vo.Replys;

/**
 *	贴子事务
 * @author 李志飞
 *
 */
@Service("postService")
@Transactional
public class postServiceImpl extends BaseServiceImpl<Posts> implements postService{

	/**
	 * 浏览量查询
	 */
	public List<Posts> findHot() {
		return (List<Posts>)getSession().createQuery("FROM Posts p order by p.count desc").list();
	}
	
	/**
	 * 名字查询
	 * @return
	 */
	public Posts findByName(String name){
		return (Posts) getSession().createQuery("FROM Posts p where p.name =?").setString(0,name).list().get(0);
	}
	
	/**
	 * 重名名字查询集合
	 */
	public List<Posts> findByNames(String name){
		return (List<Posts>) getSession().createQuery("FROM Posts p where p.name =?").setString(0,name).list();
	}

	/**
	 * 名字模糊查询集合
	 */
	public List<Posts> findByKeyWord(String name) {
		return (List<Posts>)getSession().createQuery("FROM Posts d WHERE d.name like '%"+name+"%'").list();
	}

	/**
	 * 通过板块id查询
	 */
	public List<Posts> findByBoard(Integer id) {
		return (List<Posts>) getSession().createQuery("FROM Posts p where p.board.id =?").setInteger(0,id).list();
	}

	/**
	 * 通过id查询
	 */
	public Posts findById(Integer id) {
		return (Posts) getSession().createQuery("FROM Posts p where p.id =?").setInteger(0,id).list().get(0);
	}

	/**
	 * 最新查询
	 */
	public List<Posts> findNews() {
		return (List<Posts>) getSession().createQuery("FROM Posts p order by p.id desc").list();
	}

	/**
	 * 回复量查询
	 */
	public List<Posts> findHots() {
		return (List<Posts>) getSession().createQuery("FROM Posts p order by p.reply.size desc").list();
	}

	/**
	 * 通过楼主名查询帖子
	 */
	public List<Posts> findByUserId(Integer id) {
		return (List<Posts>) getSession().createQuery("FROM Posts p where p.friend.id=? order by p.id desc").setInteger(0, id).list();
	}

}
