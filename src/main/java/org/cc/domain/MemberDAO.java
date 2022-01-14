package org.cc.domain;

public interface MemberDAO {
	
	//회원가입
	public void register(MemberVO vo);
	//로그인
	public MemberVO login(MemberVO vo);
    
    
	
}
