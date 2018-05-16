package com.cm.takemeal.chef.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class ChefController {
	
	//로그 처리용 객체 의존성 주입(종속객체 주입) 처리
	private static final Logger logger = LoggerFactory.getLogger(ChefController.class);
	
	
	@RequestMapping(value="chefList.do", method=RequestMethod.GET)
	public String moveChefListPage() {
		return "chef/list";
	}
	
}














