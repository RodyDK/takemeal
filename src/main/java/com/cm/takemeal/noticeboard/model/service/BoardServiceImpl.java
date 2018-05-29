package com.cm.takemeal.noticeboard.model.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.cm.takemeal.noticeboard.model.dao.BoardDao;
import com.cm.takemeal.noticeboard.model.vo.BoardVo;
import com.cm.takemeal.noticeboard.model.vo.Criteria;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Inject
	private BoardDao dao;

	@Override
	public void regist(BoardVo board) throws Exception {
		// TODO Auto-generated method stub
		dao.create(board);
		
	}

	@Override
	public BoardVo read(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		return dao.read(bno);
	}

	@Override
	public void modify(BoardVo board) throws Exception {
		// TODO Auto-generated method stub
		dao.update(board);
		
	}

	@Override
	public void remove(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		dao.delete(bno);
	}

	@Override
	public List<BoardVo> listAll() throws Exception {
		// TODO Auto-generated method stub
		return dao.listAll();
	}

	@Override
	public List<BoardVo> listCriteia(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return dao.listCriteria(cri);
	}
	
	

}
