package com.sist.myapp;
import java.util.*;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.sist.dao.*;
import com.sist.model.Model;
import com.sist.vo.FoodVO;
import com.sist.vo.GoodsVO;
import com.sist.vo.RecipeVO;
public class MainClass {
	private Model model;
	
	public void setModel(Model model) {
		this.model = model;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//MainClass mc=new MainClass(); //fdao,gdao,rdao => null => �ּҰ��� �ִ� dao ��� => ���������� ������ ��ü�� dao�� �ּҰ� �ִ�
		//�������� ��� xml
		ApplicationContext app=
				new ClassPathXmlApplicationContext("app.xml");
		MainClass mc=(MainClass)app.getBean("mc");
		System.out.println("===== Menu =====");
		System.out.println("1. ������");
		System.out.println("2. ����");
		System.out.println("3. ��ǰ");
		System.out.println("=================");
		Scanner scan=new Scanner(System.in);
		System.out.print("�޴� ���� : ");
		int no=scan.nextInt();
		if(no==1)
		{
			mc.model.recipeListData();
		}
		else if(no==2)
		{
			mc.model.goodsListData();
		}
		else if(no==3)
		{
			mc.model.foodListData();
		}
	}
	
}
