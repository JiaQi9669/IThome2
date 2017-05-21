package com.zqrc.ITHome.homes.myupload.action;

import java.io.File;
import java.util.Random;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.sun.star.util.Date;

public class FileUpload extends ActionSupport {
	private String userName;
	public void setUserName(String userName) {
		this.userName = userName;
	}
	// 对应表单：<input type="file" name="file">
	private File file;
	// 文件名
	private String fileFileName;
	// 文件的类型(MIME)
	private String fileContentType;
	public void setFile(File file) {
		this.file = file;
	}
	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}
	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}

	public String execute() throws Exception {
		/******拿到上传的文件，上传到upload目录******/
		File destFile = null;

		// 获取上传的目录路径
		String path = ServletActionContext.getServletContext().getRealPath("/upload");
		// 创建目标文件对象
		if(!userName.equals("")&&userName!=null){//带有文件命名上传的情况下
			String types;
			try{
				String[] tempType=fileFileName.split("\\.");
				types=tempType[tempType.length-1];
			}catch (NullPointerException e) {
				addFieldError("nullfile", "未提交数据，请选择！");
				return INPUT;
			}
			destFile = new File(path,userName+"."+types);
		}else{//上传的未命名文件
			try{
				if(!fileFileName.equals("")&&fileFileName!=null){//默认名称
					destFile = new File(path,fileFileName);
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
		return SUCCESS;
	}
}
