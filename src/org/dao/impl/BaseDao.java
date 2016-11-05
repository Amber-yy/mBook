package org.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class BaseDao {

	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {

		this.sessionFactory = sessionFactory;

	}

	/**
	 * 获取session
	 * 
	 * @return
	 */
	public Session getSession() {
		Configuration configuration = new Configuration().configure();
		this.sessionFactory = configuration.buildSessionFactory();
		Session session = sessionFactory.openSession();
		return session;

	}

}
