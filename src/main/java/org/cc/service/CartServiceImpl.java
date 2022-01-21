package org.cc.service;

import org.cc.domain.CartVO;
import org.cc.mapper.CartMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;

@Service
public class CartServiceImpl implements CartService {
	@Setter(onMethod_ = @Autowired)
	private CartMapper mapper;
	
	@Override
	public void addCart(CartVO vo) {
		mapper.addCart(vo);
	}

}
