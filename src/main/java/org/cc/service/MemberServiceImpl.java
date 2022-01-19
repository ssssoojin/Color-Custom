package org.cc.service;

import java.util.List;

import org.cc.domain.MemberAttachVO;
import org.cc.domain.MemberVO;
import org.cc.mapper.MemberAttachMapper;
import org.cc.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class MemberServiceImpl implements MemberService{
	@Setter(onMethod_=@Autowired) //전체 생성자 초기화하면 사용x
	private MemberMapper mapper;
	
	@Setter(onMethod_=@Autowired)
	private MemberAttachMapper attachMapper;
	
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
	public MemberVO getMemberInfo(String userId) {
		log.info("=============memberinfo===========");
		MemberVO memberInfo = mapper.getMemberInfo(userId);
		log.info("memberInfo : " +memberInfo.getUserBirth());
		return memberInfo;
	}
	
	@Transactional
	@Override
	public void updateInfo(MemberVO vo) {
		 mapper.updateInfo(vo);
		
		// 첨부파일이 없을 경우, 중지
	    if (vo.getAttachImg() == null) {
	        return;
	    }
	    if(vo.getAttachImg() != null && vo.getAttachImg().size() > 0) { 
	    vo.getAttachImg().forEach(attach -> {
	        attach.setUserId(vo.getUserId());
	        attachMapper.insert(attach);
	    });
	    }
	
	}
	public List<MemberAttachVO> getAttachImg(String userId){
		log.info("get Attach list byuserId" + userId);
		return attachMapper.findByUserId(userId);
	}
	

	
	

	

	

}
