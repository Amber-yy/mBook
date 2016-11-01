package org.dao;

import org.model.User;

public interface UserDao {
	public User checkInfo(String email); 
	public boolean  regist(String email,String password);
}
