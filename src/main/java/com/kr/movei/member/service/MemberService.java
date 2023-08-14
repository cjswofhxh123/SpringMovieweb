package com.kr.movei.member.service;

import com.kr.movei.member.domain.Member;



public interface MemberService {
	
	public int insertMember(Member member);
	
	public Member selectCheckLogin(Member member);
	
	public int updateMember(Member member);
	
	public Member selectOneByEmail(String memberEmail);

	public int deleteMember(String memberEmail);

	public Member showOneById(String memberId);

	public int removeMember(String memberId);
	
	
}
