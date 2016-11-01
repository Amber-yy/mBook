 package org.service;

import org.model.User;

public interface UserService {
	public User checkInfo(String email); 
	public boolean  regist(String email,String password);
}
