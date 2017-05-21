package com.zqrc.ITHome.publics.login.action;

import java.io.IOException;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.util.ValueStack;
import com.zqrc.ITHome.homes.talks.vo.Boards;
import com.zqrc.ITHome.publics.login.vo.Friends;
import com.zqrc.ITHome.util.HqlHelper;
import com.zqrc.ITHome.util.PageBean;

@Controller("loginAction")
@Scope("prototype")
public class loginAction extends loginBaseAction<Friends>{

	//	王志汤负责部分start
	//查询实验室全体人员-王志汤
	public String people() throws Exception{
		findPageList();
		return "people";
	}
	
	public void findPageList() {
		PageBean pageBean=loginService.getPageBean(pageNum, 10, new HqlHelper(Friends.class, "f")
		.addOrderByProperty("id", true));
		pageBean.setCurrentPage(pageNum);
		ValueStack vs = ServletActionContext.getContext().getValueStack();
		vs.set("pageBean", pageBean);
		ActionContext.getContext().put("searchType", 0);
	}
	
	//跳转到添加页面-王志汤
	public String addpersonal() {
		return "add";
	}
	//添加页面-王志汤
	public String addsuccess() throws Exception {
		if(add()=="login"){
			findPageList();
			return "people";
		}
		return "adderror";
	}
	//根据名字查找-王志汤
	public String Name(){
//		findByName();
		PageBean pageBean =loginService.getPageBean(pageNum,10, new HqlHelper(Friends.class, "f").
				addOrderByProperty("id", false).
		addWhereCondition("f.pickName like ?","%"+getModel().getPickName()+"%"));
		pageBean.setCurrentPage(pageNum);
		ValueStack vs = ServletActionContext.getContext().getValueStack();
		vs.set("pageBean", pageBean);
		ActionContext.getContext().put("searchName", getModel().getPickName());
		ActionContext.getContext().put("searchType", 1);
		return "name";
	}

	//	基地首页
	public String homes() {
		return "homes";
	}

	//跳到修改基地成员管理
	public String updateperson() throws Exception {
		find();
		return "updateperson";
	}
	//修改基地成员的信息
	public String updatepersons() throws Exception {
		updata();
		findAll();
		ActionContext.getContext().put("changeType", 0);
		return "updatepersons";
	}
	//跳转到个人管理-王志汤
	public String my() throws Exception {
		//		find();
		Friends Friends=loginService.getById(getAdmins().getId());
		ActionContext.getContext().put("friends", Friends);
		return "my";

	}
	//跳到修改个人信息界面
	public String myupdate() throws Exception {
		//		find();
		Friends Friends=loginService.getById(getAdmins().getId());
		ActionContext.getContext().put("friends", Friends);
		ActionContext.getContext().put("changeType", 1);
		return "myupdate";
	}
	//删除基地成员
	public String peoplede() throws Exception {
		del();
		findPageList();
		return "people";
	}
	//修改个人信息
	public String myupdatedon() throws Exception {
		updata();
		return "myupdatedon";
	}

	//修改个人信息
	public String myupdatedons() throws Exception {
		updata();
		ActionContext.getContext().put("friends", getAdmins());
		return "myupdatedons";
	}
	//	王志汤负责部分end

	public String exit() {
		ActionContext.getContext().getSession().clear();
		return "exit";
	}

	/**
	 * 登录初始视图
	 */
	public String login(){
		//		Friends f=loginService.getById(1);
		Friends f = null;
		try {
			f = loginService.findByAccount(getModel().getAccounts());
		} catch (Exception e) {
			//			e.printStackTrace();
			addFieldError("error", "账号或密码错误！");
			return INPUT;
		}
		if(null!=f){
			if(f.getPass().equals(getModel().getPass())){
				setAdmins(f);
				System.out.println("!!!用户登陆了："+f.getPickName()+"id is==>"+f.getId()+"=======>"+getAdmins().getPickName());
				return "login";
			}else{
				addFieldError("error", "账号或密码错误！");
				return INPUT;
			}
		}else{
			addFieldError("error", "账号或密码错误！");
			return INPUT;
		}

	}
	//	登录功能验证
	public void validateLogin() {
		if(getModel().getAccounts()==null||getModel().getAccounts().equals("")){
			addFieldError("error", "账号不能为空！");
		}
		if(getModel().getPass()==null||getModel().getPass().equals("")){
			addFieldError("error", "密码不能为空！");
		}
	}

	/**
	 * 增
	 * @return
	 * @throws Exception
	 */
	public String add() throws Exception{
		System.out.println("save");
		Friends friends=new Friends();
		friends.setAccounts(getModel().getAccounts());
		friends.setLeaves("1");
		friends.setMyCase("10");
		friends.setPass(getModel().getAccounts().substring(getModel().getAccounts().length()-3, getModel().getAccounts().length()));
		friends.setPickName(getModel().getRealName());
		friends.setPicture("1234.png");
		friends.setRealName(getModel().getRealName());
		friends.setRole_p("0");
		friends.setSay("新新人类>_<");
		loginService.save(friends);
		return "login";
	}

	/**
	 * 删by id
	 * @return
	 * @throws Exception
	 */
	public String del() throws Exception{
		System.out.println("del");
		loginService.delete(getModel().getId());
		return "login";
	}

	/**
	 * 改
	 * @return
	 * @throws IOException 
	 * @throws Exception
	 */
	public String updata() throws IOException {
		System.out.println("updata");
		Friends friends=new Friends();
		friends.setId(getModel().getId());
		friends.setAccounts(getAdmins().getAccounts());
		friends.setLeaves(getModel().getLeaves());
		friends.setMyCase(getModel().getMyCase());
		friends.setPass(getModel().getPass());
		friends.setPickName(getModel().getPickName());
		friends.setPicture(loginService.getById(getModel().getId()).getPicture());
		friends.setRealName(getModel().getRealName());
		friends.setRole_p(getModel().getRole_p());
		friends.setSay(getModel().getSay());
		loginService.update(friends);
		return "login";
	}

	/**
	 * 查id
	 * @return
	 * @throws Exception
	 */
	public String find() throws Exception{
		Friends Friends=loginService.getById(getModel().getId());
		ActionContext.getContext().put("friends", Friends);
		return "login";
	}

	/**
	 * 通过账号查询
	 * @return
	 */
	public String findByName() {
		/**
		 * 账号
		 */
		List<Friends> Friends=loginService.findByName(getModel().getAccounts());
		ActionContext.getContext().put("friends", Friends);
		return "people";
	}

	/**
	 * 查所有
	 * @return
	 * @throws Exception
	 */
	public String findAll() throws Exception{
		List<Friends> Friends=loginService.findAll();
		ActionContext.getContext().put("friends", Friends);
		return "login";
	}

	/**
	 * 指定每页放2条数据
	 * @return
	 */
	public String findPage(){
		//		查询数据并进行排序
		PageBean pageBean =loginService.getPageBean(pageNum,2, new HqlHelper(Friends.class, "friend").addOrderByProperty("id", false));
		ValueStack vs = ServletActionContext.getContext().getValueStack();
		vs.set("pageBean", pageBean);
		return "login";
	}

}
