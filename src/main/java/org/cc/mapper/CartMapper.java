package org.cc.mapper;

import java.util.List;

import org.cc.domain.CartVO;

public interface CartMapper {
	public List<CartVO> getList(String userId);
	public void cartDelete(int cartNo);
	public CartVO getListId(int cartNo);
}
