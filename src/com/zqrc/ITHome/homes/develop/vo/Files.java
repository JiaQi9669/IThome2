package com.zqrc.ITHome.homes.develop.vo;

import java.util.Date;

import com.zqrc.ITHome.publics.login.vo.Friends;

/**
 * 文件对象
 * @author 李志飞
 *
 */
public class Files {

//	id
	private Integer id;
//	名
	private String name;
//	描述信息
	private String message;
//	所属包
	private Packages fpackage;
//	文档资源
	private String url_message;
//	发布时间
	private Date dates;
//	开发人员
	private Friends friends;
	
	public Friends getFriends() {
		return friends;
	}

	public void setFriends(Friends friends) {
		this.friends = friends;
	}

	public Files() {
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
	public Packages getFpackage() {
		return fpackage;
	}
	public void setFpackage(Packages fpackage) {
		this.fpackage = fpackage;
	}
	public String getUrl_message() {
		return url_message;
	}
	public void setUrl_message(String url_message) {
		this.url_message = url_message;
	}
	public Date getDates() {
		return dates;
	}
	public void setDates(Date dates) {
		this.dates = dates;
	}
}
