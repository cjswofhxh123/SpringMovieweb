package com.kr.movei.member.storeimpl;

import org.apache.ibatis.session.SqlSession;

import com.kr.movei.member.domain.Member;
import com.kr.movei.member.store.MemberStore;

public class MemberSroreimpl implements MemberStore {

	@Override
	public int insertMember(SqlSession sqlSession, Member member) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Member selectMemberLogin(SqlSession sqlSession, Member member) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Member selectOneById(SqlSession sqlSession, Member member) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Member removeMember(SqlSession sqlSession, Member member) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}
