package com.zqrc.ITHome.homes.talks.vo;

import java.util.HashSet;
import java.util.Set;

/**
 * 贴子分类
 * @author 李志飞
 *
 */
public class Boards {
//	id
	private Integer id;
//	名字
	private String name;
//	信息
	private String message;
//	图片
	private String url_img;
	private Integer boardType;
//	贴子
	private Set<Posts> posts = new HashSet<Posts>();
	
	public Boards() {
	}
	public void setBoardType(Integer boardType) {
		this.boardType = boardType;
	}
	public Integer getBoardType() {
		return boardType;
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
	public String getUrl_img() {
		return url_img;
	}
	public void setUrl_img(String url_img) {
		this.url_img = url_img;
	}
	public Set<Posts> getPosts() {
		return posts;
	}
	public void setPosts(Set<Posts> posts) {
		this.posts = posts;
	}
	
}
