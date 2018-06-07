package com.cm.takemeal.noticeboard.model.service;

import java.util.List;

import com.cm.takemeal.noticeboard.model.vo.BoardVo;
import com.cm.takemeal.noticeboard.model.vo.Criteria;
import com.cm.takemeal.noticeboard.model.vo.SearchCriteria;

public interface BoardService {
	
	public void regist(BoardVo board) throws Exception;
	
	public BoardVo read(Integer bno) throws Exception;
	
	public void modify(BoardVo board) throws Exception;
	
	public void remove(Integer bno) throws Exception;
	
	public List<BoardVo> listAll() throws Exception;
	
	public List<BoardVo> listCriteia(Criteria cri)throws Exception;
	
	public int listCountCriteria(Criteria cri)throws Exception;
	
	public List<BoardVo> listSearchCriteria(SearchCriteria cri)throws Exception;
	
	public int listSearchCount(SearchCriteria cri)throws Exception;
	
}
