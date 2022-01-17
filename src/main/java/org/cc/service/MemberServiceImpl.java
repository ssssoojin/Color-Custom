package org.cc.service;

import java.util.List;

import org.cc.domain.MemberVO;
import org.cc.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class MemberServiceImpl implements MemberService{
	@Setter(onMethod=@__({@Autowired})) //전체 생성자 초기화하면 사용x
	private MemberMapper mapper;
	
	public MemberVO register(MemberVO vo) {
		mapper.register(vo);
		return null;
	}

	@Override
	public MemberVO login(MemberVO vo) {
		return mapper.login(vo);
	}

	@Override
	public int idCheck(String userId) {
		return mapper.idCheck(userId);
	}
	@Override
	public List<MemberVO> getMemberInfo(String userId) {
		List<MemberVO> memberInfo = mapper.getMemberInfo(userId);
		return memberInfo;
	}
}
