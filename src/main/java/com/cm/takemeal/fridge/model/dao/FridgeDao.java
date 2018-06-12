package com.cm.takemeal.fridge.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cm.takemeal.fridge.model.vo.Food;

@Repository("fridgeDao")
public class FridgeDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<Food> selectColdFridge() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("myfridge_cold");
	}
	
	public List<Food> selectFreezeFridge() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("myfridge_freeze");
	}
	
}
