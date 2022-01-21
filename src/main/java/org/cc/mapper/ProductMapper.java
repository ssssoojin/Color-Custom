package org.cc.mapper;

import org.cc.domain.ProductVO;

public interface ProductMapper {
	public ProductVO getProduct(int itemNo); // itemNo로 itemName, price, image를 가져오기 위해
}
