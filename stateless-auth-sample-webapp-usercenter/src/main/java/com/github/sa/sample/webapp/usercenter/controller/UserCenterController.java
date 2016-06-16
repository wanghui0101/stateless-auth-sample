package com.github.sa.sample.webapp.usercenter.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RequestMapping("/usercenter")
@Controller
public class UserCenterController {

	@RequestMapping(method = RequestMethod.GET)
	public String index() {
		return "usercenter";
	}
}
