package com.cm.takemeal.shop.controller;

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
import com.cm.takemeal.shop.model.service.ShopService;
import com.cm.takemeal.shop.model.vo.Shop;



@Controller
public class ShopController {
	
    @Autowired
    ShopService shopService;
    
	private static final Logger logger = 
			LoggerFactory.getLogger(ShopController.class);
	
    //게시글 리스트 조회
    @RequestMapping(value = "shopList.do")
    public String shopList(@RequestParam Map<String, Object> paramMap, Model model, Setting setting) {
 
        int totalCnt = shopService.getContentCnt(paramMap);
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
        model.addAttribute("shopList", shopService.getContentList(paramMap));//검색
        
        return "shop/list";
 
    }

  //게시글 상세 보기
    @RequestMapping(value = "shopView.do")
    @ResponseBody
    public Object shopView(@RequestParam Map<String, Object> paramMap, Model model) {
    	
    	Map<String, Object> retVal = new HashMap<String, Object>();
    	Shop result = shopService.getContentView(paramMap);
    	
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
    @RequestMapping(value = "shopWrite.do")
    public String shopWrite(HttpServletRequest request, @RequestParam Map<String, Object> paramMap, Model model) {
            return "shop/write";
    }
 
    //@RequestMapping(value = "shopSave.do")
    //@ResponseBody
    /*public Object shopSave(@RequestParam Map<String, Object> paramMap, HttpServletRequest request) throws Exception {
    	
    	Map<String, Object> retVal = new HashMap<String, Object>();

    	shopService.setRecipe(paramMap,request);
    	


        return retVal;
    }*/
	
}





























