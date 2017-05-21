package com.zqrc.ITHome.homes.develop.service.Impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zqrc.ITHome.base.service.BaseServiceImpl;
import com.zqrc.ITHome.homes.develop.service.packageService;
import com.zqrc.ITHome.homes.develop.vo.Packages;
import com.zqrc.ITHome.homes.develop.vo.Projects;

/**
 * 包模块事务
 * @author 李志飞
 *
 */
@Service("packageService")
@Transactional
public class packageServiceImpl extends BaseServiceImpl<Packages> implements packageService{

}
