package com.cm.takemeal.noticeboard.model.dao;

import java.util.*;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.cm.takemeal.member.model.vo.Member;
import com.cm.takemeal.noticeboard.model.vo.*;
import com.sun.media.jfxmedia.logging.Logger;


@Repository
public class BoardDaoImpl implements BoardDao{
	
		@Inject
		private SqlSession session;
		
		private static String namespace = "NoticeBoardMapper";

		@Override
		public void create(BoardVo vo) throws Exception {
			// TODO Auto-generated method stub
			System.out.println("BoardCreatDao들어옴");
			session.insert(namespace+".create", vo);
			
		}
		
		@Override
		public BoardVo read(Integer bno) throws Exception {
			// TODO Auto-generated method stub
			System.out.println(bno);
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

		@Override
		public List<BoardVo> listPage(int page) throws Exception {
			// TODO Auto-generated method stub
			
			if(page <=0 ) {
				page = 1;
			}
			
			page = (page - 1) * 10;
			
			
			return session.selectList(namespace + ".listPage", page);
		}

		@Override
		public List<BoardVo> listCriteria(Criteria cri) throws Exception {
			// TODO Auto-generated method stub
			return session.selectList(namespace + ".listCriteria", cri);
		}

		@Override
		public int countPaging(Criteria cri) throws Exception {
			// TODO Auto-generated method stub
			return session.selectOne(namespace + ".countPaging", cri);
		}

		@Override
		public List<BoardVo> listSearch(SearchCriteria cri) throws Exception {
			// TODO Auto-generated method stub
			return session.selectList(namespace + ".listSearch", cri);
		}

		@Override
		public int listSearchCount(SearchCriteria cri) throws Exception {
			// TODO Auto-generated method stub
			return session.selectOne(namespace + ".listSearchCount", cri);
		}

		@Override
		public void updateReplyCnt(Integer bno, int amount) throws Exception {
			// TODO Auto-generated method stub
			Map<String, Object> paramMap = new HashMap<String, Object>();
			
			paramMap.put("bno", bno);
			paramMap.put("amount", amount);
			
			System.out.println("updateReplyCnt.DaoImpl.bno = " + bno);
			session.update(namespace + ".updateReplyCnt", paramMap);
			
		}

		@Override
		public void updateViewCnt(Integer bno) throws Exception {
			// TODO Auto-generated method stub
			
			session.update(namespace + ".updateViewCnt", bno);
		}

		@Override
		public List<Member> memberList() throws Exception {
			// TODO Auto-generated method stub
			return session.selectList(namespace+ ".memberList");
			
		}
		
		
		
		

}
