package com.zqrc.ITHome.publics.applyUs.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.util.ValueStack;
import com.zqrc.ITHome.homes.develop.vo.Files;
import com.zqrc.ITHome.publics.applyUs.vo.ApplyUs;
import com.zqrc.ITHome.publics.labRoom.vo.labRoom;
import com.zqrc.ITHome.util.DateUtil;
import com.zqrc.ITHome.util.HqlHelper;
import com.zqrc.ITHome.util.PageBean;

@Controller("applyAction")
@Scope("prototype")
public class applyAction extends applyBaseAction<ApplyUs>{


	//	回到当前视图
	public String apply(){
		return "apply";
	}
	public String list() {
		findPageList();
		return "list";
	}
	
	public String names() {
		PageBean pageBean =applyService.getPageBean(pageNum,10, new HqlHelper(ApplyUs.class, "p").
				addOrderByProperty("id", false).
				addWhereCondition("p.stuName like ?", "%"+getModel().getStuName()+"%"));
		pageBean.setCurrentPage(pageNum);
		ValueStack vs = ServletActionContext.getContext().getValueStack();
		vs.set("pageBean", pageBean);
		ActionContext.getContext().put("searchName", getModel().getStuName());
		ActionContext.getContext().put("searchType", 1);
		return "list";
	}

	public void findPageList(){
		//查询数据并进行排序
		PageBean pageBean =applyService.getPageBean(pageNum,10, new HqlHelper(ApplyUs.class, "p").
				addOrderByProperty("id", false));
//				addWhereCondition("p.fpackage.id = ?", getModel().getId()));
		pageBean.setCurrentPage(pageNum);
		ValueStack vs = ServletActionContext.getContext().getValueStack();
		vs.set("pageBean", pageBean);
		ActionContext.getContext().put("searchType", 0);
	}

	//	人员详情id
	public String view() {
		find();
		return "view";
	}

	//	添加人员
	public String add() throws IOException {
		
		ApplyUs apply=new ApplyUs();
		apply.setApplytype(getModel().getApplytype());
		apply.setDates(DateUtil.getDates(new Date()));
		apply.setPicture(addImg());
		apply.setStuAboutFuture(getModel().getStuAboutFuture());
		apply.setStuAboutSelf(getModel().getStuAboutSelf());
		apply.setStuBorn(getModel().getStuBorn());
		apply.setStuClass(getModel().getStuClass());
		apply.setStuGoodAt(getModel().getStuGoodAt());
		apply.setStuID(getModel().getStuID());
		apply.setStuJoinParty(getModel().getStuJoinParty());
		apply.setStuName(getModel().getStuName());
		apply.setStuPhone(getModel().getStuPhone());
		apply.setStuQq(getModel().getStuQq());
		apply.setStuSex(getModel().getStuSex());
		apply.setStuSleepRoom(getModel().getStuSleepRoom());

		apply.setStuaddr(getModel().getStuaddr());
		apply.setStuemail(getModel().getStuemail());
		apply.setAboutlab(getModel().getAboutlab());

		apply.setPersonHobby(getModel().getPersonHobby());
System.out.println(apply+"-----------------------------------");
		applyService.save(apply);
		return "add";
	}

	//	通过id删除
	public String del() {
		applyService.delete(getModel().getId());
		findPageList();
		return "list";
	}

	//	更新
	public String updata() throws IOException{
		ApplyUs apply=new ApplyUs();
		apply.setId(getModel().getId());
		apply.setApplytype(getModel().getApplytype());
		apply.setDates(DateUtil.getDates(new Date()));
		apply.setPicture(addImg());
		apply.setStuAboutFuture(getModel().getStuAboutFuture());
		apply.setStuAboutSelf(getModel().getStuAboutSelf());
		apply.setStuBorn(getModel().getStuBorn());
		apply.setStuClass(getModel().getStuClass());
		apply.setStuGoodAt(getModel().getStuGoodAt());
		apply.setStuID(getModel().getStuID());
		apply.setStuJoinParty(getModel().getStuJoinParty());
		apply.setStuName(getModel().getStuName());
		apply.setStuPhone(getModel().getStuPhone());
		apply.setStuQq(getModel().getStuQq());
		apply.setStuSex(getModel().getStuSex());
		apply.setStuSleepRoom(getModel().getStuSleepRoom());

		apply.setStuaddr(getModel().getStuaddr());
		apply.setStuemail(getModel().getStuemail());
		apply.setAboutlab(getModel().getAboutlab());

		applyService.update(apply);
		return "apply";
	}

	//	通过id查询详情
	public String find() {
		ApplyUs apply=applyService.getById(getModel().getId());
		ActionContext.getContext().put("apply", apply);
		return "apply";
	}

	//	查询所有可用于假分页
	public String findAll() {
		List<ApplyUs> apply=applyService.findAll();
		ActionContext.getContext().put("apply", apply);
		return "apply";
	}

	//	真分页查询简表
	public String findPage() {
		PageBean pageBean =applyService.getPageBean(pageNum,2, new HqlHelper(ApplyUs.class, "apply").addOrderByProperty("id", true));
		ValueStack vs = ServletActionContext.getContext().getValueStack();
		vs.set("pageBean", pageBean);
		return "apply";
	}

	/**
	 * 导出表
	 * @return
	 */
	public String getMessage(){
		/**
		 * 此处应事先excel导出
		 */

		return "apply";
	}
}
