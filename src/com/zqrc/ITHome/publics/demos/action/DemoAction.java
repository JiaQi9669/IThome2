package com.zqrc.ITHome.publics.demos.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.zqrc.ITHome.base.action.BaseAction;
import com.zqrc.ITHome.publics.demos.service.DemoService;
import com.zqrc.ITHome.publics.demos.vo.demos;

@Controller("demoAction")
@Scope("prototype")
public class DemoAction extends ABaseAction<demos>{

	/**
	 * 初始视图
	 */
	public String view(){
		return "view";
	}
	
	/**
	 * 增
	 * @return
	 * @throws Exception
	 */
	public String add() throws Exception{
		System.out.println("save");
		demos demo=new demos();
		demo.setName(getModel().getName());
		demo.setPass(getModel().getPass());
		demo.setMessage(getModel().getMessage());
		demoService.save(demo);
		
		return "view";
	}
	
	/**
	 * 删by id
	 * @return
	 * @throws Exception
	 */
	public String del() throws Exception{
		demoService.delete(getModel().getId());
		return "view";
	}
	
	/**
	 * 改
	 * @return
	 * @throws Exception
	 */
	public String updata() {
		try{
		demos demo=demoService.getById(getModel().getId());
		demo.setName(getModel().getName());
		demo.setPass(getModel().getPass());
		demo.setMessage(getModel().getMessage());
		demoService.update(demo);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return "view";
	}
	
	/**
	 * 查id
	 * @return
	 * @throws Exception
	 */
	public String find() throws Exception{
		demos demo=demoService.getById(getModel().getId());
		ActionContext.getContext().put("demo", demo);
		return "view";
	}
	
	/**
	 * 查所有
	 * @return
	 * @throws Exception
	 */
	public String findAll() throws Exception{
		List<demos> demoList=demoService.findAll();
		ActionContext.getContext().put("demoList", demoList);
		return "view";
	}
	
	
	public String findByName(){
		List<demos> demo=demoService.fingByName(getModel().getName());
		ActionContext.getContext().put("demo", demo);
		return "view";
	}
	
}
