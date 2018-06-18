package com.cm.takemeal.notice.model.service;
import java.util.List;
import java.util.Map;

import com.cm.takemeal.notice.model.vo.Notice;

public interface NoticeService {
	public static final int MID = 1;
	
    int getContentCnt(Map<String, Object> paramMap);
    
    List<Notice> getContentList(Map<String, Object> paramMap);

    Notice getContentView(Map<String, Object> paramMap);
    
    public void regist(Notice nc)throws Exception;
     
}
