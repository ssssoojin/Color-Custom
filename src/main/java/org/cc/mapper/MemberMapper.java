package org.cc.mapper;

import java.util.List;

import org.cc.domain.MemberVO;

public interface MemberMapper {
	//회원가입
	public void register(MemberVO vo);
	// 로그인
    public MemberVO login(MemberVO vo);
    // 아이디 중복 검사
 	public int idCheck(String userId);
 	// 회원정보
	public List<MemberVO> getMemberInfo(String userId);
}
