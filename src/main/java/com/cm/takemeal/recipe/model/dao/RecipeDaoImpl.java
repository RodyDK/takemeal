package com.cm.takemeal.recipe.model.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cm.takemeal.recipe.model.vo.Recipe;
import com.cm.takemeal.recipe.model.dao.RecipeDao;

@Repository("recipeDao")
public class RecipeDaoImpl implements RecipeDao{

    @Autowired
    private SqlSession sqlSession;
  
    public void setSqlSession(SqlSession sqlSession){
        this.sqlSession = sqlSession;
    }
 
    @Override
    public int getContentCnt(Map<String, Object> paramMap) {
        return sqlSession.selectOne("selectContentCnt", paramMap);
    }

    
    @Override
    public int getLikeCnt(Map<String, Object> paramMap) {
        return sqlSession.selectOne("selectLikeCnt", paramMap);
    }

    @Override
    public int deleteLike(Map<String, Object> paramMap) {
        return sqlSession.delete("deleteLike", paramMap);
    }
    @Override
    public int saveLike(Map<String, Object> paramMap) {
        return sqlSession.insert("saveLike", paramMap);
    }
    
    @Override
    public int downLike(Map<String, Object> paramMap) {
        return sqlSession.update("downLike", paramMap);
    }
    @Override
    public int upLike(Map<String, Object> paramMap) {
        return sqlSession.update("upLike", paramMap);
    }
    
    @Override
    public List<String> getLike(Map<String, Object> paramMap) {
        return sqlSession.selectList("selectRecipeLikeCnt", paramMap);
    }
  

    
    @Override
    public List<Recipe> getContentList(Map<String, Object> paramMap) {
        return sqlSession.selectList("selectContent", paramMap);
    }
 
    @Override
    public Recipe getContentView(Map<String, Object> paramMap) {
        return sqlSession.selectOne("selectContentView", paramMap);
    }
    @Override
    public void setRecipe(Map<String, Object> paramMap) {
        sqlSession.insert("insertRecipe", paramMap);
    }
}