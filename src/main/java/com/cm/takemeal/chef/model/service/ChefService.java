package com.cm.takemeal.chef.model.service;
import java.util.List;
import java.util.Map;

import com.cm.takemeal.chef.model.vo.Chef;

public interface ChefService {
	public static final int MID = 1;
	
    int getContentCnt(Map<String, Object> paramMap);
    
    List<Chef> getContentList(Map<String, Object> paramMap);

    Chef getContentView(Map<String, Object> paramMap);
     
    //List<ChefReply> getReplyList(Map<String, Object> paramMap);
}
