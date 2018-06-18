package com.cm.takemeal.notice.model.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cm.takemeal.notice.model.dao.NoticeDao;
import com.cm.takemeal.notice.model.vo.Notice;
import com.cm.takemeal.notice.model.vo.NoticeRegistVO;


@Service("noticeService")

public class NoticeServiceImpl implements NoticeService {
 
    @Resource(name="noticeDao")
    private NoticeDao noticeDao;
    
 
    @Override
    public int getContentCnt(Map<String, Object> paramMap) {
        return noticeDao.getContentCnt(paramMap);
    }
 
    @Override
    public List<Notice> getContentList(Map<String, Object> paramMap) {
        return noticeDao.getContentList(paramMap);
    }

    
    @Override
    public Notice getContentView(Map<String, Object> paramMap) {
        return noticeDao.getContentView(paramMap);
    }

	@Override
	public void regist(NoticeRegistVO nc) throws Exception {
		// TODO Auto-generated method stub
		noticeDao.create(nc);
		
	}
    
    
    
}



