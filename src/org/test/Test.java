package org.test;

 
import org.dao.impl.BaseDao;
 
import org.model.User;
 
public class Test {
 public static void main(String[]args){
//	  LoginRegistDao l=new LoginRegistDaoImpl();
//	  User u=new User();
//	  u=l.checkInfo("1234@qq.com");
//	  System.out.println(u);
	 
	 BaseDao b=new BaseDao();
	 b.getSession();
	 System.out.println("session");
 }
}
