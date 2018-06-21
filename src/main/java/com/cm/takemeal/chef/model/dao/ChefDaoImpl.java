package com.cm.takemeal.chef.model.dao;

import java.util.List;
import java.util.Map;
 
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cm.takemeal.chef.model.vo.Chef;
import com.cm.takemeal.chef.model.dao.ChefDao;

@Repository("chefDao")
public class ChefDaoImpl implements ChefDao{

    @Autowired
    private SqlSession sqlSession;
  
    public void setSqlSession(SqlSession sqlSession){
        this.sqlSession = sqlSession;
    }
 
    @Override
    public int getContentCnt(Map<String, Object> paramMap) {
        return sqlSession.selectOne("selectChefContentCnt", paramMap);
    }
     
    @Override
    public List<Chef> getContentList(Map<String, Object> paramMap) {
        return sqlSession.selectList("selectChefContent", paramMap);
    }
 
    @Override
    public Chef getContentView(Map<String, Object> paramMap) {
        return sqlSession.selectOne("selectChefContentView", paramMap);
    }
    
    
    @Override
    public int getRecipeContentCnt(Map<String, Object> paramMap) {
        return sqlSession.selectOne("selectRecipeContentCnt", paramMap);
    }


    @Override
    public int getFollowCnt(Map<String, Object> paramMap) {
        return sqlSession.selectOne("getFollowCnt", paramMap);
    }
    @Override
    public int deleteFollow(Map<String, Object> paramMap) {
        return sqlSession.selectOne("deleteFollow", paramMap);
    }
    @Override
    public int saveFollow(Map<String, Object> paramMap) {
        return sqlSession.selectOne("saveFollow", paramMap);
    }
    
    @Override
    public List<String> getRecipeContentList(Map<String, Object> paramMap) {
        return sqlSession.selectList("selectRecipeContent", paramMap);
    }
    
    @Override
    public List<String> getFollow(Map<String, Object> paramMap) {
        return sqlSession.selectList("getFollow", paramMap);
    }
    
}