package com.sist.anno;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Component;

@Component("main")
public class MainClass2 {
	@Autowired
	//특정 객체를 지정
	@Qualifier("mysql")
	//@Autowired+@Qualifier("mysql") = @Resource(name="mysql")
	private MyDAO dao;
	public static void main(String[] args) {
		
		ApplicationContext app=
				new ClassPathXmlApplicationContext("app.xml");
		MainClass2 mc=(MainClass2)app.getBean("main");
		mc.dao.connect();
	}
}
