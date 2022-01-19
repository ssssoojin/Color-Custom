package org.cc.service;

import java.util.List;

import org.cc.domain.FeedVO;

public interface FeedService {
	public List<FeedVO> getList();
	
	public List<FeedVO> customImg();
	
	public FeedVO get(Long feedNo);
	
	public List<FeedVO> getAll();
}
