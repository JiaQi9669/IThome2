package com.zqrc.ITHome.publics.demos.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.zqrc.ITHome.publics.demos.vo.demos;

@Controller("TestViewAction")
@Scope("prototype")
public class TestViewAction extends ActionSupport{
	
//	默认
	public String index(){
		return "index";
	}
	
//	全部功能
	public String all(){
		return "all";
	}
//	前台展示
	public String view(){
		return "view";
	}
//	招新报名
	public String apply(){
		return "apply";
	}
//	招新报名
	public String login(){
		return "login";
	}
	
//	资源共享
	public String data(){
		return "data";
	}
//	论坛空间
	public String talk(){
		return "talk";
	}
//	项目空间
	public String project(){
		return "project";
	}
//	管理功能
	public String admin(){
		return "admin";
	}
	
}
