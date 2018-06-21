package com.cm.takemeal.chef.model.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cm.takemeal.chef.model.dao.ChefDao;
import com.cm.takemeal.chef.model.vo.Chef;
import com.cm.takemeal.recipe.model.vo.Recipe;

@Service("chefService")

public class ChefServiceImpl implements ChefService {
 
    @Resource(name="chefDao")
    private ChefDao chefDao;
    
 
    @Override
    public int getContentCnt(Map<String, Object> paramMap) {
        return chefDao.getContentCnt(paramMap);
    }
 
    @Override
    public List<Chef> getContentList(Map<String, Object> paramMap) {
        return chefDao.getContentList(paramMap);
    }

    
    @Override
    public Chef getContentView(Map<String, Object> paramMap) {
        return chefDao.getContentView(paramMap);
    }
    
    @Override
    public int getRecipeContentCnt(Map<String, Object> paramMap) {
        return chefDao.getRecipeContentCnt(paramMap);
    }
    
    @Override
    public List<String> getRecipeContentList(Map<String, Object> paramMap) {
        return chefDao.getRecipeContentList(paramMap);
    }
    
    @Override
    public List<String> getFollow(Map<String, Object> paramMap) {
        return chefDao.getFollow(paramMap);
    }
    
    @Override
    public int getFollowCnt(Map<String, Object> paramMap) {
        return chefDao.getFollowCnt(paramMap);
    }
 
    @Override
    public int deleteFollow(Map<String, Object> paramMap) {
        return chefDao.deleteFollow(paramMap);
    }
    @Override
    public int saveFollow(Map<String, Object> paramMap) {
        return chefDao.saveFollow(paramMap);
    }

}



