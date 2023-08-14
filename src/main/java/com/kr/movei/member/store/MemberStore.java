package com.kr.movei.member.store;

import org.apache.ibatis.session.SqlSession;

import com.kr.movei.member.domain.Member;


public interface MemberStore {
	public int insertMember(SqlSession sqlSession,Member member);

	public Member selectMemberLogin(SqlSession sqlSession, Member member);

	public Member selectOneById(SqlSession sqlSession, Member member);

	public Member removeMember(SqlSession sqlSession, Member member);
}
