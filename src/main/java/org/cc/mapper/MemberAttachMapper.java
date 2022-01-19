package org.cc.mapper;

import java.util.List;

import org.cc.domain.MemberAttachVO;

public interface MemberAttachMapper {
	public List<MemberAttachVO> findById(String userId);
}
