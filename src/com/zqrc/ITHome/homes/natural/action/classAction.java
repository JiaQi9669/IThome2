package com.zqrc.ITHome.homes.natural.action;

import java.io.IOException;
import java.util.List;
import java.util.Set;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.zqrc.ITHome.homes.natural.vo.data_class;
import com.zqrc.ITHome.homes.natural.vo.data_data;

/**
 * 资源分类action
 * @author 李志飞
 *
 */
@Controller("classAction")
@Scope("prototype")
public class classAction extends dataBaseAction<data_class>{
	
	private Set<data_data> datas;

	public Set<data_data> getDatas() {
		return datas;
	}
	public void setDatas(Set<data_data> datas) {
		this.datas = datas;
	}
	
//	资源区首页视图
	public String view() {
		return "view";
	}
	
//	添加分类
	public String addClass() throws IOException{
		data_class classs=new data_class();
		classs.setName(getModel().getName());
		classs.setMessage(getModel().getMessage());
		classs.setUrl_img(addImg());
		classService.save(classs);
		
		return "data";
	}
	
//	删除分类
	public String delClass() {
		classService.delete(getModel().getId());
		return "data";
	}
	
//	修改分类
	public String updata() throws IOException{
		data_class classs=new data_class();
		classs.setId(getModel().getId());
		classs.setName(getModel().getName());
		classs.setMessage(getModel().getMessage());
		classs.setUrl_img(addImg());
		classService.update(classs);

		return "data";
	}
	
//	查询分类id
	public String findClass() {
		data_class classs=classService.getById(getModel().getId());
		ActionContext.getContext().put("classs", classs);
		return "data";
	}
//	查询分类name
	public String findByName() {
		List<data_class> classs=classService.findByName(getModel().getName());
		ActionContext.getContext().put("classs", classs);
		return "data";
	}
	
//	查询所有
	public String findAll(){
		List<data_class> classs=classService.findAll();
		ActionContext.getContext().put("classs", classs);
		return "data";
	}
	
}
