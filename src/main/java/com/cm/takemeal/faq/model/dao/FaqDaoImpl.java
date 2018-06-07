package com.cm.takemeal.faq.model.dao;

import java.util.List;
import java.util.Map;
 
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cm.takemeal.faq.model.vo.Faq;
import com.cm.takemeal.faq.model.dao.FaqDao;

@Repository("faqDao")
public class FaqDaoImpl implements FaqDao{

    @Autowired
    private SqlSession sqlSession;
  
    public void setSqlSession(SqlSession sqlSession){
        this.sqlSession = sqlSession;
    }
 
    @Override
    public int getContentCnt(Map<String, Object> paramMap) {
        return sqlSession.selectOne("selectFaqContentCnt", paramMap);
    }
     
    @Override
    public List<Faq> getContentList(Map<String, Object> paramMap) {
        return sqlSession.selectList("selectFaqContent", paramMap);
    }
 
    @Override
    public Faq getContentView(Map<String, Object> paramMap) {
        return sqlSession.selectOne("selectFaqContentView", paramMap);
    }
    
}