package com.cm.takemeal.notice.model.service;
import java.util.List;
import java.util.Map;

import com.cm.takemeal.notice.model.vo.Notice;
import com.cm.takemeal.notice.model.vo.NoticeRegistVO;

public interface NoticeService {
	public static final int MID = 1;
	
    int getContentCnt(Map<String, Object> paramMap);
    
    List<Notice> getContentList(Map<String, Object> paramMap);

    Notice getContentView(Map<String, Object> paramMap);
    
    public void regist(NoticeRegistVO nc)throws Exception;

     
}
