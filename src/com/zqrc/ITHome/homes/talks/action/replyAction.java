package com.zqrc.ITHome.homes.talks.action;

import java.util.Date;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.util.ValueStack;
import com.zqrc.ITHome.homes.talks.vo.Posts;
import com.zqrc.ITHome.homes.talks.vo.Replys;
import com.zqrc.ITHome.publics.applyUs.vo.ApplyUs;
import com.zqrc.ITHome.util.HqlHelper;
import com.zqrc.ITHome.util.PageBean;

/**
 * 回复action
 * @author 李志飞
 *
 */
@Controller("replyAction")
@Scope("prototype")
public class replyAction extends talkBaseAction<Replys>{
//	贴子名
	private String posts;
	public void setPosts(String posts) {
		this.posts = posts;
	}
	public String getPosts() {
		return posts;
	}
//	贴子编号
	private Integer post_id; 
	public void setPost_id(Integer post_id) {
		this.post_id = post_id;
	}
	public Integer getPost_id() {
		return post_id;
	}
	
//	增
	public String add() {
		Replys reply=new Replys();
		reply.setMessage(getModel().getMessage());
		reply.setDates(new Date());
		reply.setFriend(getAdmins());
		reply.setPost(postService.findById(post_id));
		replyService.save(reply);
		
		return "suc";
	}
	
//	删
	public String del() {
		replyService.delete(getModel().getId());
		return "talk";
	}
	
//	改
	public String updata() {
		Replys reply=new Replys();
		reply.setId(getModel().getId());
		reply.setMessage(getModel().getMessage());
		reply.setDates(new Date());
		reply.setFriend(getAdmins());
		reply.setPost(getModel().getPost());
		replyService.update(reply);
		return "talk";
	}
	
//	查id
	public String find() {
		replyService.getById(getModel().getId());
		return "talk";
	}
	
//	查所有
	public String findAll() {
		List<Replys>replys=replyService.findAll();
		ActionContext.getContext().put("replys", replys);
		return "talk";
	}
	
//	通过时间查询排序
	public String findByDate(){
		List<Replys>replys=replyService.findByDate();
		ActionContext.getContext().put("replys", replys);
		return "talk";
	}
	
//	时间分页
	public String findPage(){
		PageBean pageBean =replyService.getPageBean(pageNum,2, new HqlHelper(Replys.class, "reply").addOrderByProperty("dates", true));
		ValueStack vs = ServletActionContext.getContext().getValueStack();
		vs.set("pageBean", pageBean);
		return "talk";
	}
}
