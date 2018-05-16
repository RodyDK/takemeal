package com.cm.takemeal.member.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cm.takemeal.member.exception.LoginFailException;
import com.cm.takemeal.member.model.dao.MemberDao;
import com.cm.takemeal.member.model.vo.Member;

@Service("memberService")
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberDao memberDao;
	
	@Override
	public Member selectMember(Member member) 
			throws LoginFailException{
		// 로그인 처리용
		return memberDao.selectMember(member);
	}
	
	
	@Override
	public ArrayList<Member> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public int insertMember(Member member) {
		// TODO Auto-generated method stub
		return 0;
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

	@Override
	public Member selectMember(String userid) {
		//회원조회용
		return memberDao.selectMember(userid);
	}

	
}
