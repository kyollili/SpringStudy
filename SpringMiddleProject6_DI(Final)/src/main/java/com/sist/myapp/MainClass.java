package com.sist.myapp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Component;

import com.sist.config.SeoulConfig;
import com.sist.dao.SeoulDAO;
import java.util.*;
import com.sist.vo.*;
@Component
public class MainClass {
   @Autowired
   private SeoulDAO dao;
   public static void main(String[] args) {
      // TODO Auto-generated method stub
      /*ApplicationContext app=
            new ClassPathXmlApplicationContext("app.xml");*/
	  AnnotationConfigApplicationContext app=
			  new AnnotationConfigApplicationContext(SeoulConfig.class);
      System.out.println("============== �޴� =================");
      System.out.println("1. ���");
      System.out.println("2. �ڿ�&����");
      System.out.println("3. ����");
      System.out.println("4. ȣ��");
      System.out.println("5. �Խ�Ʈ�Ͽ콺");
      System.out.println("====================================");
      String[] table= {"","location","nature","shop","hotel","guest"};
      Scanner scan=new Scanner(System.in);
      System.out.print("�޴� ����:");
      int menu=scan.nextInt();
      
      Map map=new HashMap();
      map.put("seoul_tbl", "seoul_"+table[menu]);
      
      MainClass mc=app.getBean("mainClass",MainClass.class);
      List<SeoulVO> list=mc.dao.seoulListData(map);
      
      for(SeoulVO vo:list)
      {
         System.out.println(vo.getNo()+"."+vo.getTitle()+"("+vo.getAddress()+")");
      }
      
   }

}