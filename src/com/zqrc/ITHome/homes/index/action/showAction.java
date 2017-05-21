package com.zqrc.ITHome.homes.index.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

/**
 * 基地内部视图
 * @author 李志飞
 *
 */
@Controller("showAction")
@Scope("prototype")
public class showAction extends ActionSupport{
	
//	论坛区*****************************************
//	与我相关
	public String abouts() {
		return "abouts";
	}
//	浏览
	public String browse() {
		return "browse";
	}
//	发送
	public String push() {
		return "push";
	}
	
//	资源区***************************************
	
}
