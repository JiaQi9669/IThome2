package com.zqrc.ITHome.homes.talks.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.naming.ldap.SortResponseControl;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.util.ValueStack;
import com.zqrc.ITHome.homes.talks.vo.Boards;
import com.zqrc.ITHome.homes.talks.vo.Posts;
import com.zqrc.ITHome.homes.talks.vo.Replys;
import com.zqrc.ITHome.publics.demos.vo.demos;
import com.zqrc.ITHome.publics.labRoom.vo.labRoom;
import com.zqrc.ITHome.util.HqlHelper;
import com.zqrc.ITHome.util.PageBean;
import com.zqrc.ITHome.util.sortObject;

/**
 * 贴子模块action
 * @author 李志飞
 *
 */

@Controller("postAction")
@Scope("prototype")
public class postAction extends talkBaseAction<Posts>{
//	选中的板块
	private String myboard;
	public void setMyboard(String myboard) {
		this.myboard = myboard;
	}
	
	public String getMyboard() {
		return myboard;
	}

/********管理员start***************/
//	通过板块id浏览帖子管理员
	public String listbyborad(){
		PageBean pageBean=postService.getPageBean(pageNum, 10, new HqlHelper(Posts.class, "p")
		.addOrderByProperty("id", true)
		.addWhereCondition("p.board.id = ?", getModel().getId()));
		pageBean.setCurrentPage(pageNum);
		ValueStack vs = ServletActionContext.getContext().getValueStack();
		vs.set("pageBean", pageBean);
		
		ActionContext.getContext().put("bordid", getModel().getId());
		ActionContext.getContext().put("searchType", 0);
//		List<Posts>post=postService.findByBoard(getModel().getId());
//		ActionContext.getContext().put("posts", post);
		return "list";
	}
	
	public String findByKeyWord(){
		PageBean pageBean=postService.getPageBean(pageNum, 10, new HqlHelper(Posts.class, "p")
		.addOrderByProperty("id", true)
		.addWhereCondition("p.name like ?","%"+getModel().getName()+"%")
		.addWhereCondition("p.board.id = ?", getModel().getId()));
		pageBean.setCurrentPage(pageNum);
		ValueStack vs = ServletActionContext.getContext().getValueStack();
		vs.set("pageBean", pageBean);
		
		ActionContext.getContext().put("bordid", getModel().getId());
		ActionContext.getContext().put("searchName", getModel().getName());
		ActionContext.getContext().put("searchType", 1);
//		List<Posts>post=postService.findByBoard(getModel().getId());
//		ActionContext.getContext().put("posts", post);
		return "list";
	}
	
