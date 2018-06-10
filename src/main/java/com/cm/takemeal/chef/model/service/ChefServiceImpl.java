package com.cm.takemeal.chef.model.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cm.takemeal.chef.model.dao.ChefDao;
import com.cm.takemeal.chef.model.vo.Chef;


@Service("chefService")

public class ChefServiceImpl implements ChefService {
 
    @Resource(name="chefDao")
    private ChefDao chefDao;
    
 
    @Override
    public int getContentCnt(Map<String, Object> paramMap) {
        return chefDao.getContentCnt(paramMap);
    }
 
    @Override
    public List<Chef> getContentList(Map<String, Object> paramMap) {
        return chefDao.getContentList(paramMap);
    }

    
    @Override
    public Chef getContentView(Map<String, Object> paramMap) {
        return chefDao.getContentView(paramMap);
    }
}



