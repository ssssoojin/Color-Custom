package org.cc.service;

import org.cc.domain.ProductVO;
import org.cc.mapper.ProductMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class ProductServiceImpl implements ProductService {
	@Setter(onMethod_ = @Autowired)
	private ProductMapper mapper;
		
	@Override
	public ProductVO getProduct(int itemNo) {
		return mapper.getProduct(itemNo);
	}

}
