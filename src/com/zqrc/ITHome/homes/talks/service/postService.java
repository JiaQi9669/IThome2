package com.zqrc.ITHome.homes.talks.service;

import java.util.List;

import com.zqrc.ITHome.base.dao.BaseDao;
import com.zqrc.ITHome.homes.talks.vo.Boards;
import com.zqrc.ITHome.homes.talks.vo.Posts;

/**
 * 贴子事务接口
 * @author 李志飞
 *
 */
public interface postService extends BaseDao<Posts>{

	List<Posts> findHot();
	
	Posts findByName(String name);
	
	List<Posts> findByNames(String name);
	
	List<Posts>findByKeyWord(String name);
	
	List<Posts> findByBoard(Integer id);
	
	Posts findById(Integer id);
	
	List<Posts> findNews();
	
	List<Posts> findHots();
	
	List<Posts> findByUserId(Integer id);
	
}
