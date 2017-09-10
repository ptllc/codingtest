package com.srb.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.srb.model.User;

@Service
public class UserServiceImpl implements UserService {
	Logger logger = LoggerFactory.getLogger(UserServiceImpl.class);
	
	@Autowired
	User userInSession;
	
	@Override
	public User saveUserInSession(User user) {
		userInSession.setAnswer1(user.getAnswer1());
		userInSession.setAnswer2(user.getAnswer1());
		userInSession.setAnswer3(user.getAnswer1());
		userInSession.setQuestion1(user.getQuestion1());
		userInSession.setQuestion2(user.getQuestion2());
		userInSession.setQuestion3(user.getQuestion3());
		userInSession.setUsername(user.getUsername());
		userInSession.setBirthDate(user.getBirthDate());
		return userInSession;
	}

	@Override
	public User getUserFromSession() {
		return userInSession;
	}

}
