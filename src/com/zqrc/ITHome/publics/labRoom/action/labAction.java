package com.zqrc.ITHome.publics.labRoom.action;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.util.ValueStack;
import com.zqrc.ITHome.publics.labRoom.vo.labRoom;
import com.zqrc.ITHome.util.HqlHelper;
import com.zqrc.ITHome.util.PageBean;

@Controller("labAction")
@Scope("prototype")
public class labAction extends labBaseAction<labRoom>{

	//查询所有
	public String adhistory() throws Exception{
//			findAll();
		findAllPage();
		return "adhistory";
	}
	
	public void findAllPage() {
		PageBean pageBean=labService.getPageBean(pageNum, 10,new HqlHelper(labRoom.class, "lab")
		.addOrderByProperty("id", false));
		pageBean.setCurrentPage(pageNum);
		ValueStack vs = ServletActionContext.getContext().getValueStack();
		vs.set("pageBean", pageBean);
		ActionContext.getContext().put("searchType", 0);
	}
	
	//进入添加历史界面-王志汤
	public String addhistory(){
		return "addhistory";
	}
//	删除历史-王志汤
	public String delhitory() throws Exception {
			del();
//			findAll();
			findAllPage();
		return "delhistory";
	}
	
//	查看历史界面-王志汤
	public String sehistory() {
		return "sehistory";
	}
//	添加历史-王志汤
	public String addhistorysu() throws Exception {
			add();
			findAllPage();
//			findAll();
		return "adhistory";
	}
	
	public String findByName() {
		PageBean pageBean =labService.getPageBean(pageNum,2, new HqlHelper(labRoom.class, "lab")
		.addOrderByProperty("id", false)
		.addWhereCondition("lab.name like ?", "%"+getModel().getName()+"%"));
		ValueStack vs = ServletActionContext.getContext().getValueStack();
		vs.set("pageBean", pageBean);
		ActionContext.getContext().put("searchName", getModel().getName());
		ActionContext.getContext().put("searchType", 1);
		return "adhistory";
	}
	

	/**
	 * 初始视图
	 */
	public String view(){
		List<labRoom> labroom=labService.findDate();
		ActionContext.getContext().put("labs", labroom);
		return "view";
	}

	/**
	 * 增
	 * @return
	 * @throws Exception
	 */
	public String add() throws Exception{
		System.out.println("save");
		labRoom labroom=new labRoom();
		labroom.setName(getModel().getName());
		labroom.setMessage(getModel().getMessage());
		labroom.setUrl_img(addImg());
		labroom.setUrl_link(getModel().getUrl_link());
		labroom.setDates(new Date());
		labroom.setTypes(getModel().getTypes());
		labService.save(labroom);
		return "view";
	}

	/**
	 * 删by id
	 * @return
	 * @throws Exception
	 */
	public String del() throws Exception{
		System.out.println("del");
		labService.delete(getModel().getId());
		return "view";
	}

	/**
	 * 改
	 * @return
	 * @throws IOException 
	 * @throws Exception
	 */
	public String updata() throws IOException {
		System.out.println("updata");
		labRoom labroom=new labRoom();
		labroom.setId(getModel().getId());
		labroom.setName(getModel().getName());
		labroom.setMessage(getModel().getMessage());
		labroom.setUrl_img(addImg());
		labroom.setUrl_link(getModel().getUrl_link());
		labroom.setDates(new Date());
		labroom.setTypes(getModel().getTypes());
		labService.update(labroom);
		return "view";
	}

	/**
	 * 查id
	 * @return
	 * @throws Exception
	 */
	public String find() throws Exception{
		labRoom labroom=labService.getById(getModel().getId());
		ActionContext.getContext().put("lab", labroom);
		return "view";
	}

	/**
	 * 查所有
	 * @return
	 * @throws Exception
	 */
	public String findAll() throws Exception{
		List<labRoom> labroom=labService.findAll();
		ActionContext.getContext().put("labs", labroom);
		return "view";
	}

	public String findDate() throws Exception{
		List<labRoom> labroom=labService.findDate();
		ActionContext.getContext().put("labs", labroom);
		return "view";
	}

	/**
	 * 指定每页放2条数据
	 * @return
	 */
	public String findPage(){
		//		String currentPage = ServletActionContext.getRequest().getParameter("currentPage");

		//		查询数据并进行排序
		PageBean pageBean =labService.getPageBean(pageNum,2, new HqlHelper(labRoom.class, "lab").addOrderByProperty("id", false));
		ValueStack vs = ServletActionContext.getContext().getValueStack();
		vs.set("pageBean", pageBean);
		return "view";
	}

}
