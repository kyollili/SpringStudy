package com.sist.anno;

import org.springframework.stereotype.Repository;

@Repository("MySQL")
public class MySQL implements MyDAO{

   @Override
   public void connect() {
      // TODO Auto-generated method stub
      System.out.println("MySQL¿¡ ¿¬°á");
   }

}