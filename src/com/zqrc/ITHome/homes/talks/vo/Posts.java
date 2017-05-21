package com.zqrc.ITHome.homes.talks.vo;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import com.zqrc.ITHome.publics.login.vo.Friends;

/**
 * 贴子信息
 * @author 李志飞
 *
 */
public class Posts {

//	id
	private Integer id;
//	贴名
	private String name;
//	帖信息
	private String message;
//	发帖时间
	private Date dates;
//	浏览量
	private Integer count;
//	发帖人
	private Friends friend;
//	所属板块
	private Boards board;
//	所属回复
	private Set<Replys>reply=new HashSet<Replys>();
	
	public Posts() {
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	public Friends getFriend() {
		return friend;
	}
	public void setFriend(Friends friend) {
		this.friend = friend;
	}
	public Boards getBoard() {
		return board;
	}
	public void setBoard(Boards board) {
		this.board = board;
	}
	public Set<Replys> getReply() {
		return reply;
	}
	public void setReply(Set<Replys> reply) {
		this.reply = reply;
	}
	
}
