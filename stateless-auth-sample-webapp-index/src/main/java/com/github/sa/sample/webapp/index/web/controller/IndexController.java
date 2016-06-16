package com.github.sa.sample.webapp.index.web.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RequestMapping("/")
@Controller
public class IndexController {
	
	@RequestMapping(method = RequestMethod.GET)
	public String index(HttpServletRequest request, Model model) {
		return "index";
	}
	
}
