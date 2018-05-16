package com.cm.takemeal.recipe.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class RecipeController {
	
	//로그 처리용 객체 의존성 주입(종속객체 주입) 처리
	private static final Logger logger = LoggerFactory.getLogger(RecipeController.class);
	
	
	@RequestMapping(value="recipeList.do", method=RequestMethod.GET)
	public String moveRecipeListPage() {
		return "recipe/list";
	}
	
}














