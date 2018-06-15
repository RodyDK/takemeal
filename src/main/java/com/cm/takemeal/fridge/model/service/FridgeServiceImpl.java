package com.cm.takemeal.fridge.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cm.takemeal.fridge.model.dao.FridgeDao;
import com.cm.takemeal.fridge.model.vo.Food;

@Service("fridgeService")
public class FridgeServiceImpl implements FridgeService{
	
	@Autowired
	private FridgeDao fridgeDao;
	
	@Override
	public List<Food> selectColdFridge(String no) {
		// TODO Auto-generated method stub
		return fridgeDao.selectColdFridge(no);
	}
	
	@Override
	public List<Food> selectFreezeFridge(String no) {
		// TODO Auto-generated method stub
		return fridgeDao.selectFreezeFridge(no);
	}
	
	@Override
	public void updateFood(Food updatefood) {
		
		fridgeDao.updateFood(updatefood);
	}
}
