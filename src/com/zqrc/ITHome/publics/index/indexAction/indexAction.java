package com.zqrc.ITHome.publics.index.indexAction;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

@Controller("indexAction")
@Scope("prototype")
public class indexAction extends ActionSupport{
	
//	视图区*********************************
//	默认首页
	public String index(){
		return "index";
	}
//	实验室资源
	public String lab(){
		return "lab";
	}
//	我们的历史
	public String us(){
		return "us";
	}
//	加入我们
	public String join(){
		return "join";
	}
//	登录
	public String login(){
		return "login";
	}
//	联系我们
	public String contact(){
		return "contact";
	}
	
	
	
//	测试区****************************
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
