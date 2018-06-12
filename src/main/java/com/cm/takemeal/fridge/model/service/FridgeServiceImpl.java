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
	public List<Food> selectColdFridge() {
		// TODO Auto-generated method stub
		return fridgeDao.selectColdFridge();
	}
	
	@Override
	public List<Food> selectFreezeFridge() {
		// TODO Auto-generated method stub
		return fridgeDao.selectFreezeFridge();
	}
}
