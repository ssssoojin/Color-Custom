package org.cc.controller;

import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.cc.domain.MemberVO;
import org.cc.service.MemberService;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/member")
@AllArgsConstructor
public class MemberController {
	private MemberService service;
    private JavaMailSender mailSender;
	
	@GetMapping("/login")
	public void login() {
		log.info("login 진입");
	}
	
	@PostMapping("/login")
	public String login(MemberVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception{
		log.info("====================로그인=====================");
		
		HttpSession session = req.getSession();//세션 초기화
		MemberVO login = service.login(vo);
		
		if(login == null) { // 일치하지 않는 아이디, 비밀번호 입력 경우
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
			return "redirect:/member/login";
			
		}else {  // 일치하는 아이디, 비밀번호 경우 (로그인 성공)
			session.setAttribute("member", login);
		}
		
		return "redirect:/member/main";
	}
	@GetMapping("/main") 
	 public void viewMain(){
	  log.info("main");
	  }
	
	@GetMapping("/logout")
	public String logout(HttpSession session) throws Exception{
		
		session.invalidate();
		
		return "redirect:/";
	}
	
	//회원가입
	@PostMapping("/join")
	public String join(MemberVO vo) throws Exception{
		log.info("===================회원가입====================");
			// 회원가입 서비스 실행
			service.register(vo);
			
			log.info("join Service 성공");
			log.info("생일 : "+ vo.getUserBirth());
			
			return "redirect:/member/login";
			
		}
	@GetMapping("/join")
	public void join() {
		log.info("join 진입");
	}
	// 아이디 중복 검사
	@PostMapping("/joinIdChk")
	@ResponseBody
	public String joinIdChk(String userId) throws Exception{
		log.info("joinIdChk() 진입");
		int result = service.idCheck(userId);
		
		log.info("결과값 = " + result);
		if(result != 0) {
			return "fail";	// 중복 아이디가 존재
		} else {
			return "success";	// 중복 아이디 x
		}	
	}

    /* 메인페이지 로그아웃 */
    @GetMapping("logout.do")
    public String logout(HttpServletRequest request) throws Exception{
    	log.info("logout() 진입");
    	HttpSession session = request.getSession();
    	 session.invalidate();
         return "redirect:/member/main";   
    }
 
	 /* 이메일 인증 */
    @GetMapping("/mailCheck")
    @ResponseBody
    public String mailCheck(String email) throws Exception{
        
        /* 뷰(View)로부터 넘어온 데이터 확인 */
        log.info("이메일 데이터 전송 확인");
        log.info("인증번호 : " + email);
        
        /* 인증번호(난수) 생성 */
        Random random = new Random();
        int checkNum = random.nextInt(888888) + 111111; // 111111 ~ 999999
        log.info("인증번호 " + checkNum);
        
        /* 이메일 보내기 */
        String setFrom = "colorcustom@naver.com";
        String toMail = email;
        String title = "회원가입 인증 이메일 입니다.";
        String content = 
                "홈페이지를 방문해주셔서 감사합니다." +
                "<br><br>" + 
                "인증 번호는 " + checkNum + "입니다." + 
                "<br>" + 
                "해당 인증번호를 인증번호 확인란에 기입하여 주세요.";
	     try {
	            
	            MimeMessage message = mailSender.createMimeMessage();
	            MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
	            helper.setFrom(setFrom);
	            helper.setTo(toMail);
	            helper.setSubject(title);
	            helper.setText(content,true);
	            mailSender.send(message);
	            
	        }catch(Exception e) {
	            e.printStackTrace();
	        }
	     String num = Integer.toString(checkNum);
	     return num;
    }

}
