package com.zqrc.ITHome.homes.develop.action;

import java.io.IOException;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.util.ValueStack;
import com.zqrc.ITHome.homes.develop.vo.Files;
import com.zqrc.ITHome.homes.develop.vo.Packages;
import com.zqrc.ITHome.homes.develop.vo.Projects;
import com.zqrc.ITHome.homes.talks.vo.Posts;
import com.zqrc.ITHome.publics.login.vo.Friends;
import com.zqrc.ITHome.util.HqlHelper;
import com.zqrc.ITHome.util.PageBean;

/**
 * 资源分类action
 * @author 李志飞
 *
 */
@Controller("projectAction")
@Scope("prototype")
public class projectAction extends developBaseAction<Projects>{
	//	郭永越
	//	退出按钮
	public String quit(){
		return "quit";
	}
	//	加入项目的bean
	public String modelintroduce(){
		return "modelintroduce";
	}
	//	项目上传界面
	public String upload(){
		return "upload";
	}

	//	模块上传界面
	public String upload2(){
		return "upload2";
	}

	//	项目列表
	public String subl(){
		//		findAll();
		findPageList();
		return "subl";
	}

	//	按页查询数据
	public String findPageList(){
		//查询数据并进行排序
		PageBean pageBean =projectService.getPageBean(pageNum,10, new HqlHelper(Projects.class, "p").
				addOrderByProperty("id", false));
		//				addWhereCondition("p.friend.id = ?", getAdmins().getId()));
		pageBean.setCurrentPage(pageNum);
		ValueStack vs = ServletActionContext.getContext().getValueStack();
		vs.set("pageBean", pageBean);
		ActionContext.getContext().put("projecttype", 0);

		return "view";
	}

	//	我发布的项目
	public String me(){
		findByAdminId();
		return "person";
	}
	private void findByAdminId() {
		//查询数据并进行排序
		PageBean pageBean =projectService.getPageBean(pageNum,10, new HqlHelper(Projects.class, "p").
				addOrderByProperty("id", false).
				addWhereCondition("p.friend.id = ?", getAdmins().getId()));
		pageBean.setCurrentPage(pageNum);
		ValueStack vs = ServletActionContext.getContext().getValueStack();
		vs.set("pageBean", pageBean);
		ActionContext.getContext().put("projecttype", 0);

		//		List<Projects> projects=projectService.findByAdminId(getAdmins().getId());
		//		ActionContext.getContext().put("projects", projects);
	}

	//	项目列表查询按钮 
	public String Select(){
		//		findByName();
		findPageName();
		return "subl";
	}

	//	按页查询数据
	public String findPageName(){
		//查询数据并进行排序
		PageBean pageBean =projectService.getPageBean(pageNum,10, new HqlHelper(Projects.class, "p").
				addOrderByProperty("id", false).
				addWhereCondition("p.name like ?", "%"+getModel().getName()+"%"));
		pageBean.setCurrentPage(pageNum);
		ValueStack vs = ServletActionContext.getContext().getValueStack();
		vs.set("pageBean", pageBean);
		ActionContext.getContext().put("projecttype", 1);
		ActionContext.getContext().put("projectnames", getModel().getName());

		return "view";
	}

	//	发布项目
	public String release(){

		return "release";
	}

	//	项目详情
	public String introduce(){
		find();
		addviewCount();
		return "introduce";
	}
	
	public String find() {
		Projects projects=projectService.getById(getModel().getId());
		ActionContext.getContext().put("project", projects);
		return "develop";
	}
	//	板块列表
	public String list(){
		findPackageById();
		find();
		return "list";
	}

	public void findPackageById() {
		//查询数据并进行排序
		PageBean pageBean =packageService.getPageBean(pageNum,10, new HqlHelper(Packages.class, "p").
				addOrderByProperty("id", false).
				addWhereCondition("p.projects.id = ?", getModel().getId()));
		pageBean.setCurrentPage(pageNum);
		ValueStack vs = ServletActionContext.getContext().getValueStack();
		vs.set("pageBean", pageBean);
		ActionContext.getContext().put("proid", getModel().getId());

	}

