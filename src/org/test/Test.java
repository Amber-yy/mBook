 package org.test;

import java.util.List;

import org.model.Book;
import org.service.BookService;
import org.service.impl.BookServiceImpl;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class Test {

 public static void main(String[]args){
	 
	  //service注入测试
	 ApplicationContext context=new FileSystemXmlApplicationContext("src/applicationContext.xml");
	 BookService bService=(BookServiceImpl)context.getBean("bookService");
	  List<Book> book= bService.findBookByLike("朝花夕拾");
	  System.out.println();
 }
  
}