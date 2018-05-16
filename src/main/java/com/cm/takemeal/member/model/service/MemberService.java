package com.cm.takemeal.member.model.service;

import java.util.ArrayList;

import com.cm.takemeal.member.exception.LoginFailException;
import com.cm.takemeal.member.model.vo.Member;

public interface MemberService {
	//추상메소드만 맴버로 가질 수 있는 추상클래스의 변형체
	//상수필드도 멤버로 가질 수 있음
	public static final int MID = 1;
	
	/*public abstract */Member selectMember(Member member) throws LoginFailException;
	Member selectMember(String userid);
	ArrayList<Member> selectAll();	
	int insertMember(Member member);
	int updateMember(Member member);
	int deleteMember(String userid);
}
