package com.zqrc.ITHome.publics.applyUs.vo;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 *	招新报名-普招报名形式
 *
 */
public class ApplyUs{

//	id
	private Integer id;
	public String toString() {
		return "ApplyUs [id=" + id + ", stuName=" + stuName + ", stuSex="
				+ stuSex + ", stuBorn=" + stuBorn + ", stuClass=" + stuClass
				+ ", stuID=" + stuID + ", stuPhone=" + stuPhone + ", stuQq="
				+ stuQq + ", stuSleepRoom=" + stuSleepRoom + ", stuJoinParty="
				+ stuJoinParty + ", stuGoodAt=" + stuGoodAt + ", stuAboutSelf="
				+ stuAboutSelf + ", stuAboutFuture=" + stuAboutFuture
				+ ", personHobby=" + personHobby + ", stuaddr=" + stuaddr
				+ ", stuemail=" + stuemail + ", aboutlab=" + aboutlab
				+ ", applytype=" + applytype + ", picture=" + picture
				+ ", dates=" + dates + "]";
	}

	//	名字
	private String stuName;//
//	性别
	private String stuSex;//
//	出生年月
	private String stuBorn;//
//	专业班级
	private String stuClass;//
//	学号
	private String stuID;//
//	电话
	private String stuPhone;//
//	QQ
	private String stuQq;//
//	寝室
	private String stuSleepRoom;//
//	加入社团
	private String stuJoinParty;//
//	擅长
	private String stuGoodAt;//
//	自我介绍
	private String stuAboutSelf;//
//	未来规划
	private String stuAboutFuture;//
	
	
//	checkbox多选框
	private String personHobby;
//	籍贯
	private String stuaddr;
//	邮箱
	private String stuemail;
//	对实验室的理解
	private String aboutlab;
	
	
	
//	加入类型 	0为招新报名，1为自我推荐
	private String applytype;//
	
//	相片
	private String picture;//
//	报名日期
	private String dates;//
	
	public String getPersonHobby() {
		return personHobby;
	}

	public void setPersonHobby(String personHobby) {
		this.personHobby = personHobby;
	}

	public String getStuaddr() {
		return stuaddr;
	}

	public void setStuaddr(String stuaddr) {
		this.stuaddr = stuaddr;
	}

	public String getStuemail() {
		return stuemail;
	}

	public void setStuemail(String stuemail) {
		this.stuemail = stuemail;
	}

	public String getAboutlab() {
		return aboutlab;
	}

	public void setAboutlab(String aboutlab) {
		this.aboutlab = aboutlab;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getApplytype() {
		return applytype;
	}

	public void setApplytype(String applytype) {
		this.applytype = applytype;
	}
	
	public String getStuAboutFuture() {
		return stuAboutFuture;
	}

	public void setStuAboutFuture(String stuAboutFuture) {
		this.stuAboutFuture = stuAboutFuture;
	}

	/**
	 * 招新报名-普招报名形式
	 */
	public ApplyUs() {
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getStuName() {
		return stuName;
	}

	public void setStuName(String stuName) {
		this.stuName = stuName;
	}

	public String getStuSex() {
		return stuSex;
	}

	public void setStuSex(String stuSex) {
		this.stuSex = stuSex;
	}

	public String getStuBorn() {
		return stuBorn;
	}

	public void setStuBorn(String stuBorn) {
		this.stuBorn = stuBorn;
	}

	public String getStuClass() {
		return stuClass;
	}

	public void setStuClass(String stuClass) {
		this.stuClass = stuClass;
	}

	public String getStuID() {
		return stuID;
	}

	public void setStuID(String stuID) {
		this.stuID = stuID;
	}

	public String getStuPhone() {
		return stuPhone;
	}

	public void setStuPhone(String stuPhone) {
		this.stuPhone = stuPhone;
	}

	public String getStuQq() {
		return stuQq;
	}

	public void setStuQq(String stuQq) {
		this.stuQq = stuQq;
	}

	public String getStuSleepRoom() {
		return stuSleepRoom;
	}

	public void setStuSleepRoom(String stuSleepRoom) {
		this.stuSleepRoom = stuSleepRoom;
	}

	public String getStuJoinParty() {
		return stuJoinParty;
	}

	public void setStuJoinParty(String stuJoinParty) {
		this.stuJoinParty = stuJoinParty;
	}

	public String getStuGoodAt() {
		return stuGoodAt;
	}

	public void setStuGoodAt(String stuGoodAt) {
		this.stuGoodAt = stuGoodAt;
	}

	public String getStuAboutSelf() {
		return stuAboutSelf;
	}

	public void setStuAboutSelf(String stuAboutSelf) {
		this.stuAboutSelf = stuAboutSelf;
	}

	public String getDates() {
		return dates;
	}

	public void setDates(String dates) {
		this.dates = dates;
	}
	
}
