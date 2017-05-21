package com.zqrc.ITHome.homes.develop.vo;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import com.zqrc.ITHome.publics.login.vo.Friends;

/**
 * 项目对象
 * @author 李志飞
 */
public class Projects {
//	9个属性
	
//	id
	private Integer id;
//	项目名
	private String name;
//	描述信息
	private String message;
//	描述文档资源
	private String url_message;
//	发布人
	private Friends friend;
//	发布时间
	private Date dates;
//	浏览量
	private Integer viewCounts;
//	包限制
	private Integer packNum;
//	项目状态//0是未接项1是结项
	private Integer projectstate; 
//	所属文件夹
	private Set<Packages>packages=new HashSet<Packages>();
	
	public Projects() {
	}
	
	public Integer getProjectstate() {
		return projectstate;
	}



	public void setProjectstate(Integer projectstate) {
		this.projectstate = projectstate;
	}



	public Integer getViewCounts() {
		return viewCounts;
	}

	public void setViewCounts(Integer viewCounts) {
		this.viewCounts = viewCounts;
	}

	public Integer getPackNum() {
		return packNum;
	}

	public void setPackNum(Integer packNum) {
		this.packNum = packNum;
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

	public String getUrl_message() {
		return url_message;
	}

	public void setUrl_message(String url_message) {
		this.url_message = url_message;
	}

	public Friends getFriend() {
		return friend;
	}

	public void setFriend(Friends friend) {
		this.friend = friend;
	}

	public Date getDates() {
		return dates;
	}

	public void setDates(Date dates) {
		this.dates = dates;
	}

	public Set<Packages> getPackages() {
		return packages;
	}

	public void setPackages(Set<Packages> packages) {
		this.packages = packages;
	}
}
