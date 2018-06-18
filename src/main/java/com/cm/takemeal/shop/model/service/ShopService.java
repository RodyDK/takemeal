package com.cm.takemeal.shop.model.service;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.cm.takemeal.shop.model.vo.Shop;

public interface ShopService {
	public static final int MID = 1;
	
    int getContentCnt(Map<String, Object> paramMap);
    
    List<Shop> getContentList(Map<String, Object> paramMap);

    Shop getContentView(Map<String, Object> paramMap);
    
    void setShop(Map<String, Object> paramMap, HttpServletRequest request) throws Exception;
     
    //List<RecipeReply> getReplyList(Map<String, Object> paramMap);
}
