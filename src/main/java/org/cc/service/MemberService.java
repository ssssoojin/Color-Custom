package org.cc.service;

import java.util.List;

import org.cc.domain.MemberAttachVO;
import org.cc.domain.MemberVO;

public interface MemberService {
	//회원가입
	public MemberVO register(MemberVO vo);
	//로그인
	public MemberVO login(MemberVO vo);
	public int idCheck(String userId);
	//회원 정보
	public MemberVO getMemberInfo(String userId);
	public boolean updateInfo(MemberVO vo);
	
	public List<MemberAttachVO> getAttachList(String userId);
}
