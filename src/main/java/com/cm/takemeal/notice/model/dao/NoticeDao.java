package com.cm.takemeal.notice.model.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;

import com.cm.takemeal.member.model.vo.Member;
import com.cm.takemeal.notice.exception.NoticeFailException;
import com.cm.takemeal.notice.model.vo.Notice;
import com.cm.takemeal.notice.model.vo.NoticeRegistVO;


@Repository("noticeDao")
public interface NoticeDao {
    
    List<Notice> getContentList(Map<String, Object> paramMap);

	int getContentCnt(Map<String, Object> paramMap);
	
	Notice getContentView(Map<String, Object> paramMap);
    
	public void create(NoticeRegistVO nc)throws Exception;
	
}
