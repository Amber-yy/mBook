package org.dao.impl;

 
import java.util.List;

import org.dao.UserDao;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.model.User;

public class UserDaoImpl extends BaseDao implements UserDao {

	/**
	 * 根据email查询用户
	 */
	@SuppressWarnings("deprecation")
	@Override
	public List<User> findUserByEmail(String email) {

		Session session = getSession();
		String sql = "select * from user where email=?";
		Query<User> query = session.createNativeQuery(sql, User.class);
		query.setParameter(1, email);
		 List<User> user = query.getResultList();
		 session.close();
		  return user;
	}

	/**
	 * 添加用户
	 */
	@Override
	public void addUser(User user) {

		Session session = getSession();
		Transaction transaction = session.beginTransaction();
		session.save(user);
		transaction.commit();
		session.close();
	}

	/**
	 * 修改用户
	 */
	@SuppressWarnings("unchecked")
	@Override
	public int updatePassword(User user) {

		Session session = getSession();
		Transaction transaction = session.beginTransaction();
		String sql = "update user set userName=?,password=?, where email=?";
		Query<User> query = session.createNativeQuery(sql);
		query.setParameter(1, user.getUserName());
		query.setParameter(2, user.getPassword());
		query.setParameter(3, user.getEmail());
		int i = query.executeUpdate();
		transaction.commit();
		session.close();
		return i;

	}

	/**
	 * 删除用户
	 */
	@SuppressWarnings("unchecked")
	@Override
	public int deleteUserByEmail(String email) {

		Session session = getSession();
		Transaction transaction = session.beginTransaction();
		String sql = "delete from user where email=?";
		Query<User> query = session.createNativeQuery(sql);
		query.setParameter(1, email);
		int i = query.executeUpdate();
		transaction.commit();
		session.close();
		return i;

	}

}
