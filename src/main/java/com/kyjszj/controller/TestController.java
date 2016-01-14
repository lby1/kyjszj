package com.kyjszj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/a")
public class TestController {

	@RequestMapping("/b")
	public  String test(){
		System.out.println("test");
		return null;
	}
}
