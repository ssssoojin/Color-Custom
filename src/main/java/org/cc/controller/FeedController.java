package org.cc.controller;

import org.cc.service.FeedService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/feed/*")
@AllArgsConstructor
public class FeedController {
	
	private FeedService service;
	

	@GetMapping("/feedClick")
	public void feed(Model model) {
		log.info("------------다 출력------------");
		model.addAttribute("all",service.getAll());
	}

	@GetMapping("/feedDetail")
	//public void feedDetail(@RequestParam("feedNo") Long feedNo,Model model) {
	public void feedDetail(@RequestParam("feedNo") Long feedNo, Model model) {
		log.info(feedNo);
		log.info("/feedDetail");
		model.addAttribute("feed", service.get(feedNo));
	}

	
}