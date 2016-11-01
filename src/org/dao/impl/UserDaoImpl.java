 package org.dao.impl;
 
import org.dao.UserDao;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.model.User;

@SuppressWarnings("deprecation")
public class UserDaoImpl extends BaseDao implements UserDao {

	public User checkInfo(String email) {
		Session session=null;
		Transaction tx=null;
		User user=null;
		try{
		session=getSession();
		tx=session.beginTransaction();
		Query query=session.createQuery("from user where email=?");
		query.setParameter(0,email);
		query.setMaxResults(1);
		user=(User)query.uniqueResult();
		tx.commit();
		}catch(Exception e){
			if(tx!=null)tx.rollback();
			e.printStackTrace();
			
		}
		return user;
	}

	@SuppressWarnings("null")
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
