package com.cm.takemeal.noticeboard.model.service;

import java.util.List;

import com.cm.takemeal.noticeboard.model.vo.Criteria;
import com.cm.takemeal.noticeboard.model.vo.ReplyVo;

public interface ReplyService {
	
	public void addReply(ReplyVo vo)throws Exception;
	
	public List<ReplyVo> listReply(Integer bno)throws Exception;
	
	public void modifyReply(ReplyVo vo)throws Exception;
	
	public void removeReply(Integer rno)throws Exception;
	
	public List<ReplyVo> listReplyPage(Integer bno, Criteria cri)throws Exception;
	
	public int count(Integer bno) throws Exception;
}
