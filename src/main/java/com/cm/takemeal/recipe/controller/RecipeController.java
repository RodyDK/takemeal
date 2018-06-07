package com.cm.takemeal.recipe.controller;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

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
    public String recipeList(@RequestParam Map<String, Object> paramMap, Model model) {
 
        //조회 하려는 페이지
        int startPage = (paramMap.get("startPage")!=null?Integer.parseInt(paramMap.get("startPage").toString()):1);
        //한페이지에 보여줄 리스트 수
        int visiblePages = 8;
        int endPage = startPage + visiblePages - 1;
        //일단 전체 건수를 가져온다.
        int totalCnt = recipeService.getContentCnt(paramMap);
 
        
        
        //아래 1,2는 실제 개발에서는 class로 빼준다. (여기서는 이해를 위해 직접 적음)
        //1.하단 페이지 네비게이션에서 보여줄 리스트 수를 구한다.
        BigDecimal decimal1 = new BigDecimal(totalCnt);
        BigDecimal decimal2 = new BigDecimal(visiblePages);
        BigDecimal totalPage = decimal1.divide(decimal2, 0, BigDecimal.ROUND_UP);
        
        int startLimitPage = 0;
        //2.mysql limit 범위를 구하기 위해 계산
        if(startPage==1){
            startLimitPage = 1;
        }else{
            startLimitPage = ((startPage-1)*visiblePages)+1;
        }
        
        paramMap.put("start", startLimitPage);
        paramMap.put("end", endPage);
        //jsp 에서 보여줄 정보 추출

        model.addAttribute("startPage", startPage);//현재 페이지      
        model.addAttribute("totalCnt", totalCnt);//전체 게시물수
        model.addAttribute("totalPage", totalPage);//페이지 네비게이션에 보여줄 리스트 수
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
        int visiblePages = 10;
        int endPage = startPage + visiblePages - 1;
        //일단 전체 건수를 가져온다.
        int totalCnt = recipeService.getContentCnt(paramMap);
 
        
        
        //아래 1,2는 실제 개발에서는 class로 빼준다. (여기서는 이해를 위해 직접 적음)
        //1.하단 페이지 네비게이션에서 보여줄 리스트 수를 구한다.
        BigDecimal decimal1 = new BigDecimal(totalCnt);
        BigDecimal decimal2 = new BigDecimal(visiblePages);
        BigDecimal totalPage = decimal1.divide(decimal2, 0, BigDecimal.ROUND_UP);
        
        int startLimitPage = 0;
        //2.mysql limit 범위를 구하기 위해 계산
        if(startPage==1){
            startLimitPage = 1;
        }else{
            startLimitPage = ((startPage-1)*visiblePages)+1;
        }
        
        paramMap.put("start", startLimitPage);
        paramMap.put("end", endPage);
        //jsp 에서 보여줄 정보 추출

        model.addAttribute("startPage", startPage);//현재 페이지      
        model.addAttribute("totalCnt", totalCnt);//전체 게시물수
        model.addAttribute("totalPage", totalPage);//페이지 네비게이션에 보여줄 리스트 수
        model.addAttribute("recipeList", recipeService.getContentList(paramMap));//검색
 
        return "DK/list";
 
    }

    //게시글 상세 보기
    @RequestMapping(value = "recipeView.do")
    public String recipeView(@RequestParam Map<String, Object> paramMap, Model model) {
    	if(paramMap.get("no") != null){
            model.addAttribute("recipeView", recipeService.getContentView(paramMap));
            return "DK/view";
    	}else {
    		model.addAttribute("msg", "올바른 경로가 아닙니다.");//현재 페이지      
    		return "DK/view";
    	}

    }
    
    //게시글 등록 및 수정
    @RequestMapping(value = "recipeEdit.do")
    public String recipeEdit(HttpServletRequest request, @RequestParam Map<String, Object> paramMap, Model model) {
 
        //Referer 검사
        String Referer = request.getHeader("referer");
 
        if(Referer!=null){//URL로 직접 접근 불가
            if(paramMap.get("no") != null){ //게시글 수정
                if(Referer.indexOf("recipeView.do")>-1){
                    //정보를 가져온다.
                    model.addAttribute("recipeView", recipeService.getContentView(paramMap));
                    return "DK/edit";
                }else{
                    return "redirect:recipeList.do";
                }
            }else{ //게시글 등록
                if(Referer.indexOf("recipeList.do")>-1){
                    return "DK/edit";
                }else{
                    return "redirect:recipeList.do";
                }
            }
        }else{
            return "redirect:recipeList.do";
        }
 
    }
	
}














