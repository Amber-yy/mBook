 package org.service.impl;

 
import org.dao.UserDao;
import org.dao.impl.UserDaoImpl;
import org.model.User;
import org.service.UserService;
 

public class UserServiceImpl implements  UserService {
	
	private UserDao userDao;
	@Override
	public User checkInfo(String email) {
		 return userDao.checkInfo(email);
	}

	@Override
	public boolean regist(String email, String password) {
		 return userDao.regist(email, password);
	}
	
	//get/set·½·¨
	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

   
}
