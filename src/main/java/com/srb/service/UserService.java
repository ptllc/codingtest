package com.srb.service;

import com.srb.model.User;

public interface UserService {

	User saveUserInSession(User user);
	User getUserFromSession();
	
}
