package org.dao.impl;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
public class BaseDao {
	private SessionFactory sessionFactory;
	SessionFactory getSessionFatory(){
		return sessionFactory;
	}
	 public void setSessionFactory(SessionFactory sessionFactory){
		 this.sessionFactory=sessionFactory;
	 }
	 public Session getSession(){
		 Session session=sessionFactory.openSession();
		 return session;
	 }
}
