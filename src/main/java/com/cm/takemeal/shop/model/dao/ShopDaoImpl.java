package com.cm.takemeal.shop.model.dao;

import java.util.List;
import java.util.Map;
 
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cm.takemeal.shop.model.vo.Shop;
import com.cm.takemeal.shop.model.dao.ShopDao;

@Repository("shopDao")
public class ShopDaoImpl implements ShopDao{

    @Autowired
    private SqlSession sqlSession;
  
    public void setSqlSession(SqlSession sqlSession){
        this.sqlSession = sqlSession;
    }
 
    @Override
    public int getContentCnt(Map<String, Object> paramMap) {
        return sqlSession.selectOne("selectShopContentCnt", paramMap);
    }
     
    @Override
    public List<Shop> getContentList(Map<String, Object> paramMap) {
        return sqlSession.selectList("selectShopContent", paramMap);
    }
 
    @Override
    public Shop getContentView(Map<String, Object> paramMap) {
        return sqlSession.selectOne("selectShopContentView", paramMap);
    }
    
    @Override
    public void setShop(Map<String, Object> paramMap) {
        sqlSession.insert("insertShop", paramMap);
    }
    
}