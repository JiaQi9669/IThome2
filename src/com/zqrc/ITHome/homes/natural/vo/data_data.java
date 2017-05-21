package com.zqrc.ITHome.homes.natural.vo;

import java.util.Date;

import com.zqrc.ITHome.publics.login.vo.Friends;

/**
 * 资源信息
 * @author 李志飞
 *
 */
public class data_data {
	
//	id
	private Integer id;
//	名字
	private String name;
//	描述信息
	private String message;
//	上传日期
	private Date dates;
//	上传地址
	private String url_data;
//	上传人
	private String friends;
//	资源分类
	private data_class data_class;
//	下载量
	private Integer down_num;

	public data_data() {
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

	public String getUrl_data() {
		return url_data;
	}

	public void setUrl_data(String url_data) {
		this.url_data = url_data;
	}
	
	public String getFriends() {
		return friends;
	}

	public void setFriends(String friends) {
		this.friends = friends;
	}
	
	public data_class getData_class() {
		return data_class;
	}

	public void setData_class(data_class data_class) {
		this.data_class = data_class;
	}

	public Integer getDown_num() {
		return down_num;
	}

	public void setDown_num(Integer down_num) {
		this.down_num = down_num;
	}
	
}
