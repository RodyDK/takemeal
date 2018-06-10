package com.cm.takemeal.recipe.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.cm.takemeal.Setting;
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
    public String recipeList(@RequestParam Map<String, Object> paramMap, Model model, @ModelAttribute("setting")Setting setting) {
 
        int totalCnt = recipeService.getContentCnt(paramMap);
        int currentPage = setting.getPage();
		int startRow = (currentPage-1) * setting.getPerPageNum();
		int endRow = currentPage * setting.getPerPageNum();
        
        

		Pagination pagination = new Pagination();
		
		
		pagination.setSetting(setting);
		pagination.setTotalCount(totalCnt);
        paramMap.put("start", startRow);
        paramMap.put("end", endRow);
        
        
        System.out.println(startRow+"22"+endRow);

		model.addAttribute("pagination", pagination);
        model.addAttribute("recipeList", recipeService.getContentList(paramMap));//검색
 
        return "DK/list";
 
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
    @RequestMapping(value = "recipeEdit.do")
    public String recipeEdit(HttpServletRequest request, @RequestParam Map<String, Object> paramMap, Model model) {

        if(paramMap.get("no") != null){ //게시글 수정
            //정보를 가져온다.
            model.addAttribute("recipeView", recipeService.getContentView(paramMap));
            return "DK/edit";
        }else{ //게시글 등록 
            return "DK/edit";
        }

    }	
 
}


 
	













