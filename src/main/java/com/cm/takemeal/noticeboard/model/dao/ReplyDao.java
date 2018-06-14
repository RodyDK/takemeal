package com.cm.takemeal.noticeboard.model.dao;

import java.util.List;

import com.cm.takemeal.noticeboard.model.vo.Criteria;
import com.cm.takemeal.noticeboard.model.vo.ReplyVo;

public interface ReplyDao {

		public List<ReplyVo> list(Integer bno) throws Exception;
		
		public void create(ReplyVo vo)throws Exception;
		
		public void update(ReplyVo vo)throws Exception;
		
		public void delete(Integer rno)throws Exception;
		
		public List<ReplyVo> listPage(Integer bno, Criteria cri)throws Exception;
		
		public int count(Integer bno)throws Exception;
		
		public int getBno(Integer rno)throws Exception;
		
}
