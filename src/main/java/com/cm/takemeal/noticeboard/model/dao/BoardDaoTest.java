package com.cm.takemeal.noticeboard.model.dao;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.cm.takemeal.noticeboard.model.vo.BoardVo;
import com.cm.takemeal.noticeboard.model.vo.Criteria;

public class BoardDaoTest {

	@Inject
	private BoardDao dao;
	
	private static Logger logger = LoggerFactory.getLogger(BoardDaoTest.class);
	
	
	public void testListCriterai()throws Exception{
	
		Criteria cri = new Criteria();
		cri.setPage(2);
		cri.setPerPageNum(20);
		
		List<BoardVo> list = dao.listCriteria(cri);
		
		for(BoardVo boardVo : list) {
			logger.info(boardVo.getBno() + ":" + boardVo.getTitle());
		}
		

		
	}
	
	
	
	

}
