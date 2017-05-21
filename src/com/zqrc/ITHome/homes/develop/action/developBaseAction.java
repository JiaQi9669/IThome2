package com.zqrc.ITHome.homes.develop.action;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.zqrc.ITHome.base.action.BaseAction;
import com.zqrc.ITHome.homes.develop.service.fileService;
import com.zqrc.ITHome.homes.develop.service.packageService;
import com.zqrc.ITHome.homes.develop.service.projectService;
import com.zqrc.ITHome.homes.natural.service.classService;
import com.zqrc.ITHome.homes.natural.service.dataService;
import com.zqrc.ITHome.publics.login.service.loginService;
import com.zqrc.ITHome.util.DateUtil;

public abstract class developBaseAction<T> extends BaseAction<T>{
//	项目
	@Resource(name="projectService")
	protected projectService projectService;
//	包
	@Resource(name="packageService")
	protected packageService packageService;
//	文件
	@Resource(name="fileService")
	protected fileService fileService;
//	用于查询friends
	@Resource(name="loginService")
	protected loginService loginFriends;
	
	
//	接收的添加文件属性**************************************************
	protected String userName;
	public void setUserName(String userName){
		this.userName = userName;
	}
	// 对应表单：<input type="file" name="file">
	protected File file;
	public void setFile(File file) {
		this.file = file;
	}
	// 文件名
	protected String fileFileName;
	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}
	// 文件的类型(MIME)
	protected String fileContentType;
	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}
//	添加图片共功能，添加成功返回path路径，否则返回null
	/**
	 * 图片添加功能
	 * @return
	 * @throws IOException
	 */
	protected String addImg() throws IOException{
		String filalPath;
		File destFile = null;

		// 获取上传的目录路径
		String path = ServletActionContext.getServletContext().getRealPath("/upload/develop");
		// 创建目标文件对象
		if(!"".equals(userName)&&!isNull(userName)){//带有文件命名上传的情况下
			String types;
			try{
				String[] tempType=fileFileName.split("\\.");
				types=tempType[tempType.length-1];
			}catch (NullPointerException e) {
				addFieldError("nullfile", "未提交数据，请选择！");
				return INPUT;
			}
//			检查文件重名
			userName=checkFile(userName,new File(path));
			
			destFile = new File(path,userName+"."+types);
			filalPath=userName+"."+types;
			
		}else{//上传的未命名文件
			try{
				if(!fileFileName.equals("")&&fileFileName!=null){//默认名称
//					检测文件重名
					fileFileName=checkFile(fileFileName,new File(path));
					
					destFile = new File(path,fileFileName);
					filalPath=fileFileName;
				}else{
					throw new NullPointerException();
				}
			}catch (NullPointerException e) {
				addFieldError("nullfile", "未提交数据，请选择！");
				return INPUT;
			}
		}
		// 把上传的文件，拷贝到目标文件中
		FileUtils.copyFile(file, destFile);
		return filalPath;
	}
	
	/**
	 * 检查文件是否重名，重名再加表示
	 * @param filename
	 * @param rootfile
	 * @return
	 */
	protected String checkFile(String filename,File rootfile){
		String[] files=rootfile.list();
		for(String str:files){
			String temp=str.split("\\.")[0];
			if(temp.equals(filename)){
				return filename+DateUtil.getDateUUID();
			}
		}
		return filename;
	}
	
	/**
	 * 检查是否为null
	 * true为null
	 */
	protected boolean isNull(String str){
		try{
			if(str.equals(null)){
				return true;
			}
		}catch (NullPointerException e) {
			return true;
		}
		return false;
	}
//	添加文件结束*****************************************************
	
	/*************1. 显示所有要下载文件的列表*********************/
	public String list() throws Exception {
		
		//得到upload目录路径
		String path = ServletActionContext.getServletContext().getRealPath("/upload/develop");
		// 目录对象
		File file  = new File(path);
		// 得到所有要下载的文件的文件名
		String[] fileNames =  file.list();
		// 保存
		ActionContext ac = ActionContext.getContext();
		// 得到代表request的map (第二种方式)
		Map<String,Object> request= (Map<String, Object>) ac.get("request");
		request.put("fileNames", fileNames);
		return "data";
	}
	
	
	
	
	/*************2. 文件下载*********************/
	// 1. 获取要下载的文件的文件名
	private String fileName;
	public void setFileName(String fileName) {
//		// 处理传入的参数中问题(get提交)
//		try {
//			fileName = new String(fileName.getBytes("ISO8859-1"),"UTF-8");
//		} catch (UnsupportedEncodingException e) {
//			throw new RuntimeException(e);
//		}
		// 把处理好的文件名，赋值
		this.fileName = fileName;
	}
	
	//2. 下载提交的业务方法 (在struts.xml中配置返回stream)
	public String down() throws Exception {
		return "download";
	}
	
	// 3. 返回文件流的方法
	private InputStream attrInputStream;
	public InputStream getAttrInputStream(){
		attrInputStream=ServletActionContext.getServletContext().getResourceAsStream("/upload/develop/" + fileName);
		return attrInputStream;
	}
	
	// 4. 下载显示的文件名（浏览器显示的文件名）
	public String getDownFileName() {
		// 需要进行中文编码
		try {
			fileName = URLEncoder.encode(fileName, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			throw new RuntimeException(e);
		}
		return fileName;
	}

}
