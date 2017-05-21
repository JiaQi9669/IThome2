package com.zqrc.ITHome.homes.talks.vo;

import java.util.Date;

import com.zqrc.ITHome.publics.login.vo.Friends;

/**
 * 回帖对象
 * @author 李志飞
 *
 */
public class Replys {
	
//	id
	private Integer id;
//	内容
	private String message;
//	回复时间
	private Date dates;
//	回复人
	private Friends friend;
//	所属贴子
	private Posts post;
	
	public Replys() {
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Date getDates() {
		return dates;
	}

	public void setDates(Date dates) {
		this.dates = dates;
	}

	public Friends getFriend() {
		return friend;
	}

	public void setFriend(Friends friend) {
		this.friend = friend;
	}

	public Posts getPost() {
		return post;
	}

	public void setPost(Posts post) {
		this.post = post;
	}
}
