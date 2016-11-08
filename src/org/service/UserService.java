 package org.service;

import java.util.List;

import org.model.User;

public interface UserService {
	public  List<User> findUserByEmail(String email); 
	public void addUser(User user); 
}
