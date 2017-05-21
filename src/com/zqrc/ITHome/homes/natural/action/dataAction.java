package com.zqrc.ITHome.homes.natural.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.util.ValueStack;
import com.zqrc.ITHome.homes.natural.vo.data_class;
import com.zqrc.ITHome.homes.natural.vo.data_data;
import com.zqrc.ITHome.homes.talks.vo.Posts;
import com.zqrc.ITHome.util.HqlHelper;
import com.zqrc.ITHome.util.PageBean;


/**
 * 资源action
 * @author 李志飞
 *
 */
@Controller("dataAction")
@Scope("prototype")
public class dataAction extends dataBaseAction<data_data>{
	//	选中的类别名
	private String claName;

	private data_class dataclass;
	public data_class getDataclass() {
		return dataclass;
	}
	public void setDataclass(data_class dataclass) {
		this.dataclass = dataclass;
	}
	public void setClaName(String claName) {
		this.claName = claName;
	}

	private List<String>claNameList;
	public List<String> getClaNameList() {
		return init();
	}

	//	初始化资源
	public List<String> init(){
		List<data_class>classs=classService.findAll();
		List<String>temp=new ArrayList<String>();
		for(data_class cla:classs){
			temp.add(cla.getName());
		}
		return temp;
	}

	//	//////////////////////begin by JiaQi
	//默认加载
	public String view(){
		//		findAll();
		findPageALL();
		return "view";
	}

	//	按页查询数据
	public String findPageALL(){
		//查询数据并进行排序
		PageBean pageBean =dataService.getPageBean(pageNum,10, new HqlHelper(data_data.class, "datas").
				addOrderByProperty("id", false));
		//				addWhereCondition("datas.friend.id = ?", getAdmins().getId()));
		pageBean.setCurrentPage(pageNum);
		ValueStack vs = ServletActionContext.getContext().getValueStack();
		vs.set("pageBean", pageBean);
		ActionContext.getContext().put("datasPage", 0);
		return "view";
	}

	//通过名字查找
	public String findByName(){
		PageBean pageBean =dataService.getPageBean(pageNum,10, new HqlHelper(data_data.class, "datas").
				addOrderByProperty("id", false).
		addWhereCondition("datas.name like ?","%"+getModel().getName()+"%"));
		pageBean.setCurrentPage(pageNum);
		ValueStack vs = ServletActionContext.getContext().getValueStack();
		vs.set("pageBean", pageBean);
		ActionContext.getContext().put("datasPage", 1);
		ActionContext.getContext().put("names", getModel().getName());
		
//		List<data_data> data=dataService.findByName(getModel().getName());
//		for (data_data data_data : data) {
//			System.out.println(data_data.getName());
//		}
//		ActionContext.getContext().put("datas", data);
		return "view";
	}

	//	更新下载记次
	public String downs() throws Exception {
		data_data datas=dataService.getById(getModel().getId());
		datas.setDown_num(datas.getDown_num()+1);
		dataService.update(datas);
		return down();
	}

	//详细信息
	public String introduce() {
		return "introduce";
	}

	//上传页面
	public String upload() {
		return "upload";

	}

	//上传
	public String uploads() throws IOException{
		addData();
		return "upload";
	}
	//////////////////end by JiaQi

	//	关键字检索
	public String findByKeyWord(){
		PageBean pageBean =dataService.getPageBean(pageNum,10, new HqlHelper(data_data.class, "datas").
				addOrderByProperty("id", false).
		addWhereCondition("datas.name like ?","%"+getModel().getName()+"%"));
		pageBean.setCurrentPage(pageNum);
		ValueStack vs = ServletActionContext.getContext().getValueStack();
		vs.set("pageBean", pageBean);
		ActionContext.getContext().put("searchName", getModel().getName());
		ActionContext.getContext().put("searchType", 1);
//		List<data_data> datas=dataService.findByKeyWord(getModel().getName());
		
		return "list";
	}
	
//	列出所有数据
	public String list(){
		PageBean pageBean =dataService.getPageBean(pageNum,10, new HqlHelper(data_data.class, "datas").
				addOrderByProperty("id", false));
//		addWhereCondition("datas.name like ?","%"+getModel().getName()+"%"));
		pageBean.setCurrentPage(pageNum);
		ValueStack vs = ServletActionContext.getContext().getValueStack();
		vs.set("pageBean", pageBean);
		ActionContext.getContext().put("searchType", 0);
		return "list";
	}

	//	添加
	public String addData() throws IOException{
		data_data datas=new data_data();
		datas.setData_class(classService.findByName(claName).get(0));
		datas.setDates(new Date());
		System.out.println("!!!!!添加资源"+getAdmins().getPickName()+"===================");
		datas.setFriends(getAdmins().getPickName());//getAdmins().getId().toString());
		datas.setMessage(getModel().getMessage());
		datas.setName(getModel().getName());
		datas.setUrl_data(addImg()); 
		datas.setDown_num(0);
		dataService.save(datas);
		return "data";
	}

	//	删除
	public String del() {
		dataService.delete(getModel().getId());
//		findAll();
		list();
		return "list";
	}

	//	查询所有
	public String findAll(){
		List<data_data> datas=dataService.findAll();
		ActionContext.getContext().put("datas", datas);
		return "data";
	}

	//	修改
	public String updata() throws IOException{
		data_data datas=new data_data();
		datas.setId(getModel().getId());
		datas.setData_class(classService.findByName(claName).get(0));
		datas.setDates(new Date());
		datas.setFriends(getAdmins().getId().toString());
		datas.setMessage(getModel().getMessage());
		datas.setName(getModel().getName());
		datas.setUrl_data(addImg());
		dataService.update(datas);
		return "data";
	}

	//	查询
	public String find() {
		List<data_data> datas=dataService.findAll();
		ActionContext.getContext().put("datas", datas);
		return "data";
	}

	//	热度查询
	public String findHot(){
		List datas=new HqlHelper(data_data.class, "datas").addOrderByProperty("down_num", false).getParameterList();//dataService.
		ActionContext.getContext().put("datas", datas);
		return "data";
	}

	//	最新查询
	public String findNew(){
		return "data";
	}

	//	分页查询
	public String findPage(){
		return "data";
	}

	////	参与最多
	//	public String findCount(){
	//		return "data";
	//	}
}
