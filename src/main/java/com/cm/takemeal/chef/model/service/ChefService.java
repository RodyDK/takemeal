package com.cm.takemeal.chef.model.service;
import java.util.List;
import java.util.Map;

import com.cm.takemeal.chef.model.vo.Chef;
import com.cm.takemeal.recipe.model.vo.Recipe;

public interface ChefService {
	public static final int MID = 1;
	
    int getContentCnt(Map<String, Object> paramMap);
    
    List<Chef> getContentList(Map<String, Object> paramMap);

    Chef getContentView(Map<String, Object> paramMap);

	int getRecipeContentCnt(Map<String, Object> paramMap);

	List<String> getRecipeContentList(Map<String, Object> paramMap);

	List<String> getFollow(Map<String, Object> paramMap);

	int getFollowCnt(Map<String, Object> paramMap);

	int deleteFollow(Map<String, Object> paramMap);
	int saveFollow(Map<String, Object> paramMap);
     
    //List<ChefReply> getReplyList(Map<String, Object> paramMap);
}
