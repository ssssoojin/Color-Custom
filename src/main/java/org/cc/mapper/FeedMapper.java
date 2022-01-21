package org.cc.mapper;

import java.util.List;

import org.cc.domain.FeedVO;

public interface FeedMapper {
	//@Select("select * from feed")
	public List<FeedVO> getList();

	public List<FeedVO> customImg();
	public FeedVO ClickImg();
	
	public FeedVO get(long l);
	
	public List<FeedVO> getAll();
	
	public int insert(FeedVO feed);
}
