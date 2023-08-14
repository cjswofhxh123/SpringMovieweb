package com.kr.movei.member.domain;

import java.sql.Timestamp;

public class Member {
	
		private String memberId;
		private String memberPw;
		private String memberName;
		private int memberAge;
		private String memberGender;
		private String memberEamil;
		private String memberPhone;
		private String memberAddress;
		private String memberHobby;
		private Timestamp memberDate;
		private Timestamp updateDate;
		private String memberYn;
		
		
		
		public Member(String memberId2, String memberPw2, String memberEmail, String memberPhone2, String memberAddr, String memberHobby2) {
			super();
		}

		public Member(String memberId, String memberPw, String memberName, int memberAge, String memberGender,
				String memberEamil, String memberPhone, String memberAddress, String memberHobby) {
			super();
			this.memberId = memberId;
			this.memberPw = memberPw;
			this.memberName = memberName;
			this.memberAge = memberAge;
			this.memberGender = memberGender;
			this.memberEamil = memberEamil;
			this.memberPhone = memberPhone;
			this.memberAddress = memberAddress;
			this.memberHobby = memberHobby;
		}

		
		public String getMemberId() {
			return memberId;
		}

		public void setMemberId(String memberId) {
			this.memberId = memberId;
		}

		public String getMemberPw() {
			return memberPw;
		}

		public void setMemberPw(String memberPw) {
			this.memberPw = memberPw;
		}

		public String getMemberName() {
			return memberName;
		}

		public void setMemberName(String memberName) {
			this.memberName = memberName;
		}

		public int getMemberAge() {
			return memberAge;
		}

		public void setMemberAge(int memberAge) {
			this.memberAge = memberAge;
		}

		public String getMemberGender() {
			return memberGender;
		}

		public void setMemberGender(String memberGender) {
			this.memberGender = memberGender;
		}

		public String getMemberEamil() {
			return memberEamil;
		}

		public void setMemberEamil(String memberEamil) {
			this.memberEamil = memberEamil;
		}

		public String getMemberPhone() {
			return memberPhone;
		}

		public void setMemberPhone(String memberPhone) {
			this.memberPhone = memberPhone;
		}

		public String getMemberAddress() {
			return memberAddress;
		}

		public void setMemberAddress(String memberAddress) {
			this.memberAddress = memberAddress;
		}

		public String getMemberHobby() {
			return memberHobby;
		}

		public void setMemberHobby(String memberHobby) {
			this.memberHobby = memberHobby;
		}

		public Timestamp getMemberDate() {
			return memberDate;
		}

		public void setMemberDate(Timestamp memberDate) {
			this.memberDate = memberDate;
		}

		public Timestamp getUpdateDate() {
			return updateDate;
		}

		public void setUpdateDate(Timestamp updateDate) {
			this.updateDate = updateDate;
		}

		public String getMemberYn() {
			return memberYn;
		}

		public void setMemberYn(String memberYn) {
			this.memberYn = memberYn;
		}

		@Override
		public String toString() {
			return "Member [memberId=" + memberId + ", memberPw=" + memberPw + ", memberName=" + memberName + ", memberAge="
					+ memberAge + ", memberGender=" + memberGender + ", memberEamil=" + memberEamil + ", memberPhone="
					+ memberPhone + ", memberAddress=" + memberAddress + ", memberHobby=" + memberHobby + ", memberDate="
					+ memberDate + ", updateDate=" + updateDate + ", memberYn=" + memberYn + "]";
		}

		public Member(String memberPw, String memberEamil, String memberPhone, String memberAddress, String memberHobby) {
			super();
			this.memberPw = memberPw;
			this.memberEamil = memberEamil;
			this.memberPhone = memberPhone;
			this.memberAddress = memberAddress;
			this.memberHobby = memberHobby;
		}

		
		
		
	}

	
	

