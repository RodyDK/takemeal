package com.cm.takemeal.noticeboard.model.dao;

import java.util.*;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.cm.takemeal.noticeboard.model.vo.*;


@Repository
public class BoardDaoImpl implements BoardDao{
	
		@Inject
		private SqlSession session;
		
		private static String namespace = "com.cm.mapper.NoticeBoardMapper";

		@Override
		public void create(BoardVo vo) throws Exception {
			// TODO Auto-generated method stub
			session.insert(namespace+"create", vo);
			
		}

		@Override
		public BoardVo read(Integer bno) throws Exception {
			// TODO Auto-generated method stub
			return session.selectOne(namespace+".read", bno);
		}

		@Override
		public void update(BoardVo vo) throws Exception {
			// TODO Auto-generated method stub
			session.update(namespace+".update", vo);
			
		}

		@Override
		public void delete(Integer bno) throws Exception {
			// TODO Auto-generated method stub
			session.delete(namespace+".delete", bno);
			
		}

		@Override
		public List<BoardVo> listAll() throws Exception {
			// TODO Auto-generated method stub
			return session.selectList(namespace+".listAll");
		}
		
		

}
