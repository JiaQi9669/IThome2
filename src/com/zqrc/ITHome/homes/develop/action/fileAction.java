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
import com.zqrc.ITHome.publics.login.vo.Friends;
import com.zqrc.ITHome.util.HqlHelper;
import com.zqrc.ITHome.util.PageBean;

/**
 * 资源分类action
 * @author 李志飞
 *
 */
@Controller("fileAction")
@Scope("prototype")
public class fileAction extends developBaseAction<Files>{
	
	private Integer pack_id;
	public void setPack_id(Integer pack_id) {
		this.pack_id = pack_id;
	}
	public Integer getPack_id() {
		return pack_id;
	}
	
	public String uploads() throws IOException {
		add();
//		pack_id
		findPackageById();
		findpacks();
		return "list";
	}
	
	private void findpacks() {
		Packages packagea=packageService.getById(getPack_id());
		ActionContext.getContext().put("packagea", packagea);
	}
	
	public void findPackageById() {
		//查询数据并进行排序
		PageBean pageBean =fileService.getPageBean(pageNum,10, new HqlHelper(Files.class, "p").
				addOrderByProperty("id", false).
				addWhereCondition("p.fpackage.id = ?",getPack_id()));
		pageBean.setCurrentPage(pageNum);
		ValueStack vs = ServletActionContext.getContext().getValueStack();
		vs.set("pageBean", pageBean);
		
		if(pageNum==0||pageNum==1){
			Packages packagea=packageService.getById(getPack_id());
			vs.set("pageBeanpack", packagea.getPackages());
		}
		ActionContext.getContext().put("packid", getPack_id());
		ActionContext.getContext().put("searchType", 0);

	}
	
//	郭永越
//	通过用户名返回所有参与项目
//	根据frends获得到项目，项目获得包，包获得文件
	public String findAll() {
		
		return "develop";
	}
	public String add() throws IOException {
		Files file=new Files();
		file.setName(getModel().getName());
		file.setMessage(getModel().getMessage());
		file.setDates(new Date());
		file.setFpackage(packageService.getById(pack_id));
		file.setFriends(getAdmins());
		file.setUrl_message(addImg());
		fileService.save(file);
		return "develop";
	}
	
	public String del() {
		fileService.delete(getModel().getId());
//		Packages packages=packageService.getById(pack_id);
//		ActionContext.getContext().put("packagea", packages);
		findpacks();
		findPackageById();
		return "list";
	}
	
	public String updata() {
		return "develop";
	}
	
	public String find() {
		return "develop";
	}
	
	public String findByName() {
		return "develop";
	}
	
	public String findByData() {
		return "develop";
	}
}
