package com.zqrc.ITHome.publics.login.vo;

import java.util.HashSet;
import java.util.Set;

import com.zqrc.ITHome.homes.develop.vo.Files;
import com.zqrc.ITHome.homes.develop.vo.Packages;
import com.zqrc.ITHome.homes.develop.vo.Projects;
import com.zqrc.ITHome.homes.talks.vo.Posts;
import com.zqrc.ITHome.homes.talks.vo.Replys;

/**
 * 内部人员
 */
public class Friends {

	//	id
	private Integer id;
	//	账号
	private String accounts;
	//	真实姓名
	private String realName;
	//	昵称
	private String pickName;
	//	密码
	private String pass;
	//  个性话语
	private String say;
	//	权限
	private String role_p;
	//	我的积分
	private String myCase;
	//	等级
	private String leaves;
	//	头像
	private String picture;
//	所属贴子
	private Set<Posts>posts=new HashSet<Posts>();
//	所属回复
	private Set<Replys>replys=new HashSet<Replys>();
//	发布所有项目
	private Set<Projects>projects=new HashSet<Projects>();
//	参与项目模块
	private Set<Packages>packages=new HashSet<Packages>();
//	上传文件
	private Set<Files>files=new HashSet<Files>();
	
	public Set<Files> getFiles() {
		return files;
	}

	public void setFiles(Set<Files> files) {
		this.files = files;
	}

	public Set<Packages> getPackages() {
		return packages;
	}

	public void setPackages(Set<Packages> packages) {
		this.packages = packages;
	}

	public Set<Projects> getProjects() {
		return projects;
	}
	
	public void setProjects(Set<Projects> projects) {
		this.projects = projects;
	}

	public Set<Posts> getPosts() {
		return posts;
	}

	public void setPosts(Set<Posts> posts) {
		this.posts = posts;
	}

	public Set<Replys> getReplys() {
		return replys;
	}

	public void setReplys(Set<Replys> replys) {
		this.replys = replys;
	}

	public String getAccounts() {
		return accounts;
	}

	public void setAccounts(String accounts) {
		this.accounts = accounts;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public Friends() {
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getRealName() {
		return realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public String getPickName() {
		return pickName;
	}

	public void setPickName(String pickName) {
		this.pickName = pickName;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getSay() {
		return say;
	}

	public void setSay(String say) {
		this.say = say;
	}

	
	public String getRole_p() {
		return role_p;
	}

	public void setRole_p(String role_p) {
		this.role_p = role_p;
	}

	public String getMyCase() {
		return myCase;
	}

	public void setMyCase(String myCase) {
		this.myCase = myCase;
	}

	public String getLeaves() {
		return leaves;
	}

	public void setLeaves(String leaves) {
		this.leaves = leaves;
	}


}
