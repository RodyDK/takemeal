package com.cm.takemeal.recipe.controller;

import java.util.ArrayList;
import java.util.Enumeration;
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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.cm.takemeal.Setting;
import com.cm.takemeal.member.model.vo.Member;
import com.cm.takemeal.Pagination;
import com.cm.takemeal.recipe.model.service.RecipeService;
import com.cm.takemeal.recipe.model.vo.Recipe;


@Controller
public class RecipeController {
	
    @Autowired
    RecipeService recipeService;
    
	private static final Logger logger = 
			LoggerFactory.getLogger(RecipeController.class);
	
    //게시글 리스트 조회
    @RequestMapping(value = "recipeList.do")
    public String recipeList(@RequestParam Map<String, Object> paramMap, Model model, @ModelAttribute("setting")Setting setting, HttpSession session) {
 
        int totalCnt = recipeService.getContentCnt(paramMap);
        int currentPage = setting.getPage();
		int startRow = (currentPage-1) * setting.getPerPageNum();
		int endRow = currentPage * setting.getPerPageNum();

		Member user = (Member) session.getAttribute("loginUser");

		



		Pagination pagination = new Pagination();
		
		
		pagination.setSetting(setting);
		pagination.setTotalCount(totalCnt);
        paramMap.put("start", startRow);
        paramMap.put("end", endRow);
        
        
		model.addAttribute("pagination", pagination);
        model.addAttribute("recipeList", recipeService.getContentList(paramMap));
        
        
        return "DK/list";
 
    }

    
    //게시글 리스트 조회
    @RequestMapping(value = "like.do")
    public String mypageLike(@RequestParam Map<String, Object> paramMap, Model model, @ModelAttribute("setting")Setting setting, HttpSession session) {
    	
    	Member user = (Member) session.getAttribute("loginUser");
    	
        int totalCnt = recipeService.getContentCnt(paramMap);
        int currentPage = setting.getPage();
		int startRow = (currentPage-1) * setting.getPerPageNum();
		int endRow = currentPage * setting.getPerPageNum();

		

		



		Pagination pagination = new Pagination();
		
		
		pagination.setSetting(setting);
		pagination.setTotalCount(totalCnt);
        paramMap.put("start", startRow);
        paramMap.put("end", endRow);
        paramMap.put("userid", user.getUserid());
        
        
		model.addAttribute("pagination", pagination);
        model.addAttribute("recipeList", recipeService.getContentList(paramMap));
        
        
        return "member/like";
 
    }
    
    //게시글 상세 보기
    @RequestMapping(value = "recipeView.do")
    @ResponseBody
    public Object recipeView(@RequestParam Map<String, Object> paramMap, Model model) {
    	
    	Map<String, Object> retVal = new HashMap<String, Object>();
    	Recipe result = recipeService.getContentView(paramMap);
    	
    	if(result != null){
    		retVal.put("code", "SUCCESS");
    		retVal.put("data", result);
    	}else {   
    		retVal.put("code", "FAIL");
            retVal.put("message", "잘못된 요청입니다.");
    	}

        return retVal;
    }
    
    //게시글 등록 및 수정
    @RequestMapping(value = "recipeWrite.do")
    public String recipeEdit(HttpServletRequest request, @RequestParam Map<String, Object> paramMap, Model model) {
            return "DK/write";
    }
 
    
    @RequestMapping(value = "recipeLike.do")
    @ResponseBody
    public Object recipeLike(@RequestParam Map<String, Object> paramMap, HttpServletRequest request) throws Exception {

    	List<String> likeCnt = recipeService.getLike(paramMap);

        return likeCnt;
    }
    
    
    @RequestMapping(value = "recipeLikeSave.do")
    @ResponseBody
    public Object recipeLikeSave(@RequestParam Map<String, Object> paramMap, HttpServletRequest request) throws Exception {
    	
    	System.out.println("paramMapparamMap"+paramMap);
    	Map<String, Object> retVal = new HashMap<String, Object>();
    	int userLikeCnt = recipeService.getLikeCnt(paramMap);
    	
        if(userLikeCnt > 0) {
        	retVal.put("code", "UNLIKE");
        	int downLike = recipeService.downLike(paramMap);
        	int unlike = recipeService.deleteLike(paramMap);
        }else {
        	retVal.put("code", "LIKE");
        	int upLike = recipeService.upLike(paramMap);
        	int like = recipeService.saveLike(paramMap);
        }
        
        return retVal;
    }
    
    
    
    @RequestMapping(value = "recipeSave.do")
    @ResponseBody
    public Object recipeSave(@RequestParam Map<String, Object> paramMap, HttpServletRequest request, @RequestParam Map<Object, Object> paramMap1) throws Exception {
    	
    	Map<String, Object> retVal = new HashMap<String, Object>();


    	Enumeration enums = request.getParameterNames();

    	while(enums.hasMoreElements()){ 
    		String paramName = (String)enums.nextElement(); 
    		String[] parameters = request.getParameterValues(paramName); 

    		// Parameter가 배열일 경우 
    		if(parameters.length > 1){ 
    			List<Object> parmList = new ArrayList<Object>();
    				
    			for(int i= 0; i<parameters.length;i++){
    				parmList.add(parmList.size(), parameters[i]);
    			}
    			paramMap.put(paramName, parmList);
    			// Parameter가 배열이 아닌 경우 
    		}
    	} 
    	
    	
    	
    	paramMap.put("tag", paramMap.get("tag[]").toString());
    	paramMap.put("recipe_food", paramMap.get("recipe_food[]").toString());
    	paramMap.put("recipe_amount", paramMap.get("recipe_amount[]").toString());
    	

    	recipeService.setRecipe(paramMap,request);

        return retVal;
    }
    
}


 
	













