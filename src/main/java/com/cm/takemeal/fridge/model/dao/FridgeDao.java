package com.cm.takemeal.fridge.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cm.takemeal.fridge.model.vo.Food;
import com.cm.takemeal.fridge.model.vo.Food_code;

@Repository("fridgeDao")
public class FridgeDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<Food> selectColdFridge(String no) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("myfridge_cold", no);
	}
	
	public List<Food> selectFreezeFridge(String no) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("myfridge_freeze", no);
	}

	public void updateFood(Food updatefood) {
		// TODO Auto-generated method stub
		sqlSession.update("updateFood", updatefood);
	}

	public List<Food_code> selectClass_code() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("class_code_info");
	}

	public List<Food> selectMeat() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("select_meat");
	}
	
}
