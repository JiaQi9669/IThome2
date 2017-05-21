package com.zqrc.ITHome.publics.applyUs.service.Impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zqrc.ITHome.base.service.BaseServiceImpl;
import com.zqrc.ITHome.publics.applyUs.service.applyService;
import com.zqrc.ITHome.publics.applyUs.vo.ApplyUs;

@Service("applyService")
@Transactional
public class applyServiceImpl extends BaseServiceImpl<ApplyUs> implements applyService{

}
