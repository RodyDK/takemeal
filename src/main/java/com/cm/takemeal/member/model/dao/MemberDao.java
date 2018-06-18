package com.cm.takemeal.member.model.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;

import com.cm.takemeal.member.exception.LoginFailException;
import com.cm.takemeal.member.model.vo.Member;


@Repository("memberDao")
public class MemberDao {
	
	//마이바티스 연결과 매퍼 쿼리문 실행을 위한 클래스
    @Autowired
    private SqlSession sqlSession;
	
	@Autowired
	private BCryptPasswordEncoder pwdEncoder;

	//로그인용

	public Member selectMember(Map<String, Object> paramMap) 
			throws LoginFailException{
		//로그인 비교시 사용자 아이디만으로 조회되게 함
		Member resultMember = sqlSession.selectOne("loginMember", paramMap);
		//조회된 객체가 가진 암호화된 패스워드와 전달온 객체의 패스워드 비교함

		if(pwdEncoder.matches(paramMap.get("password").toString(), resultMember.getPassword()))
			return resultMember;
		else
			//return null;
			throw new LoginFailException("로그인 실패!");
	}

    public int insertMember(Map<String, Object> paramMap) {
        return sqlSession.insert("insertMember", paramMap);
    }

    public int checkUserid(Map<String, Object> paramMap) {
        return sqlSession.selectOne("checkMember", paramMap);
    }
    
    



}