	public void addViewCount(){
		Posts post=postService.getById(getModel().getId());
		post.setName(post.getName());
		post.setMessage(post.getMessage());
		post.setDates(post.getDates());
		post.setCount(post.getCount()+1);
		post.setBoard(post.getBoard());
		post.setFriend(post.getFriend());
		post.setReply(post.getReply());
		postService.update(post);
	}
	
/********管理员end***************/
/********用户start***************/
//	我的贴子模块
	public String me(){
//		findByUserId();
		findPage();
		
		return "me";
	}
	
//	按页查询数据
	public String findPage(){
		//查询数据并进行排序
		PageBean pageBean =postService.getPageBean(pageNum,10, new HqlHelper(Posts.class, "p").
				addOrderByProperty("id", false).
				addWhereCondition("p.friend.id = ?", getAdmins().getId()));
		pageBean.setCurrentPage(pageNum);
		ValueStack vs = ServletActionContext.getContext().getValueStack();
		vs.set("pageBean", pageBean);
		return "view";
	}
	
//	通过楼主名查询我的贴子
	public String findByUserId(){
		List<Posts>post=postService.findByUserId(getAdmins().getId());
		ActionContext.getContext().put("posts", post);
		return "userpost";
	}
	
//	与我相关模块
	public String about(){
//		findByReply();
		findPageAbout();
		return "about";
	}
	
//	按页查询数据我的参与
	public String findPageAbout(){
		//查询数据并进行排序
		PageBean pageBean =replyService.getPageBean(pageNum,10, new HqlHelper(Replys.class, "reply").
				addOrderByProperty("reply.friend.id", false).
				addWhereCondition("reply.friend.id = ?", getAdmins().getId()));
		pageBean.setCurrentPage(pageNum);
		ValueStack vs = ServletActionContext.getContext().getValueStack();
		vs.set("pageBean", pageBean);
		return "view";
	}
	
//	通过参与贴子查询我的参与
	public String findByReply(){
		List<Replys> ReplysList=replyService.findByReply(getAdmins().getId());
		ActionContext.getContext().put("replys", ReplysList);
		return "ReplyList";
	}
	
//	发布问题
	public String pushview(){
		return "pushview";
	}
	
//	发布问题
	public String push(){
		add();
		return "push";
	}
	
//	查看帖字详情
	public String viewpost() {
//		view();
		findPagePostView();
		return "viewpost";
	}
	
//	按页查询数据贴子详情
	public String findPagePostView(){
		Posts post=postService.getById(getModel().getId());
		//查询数据并进行排序
		PageBean pageBean =replyService.getPageBean(pageNum,10, new HqlHelper(Replys.class, "reply").
				addOrderByProperty("id", true).
				addWhereCondition("reply.post.id = ?", getModel().getId()));
		pageBean.setCurrentPage(pageNum);
		ActionContext.getContext().put("posta", post);
		ValueStack vs = ServletActionContext.getContext().getValueStack();
		vs.set("pageBean", pageBean);
		addViewCount();
		return "view";
	}
	
//	查看贴子详情(管理端)
	public String view() {
		Posts post=postService.getById(getModel().getId());
		addViewCount();
		Set<Replys>replys=post.getReply();
//		有序集合
		List<Replys>list=new ArrayList<Replys>();
		for(Replys reply:replys){
			list.add(reply);
		}
		sortObject.sortReplys(list);//排序
		ActionContext.getContext().put("posta", post);
		ActionContext.getContext().put("replya", list);
		return "view";
	}
	
/********用户end***************/
	
/********公共操作***************/
	public String add() {
		Posts post=new Posts();
		post.setBoard(boardService.findByName(myboard));
		post.setCount(0);
		post.setDates(new Date());
		post.setFriend(getAdmins());
		post.setMessage(getModel().getMessage());
		post.setName(getModel().getName());
		postService.save(post);
		return "talk";
	}
	
//	删贴
	public String del() {
		postService.delete(getModel().getId());
		return "talk";
	}
	
//	改
	public String updata() {
		Posts post=new Posts();
		post.setId(getModel().getId());
		post.setBoard(getModel().getBoard());
		post.setCount(0);
		post.setDates(new Date());
//		post.setFriend(getAdmins());
		post.setMessage(getModel().getMessage());
		post.setName(getModel().getName());
		postService.update(post);
		return "talk";
	}
	
//	查id
	public String find(){
		Posts post=postService.getById(getModel().getId());
		ActionContext.getContext().put("posts", post);
		return "talk";
	}
	
//	名字查询
	public String findByName(){
		List<Posts> post=postService.findByNames(getModel().getName());
		ActionContext.getContext().put("posts", post);
		return "talk";
	}
	
//	查所有
	public String findAll(){
		List<Posts> post=postService.findAll();
		ActionContext.getContext().put("posts", post);
		return "list";
	}
	
//	查热度
	public String findHot(){
		List<Posts>post=postService.findHot();
		ActionContext.getContext().put("posts", post);
		return "talk";
	}
	
//	获取所有贴子
	public List<String> getPostList(){
		List<String>temp=new ArrayList<String>();
		List<Posts> postList=postService.findAll();
		for(Posts p:postList){
			temp.add(p.getName());
		}
		return temp;
	}
	
}
