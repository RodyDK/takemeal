package com.cm.takemeal.fridge.controller;

import java.util.*;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cm.takemeal.fridge.model.service.FridgeService;
import com.cm.takemeal.fridge.model.vo.Food;


@Controller
public class FridgeController {
	
	//로그 처리용 객체 의존성 주입(종속객체 주입) 처리
	private static final Logger logger = LoggerFactory.getLogger(FridgeController.class);
	
	@Autowired
	private FridgeService fridgeService;
	
	@RequestMapping(value="fridgeList.do", method=RequestMethod.GET)
	public ModelAndView moveFridgeListPage(ModelAndView mv, @RequestParam("no") String no) { //@RequestParam("member_id") String member_id
		//이 페이지로의 이동으 ㄹ요청한 유저의 냉동,냉장에 들어있는 재료들을 뽑아서 페이지로 보내는 거
		//1. 냉장 재료 꺼내오기
		ArrayList<Food> cold = (ArrayList<Food>)fridgeService.selectColdFridge(no); //매개변수로 멤버도 추가해야됨.
		//2. 냉동 재료 꺼내오기
		ArrayList<Food> freeze = (ArrayList<Food>)fridgeService.selectFreezeFridge(no);
		
		if(cold.size() > 0 && freeze.size() > 0) {
			System.out.println("데이터 가져오기 성공");
			mv.addObject("cold", cold);
			mv.addObject("freeze", freeze);
		}else {
			System.out.println("데이터 가져오기 실패");
		}
		mv.setViewName("JH/foodstorage");
		return mv;
	}
	
}














