package org.dao.impl;
import org.hibernate.*;
public class BaseDao {
	private SessionFactory sessionFactory;
	public  SessionFactory getSessionFatory(){
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
