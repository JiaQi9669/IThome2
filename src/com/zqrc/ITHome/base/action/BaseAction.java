package com.zqrc.ITHome.base.action;

import java.lang.reflect.ParameterizedType;

import javax.annotation.Resource;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.zqrc.ITHome.publics.demos.service.DemoService;
import com.zqrc.ITHome.publics.demos.service.Impl.DemoServiceImpl;
import com.zqrc.ITHome.publics.login.vo.Friends;

/**
 * 公共action实现类
 *
 * @param <T>
 */
public abstract class BaseAction<T> extends ActionSupport implements ModelDriven<T>{
	protected T model;
	public BaseAction(){
		try{
			ParameterizedType pt = (ParameterizedType) this.getClass().getGenericSuperclass();
			Class<T> clazz = (Class<T>) pt.getActualTypeArguments()[0];
			model = clazz.newInstance();
		}catch(Exception e){
			throw new RuntimeException(e);
		}
	}
//	默认页
	protected int pageNum = 1;
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	//获取模型驱动
	public T getModel(){
		return model;
	}
//	全局变量用以接收用户信息
	protected Friends getAdmins() {
		return (Friends)ActionContext.getContext().getSession().get("admins");
	}
	protected void setAdmins(Friends admins) {
//		ActionContext.getContext().getSession().clear();
		ActionContext.getContext().getSession().put("admins", admins);
	}
}
