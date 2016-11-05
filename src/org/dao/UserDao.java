package org.dao;

import java.util.List;

import org.model.User;

public interface UserDao {

	 List <User> findUserByEmail(String email);
	
	void addUser(User user);

	int deleteUserByEmail(String email);

	int updatePassword(User user);
}
