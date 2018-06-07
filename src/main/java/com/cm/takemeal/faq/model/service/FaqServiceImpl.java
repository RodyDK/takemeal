package com.cm.takemeal.faq.model.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cm.takemeal.faq.model.dao.FaqDao;
import com.cm.takemeal.faq.model.vo.Faq;


@Service("faqService")

public class FaqServiceImpl implements FaqService {
 
    @Resource(name="faqDao")
    private FaqDao faqDao;
    
 
    @Override
    public int getContentCnt(Map<String, Object> paramMap) {
        return faqDao.getContentCnt(paramMap);
    }
 
    @Override
    public List<Faq> getContentList(Map<String, Object> paramMap) {
        return faqDao.getContentList(paramMap);
    }

    
    @Override
    public Faq getContentView(Map<String, Object> paramMap) {
        return faqDao.getContentView(paramMap);
    }
}



