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

import com.cm.takemeal.recipe.model.service.RecipeService;



@Controller
public class ShopController {
	
    @Autowired
    RecipeService shopService;
    
	private static final Logger logger = 
			LoggerFactory.getLogger(ShopController.class);
	
    //게시글 리스트 조회
    @RequestMapping(value = "shopList.do")
    public String shopList(@RequestParam Map<String, Object> paramMap, Model model) {
 
        //조회 하려는 페이지
        int startPage = (paramMap.get("startPage")!=null?Integer.parseInt(paramMap.get("startPage").toString()):1);
        //한페이지에 보여줄 리스트 수
        int visiblePages = (paramMap.get("visiblePages")!=null?Integer.parseInt(paramMap.get("visiblePages").toString()):10);
        //일단 전체 건수를 가져온다.
        int totalCnt = shopService.getContentCnt(paramMap);
 
        //아래 1,2는 실제 개발에서는 class로 빼준다. (여기서는 이해를 위해 직접 적음)
        //1.하단 페이지 네비게이션에서 보여줄 리스트 수를 구한다.
        BigDecimal decimal1 = new BigDecimal(totalCnt);
        BigDecimal decimal2 = new BigDecimal(visiblePages);
        BigDecimal totalPage = decimal1.divide(decimal2, 0, BigDecimal.ROUND_UP);
        
        int startLimitPage = 0;
        //2.mysql limit 범위를 구하기 위해 계산
        if(startPage==1){
            startLimitPage = 0;
        }else{
            startLimitPage = (startPage-1)*visiblePages;
        }
        
        paramMap.put("start", startLimitPage);
        paramMap.put("end", visiblePages);
        //jsp 에서 보여줄 정보 추출
        model.addAttribute("startPage", startPage+"");//현재 페이지      
        model.addAttribute("totalCnt", totalCnt);//전체 게시물수
        model.addAttribute("totalPage", totalPage);//페이지 네비게이션에 보여줄 리스트 수
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





























