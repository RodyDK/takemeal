package com.cm.takemeal.noticeboard.model.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.cm.takemeal.noticeboard.model.dao.ReplyDao;
import com.cm.takemeal.noticeboard.model.vo.Criteria;
import com.cm.takemeal.noticeboard.model.vo.ReplyVo;

@Service
public class ReplyServiceImpl implements ReplyService{

	@Inject
	private ReplyDao dao;

	@Override
	public void addReply(ReplyVo vo) throws Exception {
		// TODO Auto-generated method stub
		dao.create(vo);
		
	}

	@Override
	public List<ReplyVo> listReply(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		return dao.list(bno);
	}

	@Override
	public void modifyReply(ReplyVo vo) throws Exception {
		// TODO Auto-generated method stub
		dao.update(vo);
	}

	@Override
	public void removeReply(Integer rno) throws Exception {
		// TODO Auto-generated method stub
		dao.delete(rno);
		
	}

	@Override
	public List<ReplyVo> listReplyPage(Integer bno, Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return dao.listPage(bno, cri);
	}

	@Override
	public int count(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		return dao.count(bno);
	}
	
	
	
	
}
