package com.cm.takemeal.notice.model.dao;

import java.util.List;
import java.util.Map;
 
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cm.takemeal.notice.model.vo.Notice;
import com.cm.takemeal.notice.model.vo.NoticeRegistVO;
import com.cm.takemeal.notice.model.dao.NoticeDao;

@Repository("noticeDao")
public class NoticeDaoImpl implements NoticeDao{

    @Autowired
    private SqlSession sqlSession;
    
	private static String namespace = "com.cm.takemeal.notice.model.dao.NoticeDao";
  
    public void setSqlSession(SqlSession sqlSession){
        this.sqlSession = sqlSession;
    }
 
    @Override
    public int getContentCnt(Map<String, Object> paramMap) {

        return sqlSession.selectOne("selectNoticeContentCnt", paramMap);
    }
     
    @Override
    public List<Notice> getContentList(Map<String, Object> paramMap) {
        return sqlSession.selectList("selectNoticeContent", paramMap);
    }
 
    @Override
    public Notice getContentView(Map<String, Object> paramMap) {
        return sqlSession.selectOne("selectNoticeContentView", paramMap);
    }

	@Override
	public void create(NoticeRegistVO nc) throws Exception {
		// TODO Auto-generated method stub
		
		sqlSession.insert(namespace+".create", nc);
		System.out.println("nc: "+ nc);
	}
 
    
    
  
    
}