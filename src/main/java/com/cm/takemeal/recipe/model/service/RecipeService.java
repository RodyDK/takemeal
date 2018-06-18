package com.cm.takemeal.recipe.model.service;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.cm.takemeal.recipe.model.vo.Recipe;

public interface RecipeService {
	public static final int MID = 1;
	
    int getContentCnt(Map<String, Object> paramMap);
    
    void setRecipe(Map<String, Object> paramMap, HttpServletRequest request) throws Exception;
    
    List<String> getLike(Map<String, Object> paramMap);

    
    List<Recipe> getContentList(Map<String, Object> paramMap);

    Recipe getContentView(Map<String, Object> paramMap);
    
    //List<RecipeReply> getReplyList(Map<String, Object> paramMap);
}
