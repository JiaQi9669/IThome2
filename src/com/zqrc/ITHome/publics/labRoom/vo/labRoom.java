package com.zqrc.ITHome.publics.labRoom.vo;

import java.util.Date;

/**
 * 实验室相关活动、信息
 * @author 李志飞
 *
 */
public class labRoom {
	
//	主键
	private Integer id;
//	名字
	private String name;
//	信息
	private String message;
//	外连接
	private String url_link;
//	图片
	private String url_img;
//	类型（实验室活动）
	private String types;
//	日期
	private Date dates;

	public labRoom() {
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

	public String getUrl_link() {
		return url_link;
	}

	public void setUrl_link(String url_link) {
		this.url_link = url_link;
	}

	public String getUrl_img() {
		return url_img;
	}

	public void setUrl_img(String url_img) {
		this.url_img = url_img;
	}

	public String getTypes() {
		return types;
	}

	public void setTypes(String types) {
		this.types = types;
	}

	public Date getDates() {
		return dates;
	}

	public void setDates(Date dates) {
		this.dates = dates;
	}
	
}
