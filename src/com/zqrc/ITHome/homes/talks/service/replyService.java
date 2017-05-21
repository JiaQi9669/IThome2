package com.zqrc.ITHome.homes.talks.service;

import java.util.List;

import com.zqrc.ITHome.base.dao.BaseDao;
import com.zqrc.ITHome.homes.talks.vo.Posts;
import com.zqrc.ITHome.homes.talks.vo.Replys;

/**
 * 回复事务接口
 * @author 李志飞
 *
 */
public interface replyService extends BaseDao<Replys>{
	
	List<Replys> findByDate();
	
	List<Replys>findByKeyWord(String name);
	
	List<Replys> findByReply(Integer id);
}
