package com.zqrc.ITHome.publics.demos.action;

import javax.annotation.Resource;

import com.zqrc.ITHome.base.action.BaseAction;
import com.zqrc.ITHome.publics.demos.service.DemoService;
import com.zqrc.ITHome.publics.demos.vo.demos;

public abstract class ABaseAction<T> extends BaseAction<T>{
	
	@Resource //(name="demoService")
	protected DemoService demoService;

}
