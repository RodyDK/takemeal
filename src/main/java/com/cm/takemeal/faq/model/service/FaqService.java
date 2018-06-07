package com.cm.takemeal.faq.model.service;
import java.util.List;
import java.util.Map;

import com.cm.takemeal.faq.model.vo.Faq;

public interface FaqService {
	public static final int MID = 1;
	
    int getContentCnt(Map<String, Object> paramMap);
    
    List<Faq> getContentList(Map<String, Object> paramMap);

    Faq getContentView(Map<String, Object> paramMap);
     
}
