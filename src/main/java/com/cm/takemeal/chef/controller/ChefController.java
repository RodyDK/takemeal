package com.cm.takemeal.chef.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cm.takemeal.Pagination;
import com.cm.takemeal.Setting;
import com.cm.takemeal.chef.model.service.ChefService;
import com.cm.takemeal.chef.model.vo.Chef;
import com.cm.takemeal.member.model.vo.Member;




@Controller
public class ChefController {
	
    @Autowired
    ChefService chefService;
    
	private static final Logger logger = 
			LoggerFactory.getLogger(ChefController.class);
	
    //게시글 리스트 조회
    @RequestMapping(value = "chefList.do")
    public String chefList(@RequestParam Map<String, Object> paramMap, Model model, Setting setting) {
    	

        int totalCnt = chefService.getContentCnt(paramMap);
        int currentPage = setting.getPage();
		int startRow = (currentPage-1) * setting.getPerPageNum();
		int endRow = currentPage * setting.getPerPageNum();

		Pagination pagination = new Pagination();
		
		
		pagination.setSetting(setting);
		pagination.setTotalCount(totalCnt);
        paramMap.put("start", startRow);
        paramMap.put("end", endRow);
        
        System.out.println(chefService.getContentList(paramMap));
        model.addAttribute("pagination", pagination);
        model.addAttribute("chefList", chefService.getContentList(paramMap));//검색
        
 
        return "chef/list";
 
    }

    
    //게시글 등록 및 수정
    @RequestMapping(value = "follow.do")
    public String followList(@RequestParam Map<String, Object> paramMap, Model model, Setting setting, HttpSession session) {


		Member user = (Member) session.getAttribute("loginUser");

		
        int totalCnt = chefService.getContentCnt(paramMap);
        int currentPage = setting.getPage();
		int startRow = (currentPage-1) * setting.getPerPageNum();
		int endRow = currentPage * setting.getPerPageNum();

		Pagination pagination = new Pagination();
		
		
		pagination.setSetting(setting);
		pagination.setTotalCount(totalCnt);
        paramMap.put("start", startRow);
        paramMap.put("end", endRow);
        paramMap.put("userid", user.getUserid());
        
        System.out.println(chefService.getContentList(paramMap));
        model.addAttribute("pagination", pagination);
        model.addAttribute("chefList", chefService.getContentList(paramMap));//검색
        
 
        return "member/follow";
 
    }
    
    //게시글 상세 보기
    @RequestMapping(value = "chefView.do")
    public Object chefView(@RequestParam Map<String, Object> paramMap, Model model, Setting setting) {
    	
        int totalCnt = chefService.getRecipeContentCnt(paramMap);
        int currentPage = setting.getPage();
		int startRow = (currentPage-1) * setting.getPerPageNum();
		int endRow = currentPage * setting.getPerPageNum();

		Pagination pagination = new Pagination();
		
		
		pagination.setSetting(setting);
		pagination.setTotalCount(totalCnt);
        paramMap.put("start", startRow);
        paramMap.put("end", endRow);
        
        System.out.println(chefService.getContentView(paramMap));
        model.addAttribute("pagination", pagination);
        model.addAttribute("chefView", chefService.getContentView(paramMap));//검색
        model.addAttribute("chefList", chefService.getRecipeContentList(paramMap));//검색
        
 
        return "chef/view";
    	

    }


    @RequestMapping(value = "chefFollow.do")
    @ResponseBody
    public Object recipeLike(@RequestParam Map<String, Object> paramMap, HttpServletRequest request) throws Exception {

    	List<String> likeCnt = chefService.getFollow(paramMap);

        return likeCnt;
    }
    
    @RequestMapping(value = "chefFollowSave.do")
    @ResponseBody
    public Object chefLikeSave(@RequestParam Map<String, Object> paramMap, HttpServletRequest request) throws Exception {
    	
    	Map<String, Object> retVal = new HashMap<String, Object>();
    	int userFollowCnt = chefService.getFollowCnt(paramMap);
    	
        if(userFollowCnt > 0) {
        	chefService.deleteFollow(paramMap);
        	retVal.put("code", "UNFOLLOW");
        }else {
        	chefService.saveFollow(paramMap);
        	retVal.put("code", "FOLLOW");
        }
        
        return retVal;
    }
    
    //게시글 등록 및 수정
    @RequestMapping(value = "chefEdit.do")
    public String chefEdit(HttpServletRequest request, @RequestParam Map<String, Object> paramMap, Model model) {

        if(paramMap.get("no") != null){ //게시글 수정
            //정보를 가져온다.
            model.addAttribute("chefView", chefService.getContentView(paramMap));
            return "chef/edit";
        }else{ //게시글 등록 
            return "chef/edit";
        }

    }	
 
}


 
	













