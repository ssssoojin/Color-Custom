package org.cc.service;

import org.cc.domain.MemberVO;

public interface MemberService {
	public MemberVO register(MemberVO vo);
	public MemberVO login(MemberVO vo);
	
	
}
