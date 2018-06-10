package com.cm.takemeal.chef.controller;


import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

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
        
        
		System.out.println("setting"+setting);
		
		
		Pagination pagination = new Pagination();
		
		
		pagination.setSetting(setting);
		pagination.setTotalCount(totalCnt);
		
		System.out.println("getsetting"+pagination.getEndPage());
		
        paramMap.put("start", startRow);
        paramMap.put("end", endRow);
        
        model.addAttribute("pagination", pagination);
        model.addAttribute("chefList", chefService.getContentList(paramMap));//검색
        
 
        return "chef/list";
 
    }

    //게시글 상세 보기
    @RequestMapping(value = "chefView.do")
    @ResponseBody
    public Object chefView(@RequestParam Map<String, Object> paramMap, Model model) {
    	
    	Map<String, Object> retVal = new HashMap<String, Object>();
    	Chef result = chefService.getContentView(paramMap);
    	
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


 
	













