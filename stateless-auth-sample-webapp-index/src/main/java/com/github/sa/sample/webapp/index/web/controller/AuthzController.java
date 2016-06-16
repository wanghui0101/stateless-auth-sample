package com.github.sa.sample.webapp.index.web.controller;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RequestMapping("/authz")
@Controller
public class AuthzController {

	@RequiresPermissions("index:authz")
	@RequestMapping(method = RequestMethod.GET)
	public String index() {
		return "authz";
	}
	
}
