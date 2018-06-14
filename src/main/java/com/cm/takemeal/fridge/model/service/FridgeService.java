package com.cm.takemeal.fridge.model.service;

import java.util.List;

import com.cm.takemeal.fridge.model.vo.Food;

public interface FridgeService {

	public abstract List<Food> selectColdFridge(String no);
	
	public abstract List<Food> selectFreezeFridge(String no);
}
