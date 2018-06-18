package com.cm.takemeal.member.model.service;

import java.util.ArrayList;
import java.util.Map;

import com.cm.takemeal.member.exception.LoginFailException;
import com.cm.takemeal.member.model.vo.Member;

public interface MemberService {
	//추상메소드만 맴버로 가질 수 있는 추상클래스의 변형체
	//상수필드도 멤버로 가질 수 있음
	public static final int MID = 1;
	
	/*public abstract */Member selectMember(Map<String, Object> paramMap) throws LoginFailException;

	ArrayList<Member> selectAll();	
	
	int checkUserid(Map<String, Object> paramMap);
	
	int updateMember(Member member);
	int deleteMember(String userid);

	int insertMember(Map<String, Object> paramMap);
}
