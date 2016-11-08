 package org.service.impl;


import java.util.List;
import org.dao.UserDao;
import org.model.User;
import org.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
 
public class UserServiceImpl implements  UserService {
	 
	private UserDao userDao;
	 
	public List<User> findUserByEmail(String email) {
		  
		 return userDao.findUserByEmail(email);
	}
	
	public void addUser(User user) {
		 userDao.addUser(user);
		
	}
	
	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	 
	
 

}
