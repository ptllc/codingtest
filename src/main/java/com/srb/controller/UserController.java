package com.srb.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.srb.model.User;
import com.srb.service.UserService;

@Controller
public class UserController {
	Logger logger = LoggerFactory.getLogger(UserController.class);

	@Autowired
	UserService userService;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String init() {
		return "home";
	}
	
	@RequestMapping(value="/signup1", method=RequestMethod.GET)
	public String signup1() {
		return "signup1";
	}
	
	@RequestMapping(value="/saveSignup1", method=RequestMethod.POST)
	public String saveSignup1(User user) {
		userService.saveUserInSession(user);
		return "signup2";
	}
	
	//@RequestMapping(value="/signup2", method=RequestMethod.GET)
	//public String signup2() {
		//return "signup2";
	//}

	@RequestMapping(value="/saveSignup2", method=RequestMethod.POST)
	public String saveSignup2(User user) {
		userService.saveUserInSession(user);
		return "main";
	}

}
