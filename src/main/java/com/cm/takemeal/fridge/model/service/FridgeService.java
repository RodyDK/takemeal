package com.cm.takemeal.fridge.model.service;

import java.util.ArrayList;
import java.util.List;

import com.cm.takemeal.fridge.model.vo.Food;
import com.cm.takemeal.fridge.model.vo.Food_code;

public interface FridgeService {

	public abstract List<Food> selectColdFridge(String no);
	
	public abstract List<Food> selectFreezeFridge(String no);
	
	public abstract void updateFood(Food updatefood);

	public abstract List<Food_code> selectClass_code();

	public abstract List<Food> selectMeat();
}
