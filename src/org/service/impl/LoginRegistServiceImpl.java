package org.service.impl;

import org.dao.LoginRegistDao;
import org.model.User;
import org.service.LoginRegistService;
 

public class LoginRegistServiceImpl implements  LoginRegistService {

	private LoginRegistDao  loginRegistDao;
	
	@Override
	public User checkInfo(String email) {
		 return loginRegistDao.checkInfo(email);
	}

	@Override
	public boolean regist(String email, String password) {
		 return loginRegistDao.regist(email, password);
	}
	
	public LoginRegistDao getLoginRegistDao() {
		return loginRegistDao;
	}

	public void setLoginRegistDao(LoginRegistDao loginRegistDao) {
		this.loginRegistDao = loginRegistDao;
	}

   
}
