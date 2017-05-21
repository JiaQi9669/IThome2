package com.zqrc.ITHome.homes.person.action;

import java.io.File;
import java.io.IOException;

import javax.annotation.Resource;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.zqrc.ITHome.base.action.BaseAction;
import com.zqrc.ITHome.homes.person.service.personService;
import com.zqrc.ITHome.homes.talks.service.boardService;
import com.zqrc.ITHome.homes.talks.service.postService;
import com.zqrc.ITHome.homes.talks.service.replyService;
import com.zqrc.ITHome.publics.labRoom.service.labService;
import com.zqrc.ITHome.util.DateUtil;

public abstract class personBaseAction<T> extends BaseAction<T>{
	
	@Resource(name="personService")
	protected personService personService;


}
