package com.cm.takemeal.member.model.service;

import java.util.ArrayList;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cm.takemeal.member.exception.LoginFailException;
import com.cm.takemeal.member.model.dao.MemberDao;
import com.cm.takemeal.member.model.vo.Member;
import com.cm.takemeal.recipe.model.vo.Recipe;





@Service("memberService")
public class MemberServiceImpl implements MemberService{

    @Resource(name="memberDao")
    private MemberDao memberDao;
    
    
    @Override
	public Member selectMember(Map<String, Object> paramMap) 
			throws LoginFailException{
		// 로그인 처리용
		return memberDao.selectMember(paramMap);
	}
	
	public int insertMember(Map<String, Object> paramMap) {
		// TODO Auto-generated method stub
		return memberDao.insertMember(paramMap);
	}

    
	@Override
	public ArrayList<Member> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}




	@Override
	public int updateMember(Member member) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteMember(String userid) {
		// TODO Auto-generated method stub
		return 0;
	}



	
}
