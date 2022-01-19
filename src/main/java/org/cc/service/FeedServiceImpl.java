package org.cc.service;

import java.util.List;

import org.cc.domain.FeedVO;
import org.cc.mapper.FeedMapper;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class FeedServiceImpl implements FeedService {
	private FeedMapper mapper;
	
	@Override
	public List<FeedVO> getList() {
		log.info("feed 게시글 불러오기~~");
		return mapper.getList();
	}

	@Override
	public FeedVO get(Long feedNo) {
		log.info("feed 게시글 하나만 출력하기~");
		return mapper.get(feedNo);
	}

	@Override
	public List<FeedVO> customImg() {
		log.info("feed게시판에 사진만 출력");
		return mapper.customImg();
	}

	@Override
	public List<FeedVO> getAll() {
		log.info("---------다 출력------------");
		return mapper.getAll();
	}

}
