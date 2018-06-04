package com.cm.takemeal.recipe.model.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cm.takemeal.recipe.model.dao.RecipeDao;
import com.cm.takemeal.recipe.model.vo.Recipe;


@Service("recipeService")

public class RecipeServiceImpl implements RecipeService {
 
    @Resource(name="recipeDao")
    private RecipeDao recipeDao;
    
 
    @Override
    public int getContentCnt(Map<String, Object> paramMap) {
        return recipeDao.getContentCnt(paramMap);
    }
 
    @Override
    public List<Recipe> getContentList(Map<String, Object> paramMap) {
        return recipeDao.getContentList(paramMap);
    }

    
    @Override
    public Recipe getContentView(Map<String, Object> paramMap) {
        return recipeDao.getContentView(paramMap);
    }
}



