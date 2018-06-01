package com.cm.takemeal.shop.model.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.cm.takemeal.shop.exception.ShopFailException;
import com.cm.takemeal.shop.model.vo.Shop;


@Repository("shopDao")
public interface ShopDao {
    
    List<Shop> getContentList(Map<String, Object> paramMap);

	int getContentCnt(Map<String, Object> paramMap);
	
	Shop getContentView(Map<String, Object> paramMap);
    
}
