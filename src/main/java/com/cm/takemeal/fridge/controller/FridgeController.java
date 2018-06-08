package com.cm.takemeal.fridge.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class FridgeController {
	
	//로그 처리용 객체 의존성 주입(종속객체 주입) 처리
	private static final Logger logger = LoggerFactory.getLogger(FridgeController.class);
	
	
	@RequestMapping(value="fridgeList.do", method=RequestMethod.GET)
	public String moveFridgeListPage() {
		return "JH/foodstorage";
	}
	
}














