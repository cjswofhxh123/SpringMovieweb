package com.kr.movei.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kr.movei.member.domain.Member;
import com.kr.movei.member.service.MemberService;


@Controller
public class MemberContorller {	
	
	@Autowired
	private MemberService service;
	
	@RequestMapping(value="/member/terms.do", method=RequestMethod.GET)
	public void showRegisterForm() {
		return "member/register";
	}
	@RequestMapping(value = "/member/register.do", method = RequestMethod.POST)
	public String registerMember(HttpServletRequest request, HttpServletResponse response,
			@RequestParam("memberId") String memberId, @RequestParam("memberPw") String memberPw,
			@RequestParam("memberName") String memberName, @RequestParam("memberAge") int memberAge,
			@RequestParam("memberGender") String memberGender, @RequestParam("memberEamil") String memberEamil,
			@RequestParam("memberPhone") String memberPhone, @RequestParam("memberAddress") String memberAddress,
			@RequestParam("memberHobby") String memberHobby, Model model) {
		Member member = new Member(memberId, memberPw, memberName, memberAge, memberGender, memberEamil, memberPhone,
				memberAddress, memberHobby);
//			MemberServiceimpl sevice;
		try {
			int result = service.registerMember(member);
			if (result > 0) {
				// 성공
				return "redirect:/index.jsp";
			} else {
				// 실패
				model.addAttribute("msg", "회원가입이 완료되지 안았습니다.");
				return "common/errorPage";

			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace(); // 콘솔창에 빨간색을 뜨게함
			model.addAttribute("msg", e.getMessage());
			return "common/errorPage"; // 콘솔창에 뜨는 메시지를 웹페이지로 뜨게함

		}
		// System.out.println(member.toString());
		// String memberId= request.getParameter("memberId");
	}

	@RequestMapping(value = "/member/login.do", method = RequestMethod.POST)
	public String memberLogin(HttpServletRequest request, @RequestParam("memberId") String memberId,
			@RequestParam("memberPw") String memberPw, Model model) {
		// SELECT * FROM MEMBER_TBL WHERE MEMBER_ID= ? AND MEMBER_PW=?
		try {
			Member member = new Member();
			member.setMemberId(memberId);
			member.setMemberPw(memberPw);
			Member mOne = service.memberLoginCheck(member);
			if (mOne != null) {
				// 성공하면 로그인 페이지 이동
				// response.sendRedirect("/index.jsp");
				// System.out.println(mOne.toString());
				// model.addAttribute("member",mOne);
//			HttpSession session = request.getSession();
//			session.setAttribute("memberId", mOne.getMemberId());
//			session.setAttribute("memberName", mOne.getMemberName());
				model.addAttribute("memberId", mOne.getMemberId());
				model.addAttribute("memberName", mOne.getMemberName());
				return "redirect:/index.jsp";

			} else {
				// 실패하면 실패메시지 출력
				model.addAttribute("msg", "데이터가 조회되지 않았습니다");
				return "common/errorPage";
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace(); // 콘솔창에 빨간색을 뜨게함
			model.addAttribute("msg", e.getMessage());
			return "common/errorPage"; // 콘솔창에 뜨는 메시지를 웹페이지로 뜨게함
		}
	}

	@RequestMapping(value = "/member/logout.do", method = RequestMethod.GET)
	public String memberLogout(
			// SessionStatue는 스프링의 어노테이션(@SessionAttributes)로 지원되는 세션을 만료시킨다.

			HttpSession sessionPrev, SessionStatus session, Model model) {
		if (session != null) {
//			session.invalidate();
			session.setComplete();
			// 세션 만료 유효성 체크
			return "redirect:/index.jsp";
		} else {
			model.addAttribute("msg", "로그아웃을 완료하지 못햇습니다.");
			return "common/errorPage";
		}
	}

	@RequestMapping(value = "/member/mypage.do", method = RequestMethod.GET)
	public String memberMypage(HttpSession sessionPrev, SessionStatus session, Model model) {
		if (session != null) {
			session.setComplete();

			return "redirect:/index.jsp";
		} else {
			model.addAttribute("msg", "마이페이지를 찾지 못햇습니다.");
			return "common/errorpage";
		}
	}

	@RequestMapping(value = "/member/mypage", method = RequestMethod.GET)
	public String showDetailMember(HttpSession sessionPrev, 
			SessionStatus session,
			@RequestParam("memberId") 
			String memberId, Model model) {

		try {
			Member member = service.showOneById(memberId);
			if (member != null) {
				model.addAttribute("member", member);
				return "member/mypage";
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			model.addAttribute("msd", "데이터 조회에 실패햇스빈다.");
			return "common/errorPage";
		}

	}

	@RequestMapping(value = "/member/update.do", method = RequestMethod.GET)
	public String modifyMember(@RequestParam("memberId") String memberId, 
			@RequestParam("memberPw") String memberPw,
			@RequestParam("memberEmail") String memberEmail, 
			@RequestParam("memberPhone") String memberPhone,
			@RequestParam("memberAddr") String memberAddr, 
			@RequestParam("memberHobby") String memberHobby,
			RedirectAttributes redirect, Model model) {
		try {
			Member member = new Member(
					memberId, 
					memberPw, 
					memberEmail, 
					memberPhone, 
					memberAddr,
					memberHobby);
			int result = service.updateMember(member);
			if (result > 0) {

				redirect.addAttribute("memberId", memberId);
				return "redirect:/member/mypage.do";
			} else {
				// 실패하면 에러페이ㅣㅈ로 이동
				model.addAttribute("msg", "정보수정이 완료되지 않았습니다.");
				return "common/errorPage";
			}

		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("msg", e.getMessage());
			return "common/errorPage";
		}

	}

	@RequestMapping(value = "/member/delete.do", method = RequestMethod.GET)
	public String removeMember(@RequestParam("memberId") String memberId, Model model) {
		try {
			int result = service.removeMember(memberId);
			if (result > 0) {

				return "redirect:/member/logout.do";
			} else {

				model.addAttribute("msg", "회원 탈퇴가 완료되지 않았습니다.");
				return "common/errorPage";
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			model.addAttribute("msg", e.getMessage());
			return "common/errorPage";
		}
	}

	@RequestMapping(value = "/member/update.do", method = RequestMethod.GET)
	public String showModifyView(@RequestParam("memberId") String memberId, Model model) {
		try {
			Member member = service.showOneById(memberId);
			if (member != null) {
				model.addAttribute("member", member);
				return "member/modify";
			} else {

				model.addAttribute("msg", "데이터 조회가 실패햇습니다.");
				return "common/errorPage";
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			model.addAttribute("msg", e.getMessage());
			return "common/errorPage";
		}
	}

}