package com.cm.takemeal.noticeboard.model.dao;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.cm.takemeal.noticeboard.model.vo.BoardVo;
import com.cm.takemeal.noticeboard.model.vo.Criteria;



@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/resources/**/root-context.xml"})

public class BoardDaoTest {

	@Inject
	private BoardDao dao;
	
	private static Logger logger = LoggerFactory.getLogger(BoardDaoTest.class);
	
	
	@Test
	public void testCreate()throws Exception{
		
		BoardVo board = new BoardVo();
		board.setTitle("새로운글 테스트중");
		board.setContent("새로운 글 테스트중");
		board.setWritet("DJ");
		dao.create(board);
	}
	
	/*public void testListCriterai()throws Exception{
	
		Criteria cri = new Criteria();
		cri.setPage(2);
		cri.setPerPageNum(20);
		
		List<BoardVo> list = dao.listCriteria(cri);
		
		for(BoardVo boardVo : list) {
			logger.info(boardVo.getBno() + ":" + boardVo.getTitle());
		}*/
		

		
	}
	
	
	
	

