package com.cm.takemeal.noticeboard.model.dao;

import java.util.*;
import com.cm.takemeal.noticeboard.model.vo.BoardVo;
import com.cm.takemeal.noticeboard.model.vo.Criteria;
import com.cm.takemeal.noticeboard.model.vo.SearchCriteria;;

public interface BoardDao {
	

	public void create(BoardVo vo) throws Exception;
	
	public BoardVo read(Integer bno) throws Exception;
	
	public void update(BoardVo vo) throws Exception;
	
	public void delete(Integer bno) throws Exception;
	
	public List<BoardVo> listAll() throws Exception;
	
	public List<BoardVo> listPage(int page) throws Exception;
	
	public List<BoardVo> listCriteria(Criteria cri) throws Exception;
	
	public int countPaging(Criteria cri) throws Exception;
	
	public List<BoardVo> listSearch(SearchCriteria cri)throws Exception;
	
	public int listSearchCount(SearchCriteria cri)throws Exception;
	
}
