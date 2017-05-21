package com.zqrc.ITHome.homes.talks.service.Impl;

import java.util.Date;
import java.util.List;

import org.directwebremoting.extend.Reply;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zqrc.ITHome.base.service.BaseServiceImpl;
import com.zqrc.ITHome.homes.natural.vo.data_data;
import com.zqrc.ITHome.homes.talks.service.replyService;
import com.zqrc.ITHome.homes.talks.vo.Posts;
import com.zqrc.ITHome.homes.talks.vo.Replys;

/**
 *	回复事务
 * @author 李志飞
 *
 */
@Service("replyService")
@Transactional
public class replyServiceImpl extends BaseServiceImpl<Replys> implements replyService{

	/**
	 * 通过日期查询
	 */
	public List<Replys> findByDate() {
		return (List<Replys>)getSession().createQuery("FROM Replys p order by p.dates desc").list();
	}

	public List<Replys> findByKeyWord(String name) {
		return (List<Replys>)getSession().createQuery("FROM Replys d WHERE d.message like '%"+name+"%'").list();
	}
	
//	参与量
	public List<Replys> findByReply(Integer id) {
		return (List<Replys>)getSession().createQuery("FROM Replys d WHERE d.friend.id=?").setInteger(0, id).list();
	}

}
