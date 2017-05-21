package com.zqrc.ITHome.publics.labRoom.service;

import java.util.List;

import com.zqrc.ITHome.base.dao.BaseDao;
import com.zqrc.ITHome.publics.labRoom.vo.labRoom;

/**
 * 测试事务接口
 *
 */
public interface labService extends BaseDao<labRoom>{

	List<labRoom> findDate();
}
