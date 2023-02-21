package com.sist.dao;

import javax.sql.DataSource;

import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
/*
 *     public class A
 *     {
 *         @Autowired
 *         private B b;
 *         
 *         @Autowired
 *         public A(B b)
 *         {
 *         }
 *         
 *         @Autowired
 *         public void setB(B b)
 *         {
 *         }
 *     }
 */
@Component("ssf")
//Target(value={Type})
public class MySqlsessionFactoryBean extends SqlSessionFactoryBean{

	
	/*
	 * <bean id="ssf" class="org.mybatis.spring.SqlSessionFactoryBean"
		p:dataSource-ref="ds"
		/>
	 */
	@Autowired
	public void setDataSource(DataSource dataSource) {
		// TODO Auto-generated method stub
		super.setDataSource(dataSource);
	}
}
