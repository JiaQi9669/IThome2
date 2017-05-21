package com.zqrc.ITHome.homes.natural.vo;

import java.util.HashSet;
import java.util.Set;

/**
 * 资源分类类别
 * @author 李志飞
 *
 */
public class data_class {
	
//	id
	private Integer id;
//	名字
	private String name;
//	简介
	private String message;
//	图片
	private String url_img;
//	对应多个数据
	private Set<data_data>resources=new HashSet<data_data>();
	
	public data_class(){
	}

	public Integer getId() {
		return id;
	}
	
	public String getUrl_img() {
		return url_img;
	}

	public void setUrl_img(String url_img) {
		this.url_img = url_img;
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

	public Set<data_data> getResources() {
		return resources;
	}

	public void setResources(Set<data_data> resources) {
		this.resources = resources;
	}
	
}
