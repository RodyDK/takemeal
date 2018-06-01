package com.cm.takemeal.shop.model.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cm.takemeal.shop.model.dao.ShopDao;
import com.cm.takemeal.shop.model.vo.Shop;


@Service("shopService")

public class ShopServiceImpl implements ShopService {
 
    @Resource(name="shopDao")
    private ShopDao shopDao;
    
 
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
}



