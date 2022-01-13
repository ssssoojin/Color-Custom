package org.cc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
public class CartController {
	@GetMapping("/cart")
	public void Cart() {
		
	}
	@GetMapping("/purchase")
	public void Purchase() {
		log.info("purchase");
	}
	@GetMapping("/confirmation")
	public void Confirmation() {
		log.info("confirmation");
	}
	@GetMapping("/test")
	public void Test() {
		log.info("test");
	}
	@GetMapping("/myPage")
	public void MyPage() {
		log.info("myPage");
	}
	
	@GetMapping("/boardWrite")
	public void BoardWrite() {
		log.info("boardWrite");
	}
}
