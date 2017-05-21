package com.zqrc.ITHome.homes.develop.service.Impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zqrc.ITHome.base.service.BaseServiceImpl;
import com.zqrc.ITHome.homes.develop.service.fileService;
import com.zqrc.ITHome.homes.develop.vo.Files;

/**
 * 文件事务
 * @author 李志飞
 *
 */
@Service("fileService")
@Transactional
public class fileServiceImpl extends BaseServiceImpl<Files> implements fileService{

}
