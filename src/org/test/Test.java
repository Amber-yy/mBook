 package org.test;

import java.util.List;

import org.dao.UserDao;
import org.dao.impl.UserDaoImpl;
import org.model.User;
import org.service.UserService;
import org.service.impl.UserServiceImpl;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

import com.sun.xml.internal.ws.wsdl.writer.document.Service;

 
public class Test {
	
 
 public static void main(String[]args){
	 
	 //持久层测试
//	 UserDao uDao=new UserDaoImpl();
//	 System.out.println(uDao.findUserByEmail("1234@qq.com"));
	
	  //service注入测试
	 ApplicationContext context=new FileSystemXmlApplicationContext("src/applicationContext.xml");
	 UserService uService=(UserServiceImpl)context.getBean("userService");
	 //List<User> user= uService.findUserByEmail("1234@qq.com");
	// System.out.println(user.get(0).getPassword());
 }
  
}