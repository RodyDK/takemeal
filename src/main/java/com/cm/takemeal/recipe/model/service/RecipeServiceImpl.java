package com.cm.takemeal.recipe.model.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.cm.takemeal.recipe.model.dao.RecipeDao;
import com.cm.takemeal.recipe.model.vo.Recipe;
import com.cm.takemeal.FileUtils;

@Service("recipeService")

public class RecipeServiceImpl implements RecipeService {
 
    @Resource(name="recipeDao")
    private RecipeDao recipeDao;
    
	@Resource(name="fileUtils")
	private FileUtils fileUtils;
    
 
    @Override
    public int getContentCnt(Map<String, Object> paramMap) {
        return recipeDao.getContentCnt(paramMap);
    }
 
    @Override
    public List<String> getLike(Map<String, Object> paramMap) {
        return recipeDao.getLike(paramMap);
    }
 

    @Override
    public List<Recipe> getContentList(Map<String, Object> paramMap) {
        return recipeDao.getContentList(paramMap);
    }

    
    @Override
    public Recipe getContentView(Map<String, Object> paramMap) {
        return recipeDao.getContentView(paramMap);
    }
    
    @Override
    public void setRecipe(Map<String, Object> paramMap, HttpServletRequest request) throws Exception {
		List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(paramMap, request);
		

		for(int i=0, size=list.size(); i<size; i++){
			paramMap.put("thumbnail"+(i+1), list.get(i).get("STORED_FILE_NAME"));
		}
		System.out.println("paramMap"+paramMap);
        recipeDao.setRecipe(paramMap);
    }
    
}



