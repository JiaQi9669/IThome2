package com.zqrc.ITHome.util;

import java.util.ArrayList;  
import java.util.Collections;  
import java.util.Comparator; 
import java.util.List;

import org.apache.poi.ss.formula.functions.T;

import com.zqrc.ITHome.homes.talks.vo.Replys;

public class sortObject {

	/**
	 * 对帖子集合进行排序
	 * @param list
	 */
	public static void sortReplys(List<Replys> list) {
		 Collections.sort(list, new Comparator<Replys>(){
			  
	            public int compare(Replys o1, Replys o2) {
	                //按照学生的年龄进行升序排列  
	                if(o1.getId()>o2.getId()){//if(o1.getDates().after(o2.getDates())){//原来用时间排序
	                    return 1;
	                }
	                if(o1.getId()==o2.getId()){  
	                    return 0;  
	                }
	                return -1;  
	            }  
	        });
	}
}
