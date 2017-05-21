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
import com.zqrc.ITHome.homes.talks.vo.Boards;
import com.zqrc.ITHome.publics.login.vo.Friends;
import com.zqrc.ITHome.util.HqlHelper;
import com.zqrc.ITHome.util.PageBean;

/**
 * 资源分类action
 * @author 李志飞
 *
 */
@Controller("packageAction")
@Scope("prototype")
public class packageAction extends developBaseAction<Packages>{
	private Integer project_id;//项目id
	public void setProject_id(Integer project_id) {
		this.project_id = project_id;
	}
	public Integer getProject_id() {
		return project_id;
	}
	private Integer project_ids;//父包id
	public void setProject_ids(Integer project_ids) {
		this.project_ids = project_ids;
	}
	public Integer getProject_ids() {
		return project_ids;
	}

	//	郭永越
	//	通过用户名返回所有的发布项目
	public String findAll(){
		List<Packages> packages=packageService.findAll();
		ActionContext.getContext().put("packages", packages);
		return "develop";
	}

	//	浏览
	public String list(){
		find();
		findPackageById();
		return "list";
	}
	
//	关键字检索
	public String findByKeyWord(){
		PageBean pageBean =fileService.getPageBean(pageNum,10, new HqlHelper(Files.class, "f").
				addOrderByProperty("id", false).
		addWhereCondition("f.name like ?","%"+getModel().getName()+"%")
		.addWhereCondition("f.fpackage.id = ?", getModel().getId()));
		pageBean.setCurrentPage(pageNum);
		ValueStack vs = ServletActionContext.getContext().getValueStack();
		vs.set("pageBean", pageBean);
		ActionContext.getContext().put("searchName", getModel().getName());
		ActionContext.getContext().put("searchType", 1);
		ActionContext.getContext().put("packid", getModel().getId());
		return "list";
	}

	public void findPackageById() {
		//查询数据并进行排序
		PageBean pageBean =fileService.getPageBean(pageNum,10, new HqlHelper(Files.class, "p").
				addOrderByProperty("id", false).
				addWhereCondition("p.fpackage.id = ?", getModel().getId()));
		pageBean.setCurrentPage(pageNum);
		ValueStack vs = ServletActionContext.getContext().getValueStack();
		vs.set("pageBean", pageBean);
		
		if(pageNum==0||pageNum==1){
			Packages packagea=packageService.getById(getModel().getId());
			vs.set("pageBeanpack", packagea.getPackages());
		}
		ActionContext.getContext().put("packid", getModel().getId());
		ActionContext.getContext().put("searchType", 0);

	}

	//	源码上传界面
	public String uploads() throws IOException {
		find();
		return "uploads";
	}

	public String find() {
		Packages packagea=packageService.getById(getModel().getId());
		ActionContext.getContext().put("packagea", packagea);
		return "develop";
	}

	public String findByName() {
		return "develop";
	}

	//	添加项目下板块界面
	public String addview() {
		Projects project=projectService.getById(project_id);
		ActionContext.getContext().put("projecta", project);
		ActionContext.getContext().put("project_ids", 0);
		return "addview";
	}
	//	添加子版块视图
	public String addviews() {
		Projects project=new Projects(); //project_id//包资源
		project.setId(project_id);
		ActionContext.getContext().put("projecta", project);
		ActionContext.getContext().put("project_ids", 1);
		return "addview";
	}
	
	//	添加项目下板块
	public String add() throws IOException {//添加过包数量限制
		if(project_ids==0){//项目级目录
			Projects project=projectService.getById(project_id);
			if(project.getPackNum()>project.getPackages().size()){
				Packages packs=new Packages();
				packs.setName(getModel().getName());
				packs.setMessage(getModel().getMessage());
				packs.setDates(new Date());
				packs.setPackNum(getModel().getPackNum());
				packs.setUrl_message(addImg());
				packs.setProjects(project);//packs.setFpackage(fpackage);
				packs.setFriends(getAdmins());
				packageService.save(packs);
				addFieldError("suc", "添加成功！");
			}else{
				addFieldError("outOfNumber", "添加失败，包数量超出最大值！");
			}
			ActionContext.getContext().put("projecta", project);
			ActionContext.getContext().put("project_ids", 0);
			
			
			return "addview";
		}else if(project_ids==1){//包级目录
			Packages packs=packageService.getById(project_id);
			if(packs.getPackNum()>packs.getPackages().size()){
				Packages packss=new Packages();
				packss.setName(getModel().getName());
				packss.setMessage(getModel().getMessage());
				packss.setDates(new Date());
				packss.setPackNum(getModel().getPackNum());
				packss.setUrl_message(addImg());
				//				packs.setProjects(packs.getProjects());
				packss.setFpackage(packs);
				packss.setFriends(getAdmins());
				packageService.save(packss);
				addFieldError("suc", "添加成功！");
			}else{
				addFieldError("outOfNumber", "添加失败，子包数量超出最大值！");
			}
			Projects project=new Projects(); //project_id//包资源
			project.setId(project_id);
			ActionContext.getContext().put("projecta", project);
			ActionContext.getContext().put("project_ids", 1);
			
			return "addview";
		}else{
			addFieldError("error", "非法的请求！");
			return "addview";
		}
	}

	public String del() {
		return "develop";
	}

	//	删除参与板块
	public String delJoin(){
		Packages packagea=packageService.getById(getModel().getId());
		packagea.setName(packagea.getName());
		packagea.setMessage(packagea.getMessage());
		packagea.setDates(packagea.getDates());
		packagea.setPackNum(packagea.getPackNum());
		packagea.setUrl_message(packagea.getUrl_message());
		packagea.setProjects(null);
		packagea.setFpackage(null);
		packagea.setFriends(null);
		packageService.update(packagea);
		packageService.clear(model);
		packageService.delete(getModel().getId());

		Friends friend=loginFriends.getById(getAdmins().getId());
		Set<Packages> packages=friend.getPackages();
		ActionContext.getContext().put("packages", packages);
		return "join";
	}

	public String updata() {
		return "develop";
	}

	public String findByData() {
		return "develop";
	}
}
