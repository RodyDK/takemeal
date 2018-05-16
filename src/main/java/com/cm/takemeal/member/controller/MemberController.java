package com.cm.takemeal.member.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.cm.takemeal.member.exception.LoginFailException;
import com.cm.takemeal.member.model.service.MemberService;
import com.cm.takemeal.member.model.vo.Member;

@Controller
@SessionAttributes("loginUser")
public class MemberController {
	
	private static final Logger logger = 
			LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private BCryptPasswordEncoder pwdEncoder;
	

	@RequestMapping(value="login.do", method=RequestMethod.POST)
	//@ModelAttribute("loginUser")
	public String loginCheck(Member member, 
			Model model, /*HttpSession session,*/
			SessionStatus status) {
		logger.info("loginCheck() run : " + member); 		
		
		//스프링에서는 메소드의 매개변수로 클래스명 레퍼런스변수 선언하면
		//자동으로 해당 클래스에 대한 객체 생성이 됨 (new 생성자())
		
		//컨트롤러의 메소드 매개변수로 선언된 vo 객체를
		//command 객체라고 함		
		//System.out.println("전송와서 저장된 값 확인 : " + member);
		try {
			Member returnMember = memberService.selectMember(member);
			System.out.println("returnMember : " + returnMember);
			
			//if(returnMember != null) {
			model.addAttribute("loginUser", returnMember);
			//session.setAttribute("loginUser", returnMember);
			status.setComplete();
			
			/*	
				return "home";
			}else {
				return "common/error";
			}*/
		}catch(LoginFailException e) {
			model.addAttribute("message", e.getMessage());
			return "common/error";
		}
		
		return "home";
	}
	
	@RequestMapping("test.do")
	/*public String testMethod(HttpServletRequest request, 
			HttpServletResponse response) */
	public String testMethod(
			@RequestParam(value="userid") String userid,
			@RequestParam(value="userpwd") String userpwd){
		/*String userid = request.getParameter("userid");
		String userpwd = request.getParameter("userpwd");*/
		
		Member member = new Member();
		member.setUserid(userid);
		member.setUserpwd(userpwd);
		
		System.out.println("member : " + member);
		return "home";
	}
	
	@RequestMapping("moveEnroll.do")
	public String moveEnrollPage() {
		return "member/enroll";
	}
	
	@RequestMapping("myinfo.do")
	public ModelAndView myInfo(
			@RequestParam(value="userid") String userid, 
			ModelAndView mv) {
		/*ModelAndView mv = new ModelAndView();*/
		
		mv.addObject("member", 
				memberService.selectMember(userid));
		mv.setViewName("member/myinfo");
		return mv;
	}
	
	@RequestMapping("logout.do")
	//public String logout(HttpSession session) {
	public String logout(SessionStatus status) {
		logger.info("logout() run : " + status.isComplete()); 
		//session.invalidate();
		status.setComplete();
		
		return "home";
	}
	
	@RequestMapping("testView.do")
	public String moveTestView() {
		return "test/testCryto";
	}
	
	
	@RequestMapping(value="bcryp.do", method=RequestMethod.POST)
	public String testBcryptoPassword(Member member) {
		
		System.out.println("암호 : " + member.getUserpwd());
		System.out.println("암호화된 패스워드 : " 
				+ pwdEncoder.encode(member.getUserpwd()));
		
		//member.setUserpwd(pwdEncoder.encode(member.getUserpwd()));
		
		//matches(원래문자열, 암호화된문자열)
		System.out.println("비교결과 : " 
		+ pwdEncoder.matches(member.getUserpwd(), pwdEncoder.encode("123")));
		
		return "test/testCryto";
	}
}










