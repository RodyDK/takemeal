package com.cm.takemeal.faq.model.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.cm.takemeal.faq.model.vo.Faq;


@Repository("faqDao")
public interface FaqDao {
    
    List<Faq> getContentList(Map<String, Object> paramMap);

	int getContentCnt(Map<String, Object> paramMap);
	
	Faq getContentView(Map<String, Object> paramMap);
    
}
