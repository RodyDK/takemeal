package com.cm.takemeal.shop.model.service;
import java.util.List;
import java.util.Map;

import com.cm.takemeal.shop.model.vo.Shop;

public interface ShopService {
	public static final int MID = 1;
	
    int getContentCnt(Map<String, Object> paramMap);
    
    List<Shop> getContentList(Map<String, Object> paramMap);

    Shop getContentView(Map<String, Object> paramMap);
     
    //List<RecipeReply> getReplyList(Map<String, Object> paramMap);
}
