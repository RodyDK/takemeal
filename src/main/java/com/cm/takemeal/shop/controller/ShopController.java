package com.cm.takemeal.shop.controller;

import java.math.BigDecimal;
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
import org.springframework.web.servlet.ModelAndView;

import com.cm.takemeal.Pagination;
import com.cm.takemeal.Setting;
import com.cm.takemeal.shop.model.service.ShopService;



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
    public String shopView(@RequestParam Map<String, Object> paramMap, Model model) {
    	if(paramMap.get("no") != null){
            model.addAttribute("shopView", shopService.getContentView(paramMap));
            return "shop/view";
    	}else {
    		model.addAttribute("msg", "올바른 경로가 아닙니다.");//현재 페이지      
    		return "shop/view";
    	}

    }
    
    //게시글 등록 및 수정
    @RequestMapping(value = "shopEdit.do")
    public String shopEdit(HttpServletRequest request, @RequestParam Map<String, Object> paramMap, Model model) {
 
        //Referer 검사
        String Referer = request.getHeader("referer");
 
        if(Referer!=null){//URL로 직접 접근 불가
            if(paramMap.get("no") != null){ //게시글 수정
                if(Referer.indexOf("shopView.do")>-1){
                    //정보를 가져온다.
                    model.addAttribute("shopView", shopService.getContentView(paramMap));
                    return "shop/edit";
                }else{
                    return "redirect:shopList.do";
                }
            }else{ //게시글 등록
                if(Referer.indexOf("shopList.do")>-1){
                    return "shop/edit";
                }else{
                    return "redirect:shopList.do";
                }
            }
        }else{
            return "redirect:shopList.do";
        }
 
    }
 
  
	
}





























