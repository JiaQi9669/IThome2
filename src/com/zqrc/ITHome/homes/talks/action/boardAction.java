package com.zqrc.ITHome.homes.talks.action;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.util.ValueStack;
import com.zqrc.ITHome.homes.natural.vo.data_data;
import com.zqrc.ITHome.homes.talks.vo.Boards;
import com.zqrc.ITHome.homes.talks.vo.Posts;
import com.zqrc.ITHome.publics.login.vo.Friends;
import com.zqrc.ITHome.util.HqlHelper;
import com.zqrc.ITHome.util.PageBean;

/**
 * 板块action
 * @author 李志飞
 *
 */
@Controller("boardAction")
@Scope("prototype")
public class boardAction extends talkBaseAction<Boards>{
	
/**************管理员操作srart*********/
//	管理帖子列表一览
	public String list() {
		findPageList();
		ActionContext.getContext().put("searchType", 0);
		return "list";
	}
	
//	关键字检索
	public String findByKeyWord(){
		PageBean pageBean =boardService.getPageBean(pageNum,10, new HqlHelper(Boards.class, "datas").
				addOrderByProperty("id", false).
		addWhereCondition("datas.name like ?","%"+getModel().getName()+"%"));
		pageBean.setCurrentPage(pageNum);
		ValueStack vs = ServletActionContext.getContext().getValueStack();
		vs.set("pageBean", pageBean);
		ActionContext.getContext().put("searchName", getModel().getName());
		ActionContext.getContext().put("searchType", 1);
		
		return "list";
	}
	
	public void findPageList() {
		PageBean pageBean=boardService.getPageBean(pageNum, 10, new HqlHelper(Boards.class, "f")
		.addOrderByProperty("id", true));
		pageBean.setCurrentPage(pageNum);
		ValueStack vs = ServletActionContext.getContext().getValueStack();
		vs.set("pageBean", pageBean);
	}
	
/**************管理员操作end*********/
/**************用户操作start*********/
//	板块一览
	public String view() {
		newsp();
		hotsp();
		viewposts();
		return "view";
	}
//	最新帖子
	public String newsp() {
		List<Posts> post=postService.findNews();
		ActionContext.getContext().put("newsp", post);
		return "newsp";
	}
//	热门帖子
	public String hotsp() {
		List<Posts> post=postService.findHots();
		ActionContext.getContext().put("hotsp", post);
		return "hotsp";
	}
	
//	指定板块id打开贴子
	public String viewpost(){
		Boards boards=boardService.getById(getModel().getId());
		ActionContext.getContext().put("boards", boards);
		findPageByBoardId();
		
		return "viewpost";
	}
	
//	按页查询数据
	public String findPageByBoardId(){
		//查询数据并进行排序
		PageBean pageBean =postService.getPageBean(pageNum,10, new HqlHelper(Posts.class, "p").
				addOrderByProperty("id", false).
				addWhereCondition("p.board.id = ?", getModel().getId()));
		pageBean.setCurrentPage(pageNum);
		ValueStack vs = ServletActionContext.getContext().getValueStack();
		vs.set("pageBean", pageBean);
		return "view";
	}
	
//	加载各类型的板块集合
	public String viewposts(){
		ActionContext.getContext().put("posts1",boardService.findBytype(1));
		ActionContext.getContext().put("posts2",boardService.findBytype(2));
		ActionContext.getContext().put("posts3",boardService.findBytype(3));
		return "viewposts";
	}

/**************用户操作end*********/
/**************公共部分*********/	

//	通过板块type查询更多
	public String boards(){
		return "boardmore";
	}
/*********基础操作**************/
//	增
	public String add() throws IOException {
		Boards boards=new Boards();
		boards.setName(getModel().getName());
		boards.setMessage(getModel().getMessage());
		boards.setUrl_img(addImg());
		boardService.save(boards);
		return "talk";
	}
	
//	删
	public String del() {
		boardService.delete(getModel().getId());
		list();
		return "list";
	}
	
//	改
	public String updata() throws IOException {
		Boards boards=new Boards();
		boards.setId(getModel().getId());
		boards.setName(getModel().getName());
		boards.setMessage(getModel().getMessage());
		boards.setUrl_img(addImg());
		boardService.update(boards);
		return "talk";
	}
	
//	查id
	public String find() {
		Boards boards=boardService.getById(getModel().getId());
		ActionContext.getContext().put("boards", boards);
		return "talk";
	}
	
//	查所有
	public String findAll() {
		List<Boards> boards=boardService.findAll();
		ActionContext.getContext().put("boards", boards);
		return "talk";
	}
	
//	private List<String> boardList;
	public List<String> getBoardList(){//	获取所有板块list
		List<String>list=new ArrayList<String>();
		List<Boards> boardList=boardService.findAll();
		for(Boards b:boardList){
			list.add(b.getName());
		}
		return list;
	}
}
