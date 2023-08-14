package com.kr.movei.member.serviceimpl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kr.movei.member.domain.Member;
import com.kr.movei.member.service.MemberService;
import com.kr.movei.member.store.MemberStore;

@Service
public class MemberServiceimpl implements MemberService {
	
	@Autowired
	private MemberStore mStore;
	
	@Autowired
	private SqlSession sqlSession;
	
	
	
	@Override
	public int insertMember(Member member) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Member selectCheckLogin(Member member) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateMember(Member member) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Member selectOneByEmail(String memberEmail) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int deleteMember(String memberEmail) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Member showOneById(String memberId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int removeMember(String memberId) {
		// TODO Auto-generated method stub
		return 0;
	}

}
