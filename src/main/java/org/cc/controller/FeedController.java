package org.cc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/feed/*")
public class FeedController {
	
	@GetMapping("/feedMain")
	public void feedMain() {
		log.info("feedMain");
	}
	
	@GetMapping("/feedClick")
	public void feedClick() {
		log.info("feedClick");
	}
	
	@GetMapping("/feedDetail")
	public void feedDetail() {
		log.info("feedDetail");
	}
	
	@GetMapping("/feedClickTest")
	public void feedClickTest() {
		log.info("feedClickTest");
	}
	
	
}