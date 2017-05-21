package com.zqrc.ITHome.homes.develop.vo;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import com.zqrc.ITHome.publics.login.vo.Friends;

/**
 * 文件夹对象
 * @author 李志飞
 *
 */
public class Packages {

//	id
	private Integer id;
//	包名
	private String name;
//	描述信息
	private String message;
//	所属项目
	private Projects projects;
//	所属包
	private Packages fpackage;
//	描述文档资源
	private String url_message;
//	包限制
	private Integer packNum;
//	参与时间
	private Date dates;
//	开发人员
	private Friends friends;
//	包
	private Set<Packages>packages=new HashSet<Packages>();
//	文件
	private Set<Files>files=new HashSet<Files>();
	
	public Packages() {
	}
	
	public Friends getFriends() {
		return friends;
	}

	public void setFriends(Friends friends) {
		this.friends = friends;
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

	public Projects getProjects() {
		return projects;
	}

	public void setProjects(Projects projects) {
		this.projects = projects;
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

	public Integer getPackNum() {
		return packNum;
	}

	public void setPackNum(Integer packNum) {
		this.packNum = packNum;
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

	public Set<Files> getFiles() {
		return files;
	}

	public void setFiles(Set<Files> files) {
		this.files = files;
	}
}
