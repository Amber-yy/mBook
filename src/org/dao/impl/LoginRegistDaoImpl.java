package org.dao.impl;

import org.dao.LoginRegistDao;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.model.User;

@SuppressWarnings("deprecation")
public   class LoginRegistDaoImpl extends BaseDao implements LoginRegistDao {

	 
	 
	public User checkInfo(String email) {
		Session session=null;
		Transaction tx=null;
		User user=null;
		session=getSession();
		tx=session.beginTransaction();
		@SuppressWarnings("rawtypes")
		Query query=session.createQuery("from user where email=?");
		query.setParameter(0,email);
		query.setMaxResults(1);
		user=(User)query.uniqueResult();
		tx.commit();
		return user;
	}

	@SuppressWarnings("null")
	@Override
	public boolean regist(String email, String password) {
		 
			Session session=null;
			Transaction tx=null;
			User user=new User();
			user.setEmail(email);
			user.setPassword(password);
			user.setIsAdmin(0);
			session.save(user);
			tx.commit();	
			return true;	 
	}	
}