	//	加载管理端的项目
	public String listpro() {
//		findAll();
		PageBean pageBean =projectService.getPageBean(pageNum,10, new HqlHelper(Projects.class, "p").
				addOrderByProperty("id", false));
//				addWhereCondition("p.projects.id = ?", getModel().getId()));
		pageBean.setCurrentPage(pageNum);
		ValueStack vs = ServletActionContext.getContext().getValueStack();
		vs.set("pageBean", pageBean);
		return "lista";
	}
	//	删除加载管理端的项目
	public String lista() {
		Projects projects=projectService.getById(getModel().getId());
		projects.setId(projects.getId());
		projects.setName(projects.getName());
		projects.setMessage(projects.getMessage());
		projects.setDates(projects.getDates());
		projects.setFriend(null);
		projects.setPackNum(projects.getPackNum());
		projects.setUrl_message(projects.getUrl_message());
		projects.setProjectstate(projects.getProjectstate());
		projects.setViewCounts(projects.getViewCounts());
		projectService.update(projects);
		projectService.clear(model);
		projectService.delete(getModel().getId());
		
		listpro();
//		findAll();
		return "lista";
	}

	//	获得所有项目列表的方法
	public String findAll() {
		List<Projects> projects=projectService.findAll();
		ActionContext.getContext().put("projects", projects);
		return "develop";
	}

	//	访问量
	private void addviewCount() {
		Projects projects=projectService.getById(getModel().getId());
		projects.setId(projects.getId());
		projects.setName(projects.getName());
		projects.setMessage(projects.getMessage());
		projects.setDates(projects.getDates());
		projects.setFriend(projects.getFriend());
		projects.setPackNum(projects.getPackNum());
		projects.setUrl_message(projects.getUrl_message());
		projects.setProjectstate(projects.getProjectstate());
		projects.setViewCounts(projects.getViewCounts()+1);
		projectService.update(projects);
	}

	//	设置项目结项状态
	public String setProjectState(){
		Projects projects=projectService.getById(getModel().getId());
		projects.setId(projects.getId());
		projects.setName(projects.getName());
		projects.setMessage(projects.getMessage());
		projects.setDates(projects.getDates());
		projects.setFriend(projects.getFriend());
		projects.setPackNum(projects.getPackNum());
		projects.setUrl_message(projects.getUrl_message());
		projects.setProjectstate(1);
		projects.setViewCounts(projects.getViewCounts()+1);
		projectService.update(projects);

		findByAdminId();
		return "person";
	}

	//	我参与的项目发布项目
	public String join(){
		findJoinByAdminId();
		return "join";
	}
	
	public String findmyjoinBykey() {
		PageBean pageBean =packageService.getPageBean(pageNum,10, new HqlHelper(Packages.class, "p").
				addOrderByProperty("id", false).
				addWhereCondition("p.friends.id = ?", getAdmins().getId())
				.addWhereCondition("p.name like ?", "%"+getModel().getName()+"%"));
		pageBean.setCurrentPage(pageNum);
		ValueStack vs = ServletActionContext.getContext().getValueStack();
		vs.set("pageBean", pageBean);
		ActionContext.getContext().put("projectname", getModel().getName());
		ActionContext.getContext().put("projecttype", 1);
		
		return "join";
	}

	private void findJoinByAdminId() {
		//		Friends friend=loginFriends.getById(getAdmins().getId());//projectService.findJoinByAdminId(getAdmins().getId());
		//		Set<Packages> packages=friend.getPackages();
		//		ActionContext.getContext().put("packages", packages);
		//查询数据并进行排序
		PageBean pageBean =packageService.getPageBean(pageNum,10, new HqlHelper(Packages.class, "p").
				addOrderByProperty("id", false).
				addWhereCondition("p.friends.id = ?", getAdmins().getId()));
		pageBean.setCurrentPage(pageNum);
		ValueStack vs = ServletActionContext.getContext().getValueStack();
		vs.set("pageBean", pageBean);
		ActionContext.getContext().put("projecttype", 0);
	}

	//	通过名字关键字获得数据库的项目列表的数据
	public String findByName() {
		List<Projects> projects=projectService.fingByName(getModel().getName());	
		ActionContext.getContext().put("projects", projects);
		return "develop";
	}

	public String add() throws IOException {
		Projects projects=new Projects();
		projects.setName(getModel().getName());
		projects.setMessage(getModel().getMessage());
		projects.setDates(new Date());
		projects.setFriend(getAdmins());
		projects.setProjectstate(0);
		projects.setPackNum(getModel().getPackNum());
		projects.setUrl_message(addImg());
		projects.setViewCounts(0);
		projectService.save(projects);

		return "develop";
	}

	public String del() {
		projectService.delete(getModel().getId());
		return "develop";
	}

	public String updata() {
		return "develop";
	}

	public String findByData() {
		return "develop";
	}
}
