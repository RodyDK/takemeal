package com.cm.takemeal.shop.model.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.cm.takemeal.FileUtils;
import com.cm.takemeal.shop.model.dao.ShopDao;
import com.cm.takemeal.shop.model.vo.Shop;


@Service("shopService")

public class ShopServiceImpl implements ShopService {
 
    @Resource(name="shopDao")
    private ShopDao shopDao;
    
    @Resource(name="fileUtils")
	private FileUtils fileUtils;
    
 
    @Override
    public int getContentCnt(Map<String, Object> paramMap) {
        return shopDao.getContentCnt(paramMap);
    }
 
    @Override
    public List<Shop> getContentList(Map<String, Object> paramMap) {
        return shopDao.getContentList(paramMap);
    }

    
    @Override
    public Shop getContentView(Map<String, Object> paramMap) {
        return shopDao.getContentView(paramMap);
    }
    
    @Override
    public void setShop(Map<String, Object> paramMap, HttpServletRequest request) throws Exception {
		List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(paramMap, request);
		

		for(int i=0, size=list.size(); i<size; i++){
			paramMap.put("thumbnail"+(i+1), list.get(i).get("STORED_FILE_NAME"));
		}
		System.out.println("paramMap"+paramMap);
        shopDao.setShop(paramMap);
    }
}



