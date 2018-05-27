package com.cm.takemeal.noticeboard.model.dao;

import java.util.*;
import com.cm.takemeal.noticeboard.model.vo.BoardVo;;

public interface BoardDao {
	

	public void create(BoardVo vo) throws Exception;
	
	public BoardVo read(Integer bno) throws Exception;
	
	public void update(BoardVo vo) throws Exception;
	
	public void delete(Integer bno) throws Exception;
	
	public List<BoardVo> listAll() throws Exception;
	
	
	
}
