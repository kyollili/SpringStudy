package com.sist.myapp;
import java.util.*;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.sist.dao.*;

import lombok.Setter;
public class MainClass {
	@Setter
	private SeoulDAO dao;
	public static void main(String[] args) {
		
		String[] table= {"","seoul_location","seoul_nature","seoul_shop"};
		Scanner scan=new Scanner(System.in);
		System.out.print("테이블 선택:");
		int no=scan.nextInt();
		ApplicationContext app=
				new ClassPathXmlApplicationContext("app.xml");
		MainClass mc=(MainClass)app.getBean("mc"); //스프링에서 생성된 객체를 읽어서 사용(세팅이 완료된 상태)
		//싱글턴 메모리 한 개 사용, 모든 클래스에서 재사용이 가능, 다른 클래스에 영향력 없음(스프링=>독립적인 클래스)
		//결합성이 낮은 프로그램
		Map map=new HashMap();
		map.put("seoul_tbl", table[no]);
		List<SeoulVO> list=mc.dao.seoulListData(map);
		for(SeoulVO vo:list)
		{
			System.out.println(vo.getNo()+"."+vo.getTitle());
		}
		System.out.println("=========================");
		System.out.print("상세보기 번호 입력:");
		int i=scan.nextInt();
		map.put("seoul_tbl", table[no]);
		map.put("no", i);
		SeoulVO vo=mc.dao.seoulDetailData(map);
		System.out.println("번호:"+vo.getNo());
		System.out.println("제목:"+vo.getTitle());
		System.out.println("주소:"+vo.getAddress());
		System.out.println("상세설명:"+vo.getMsg());
	}
}
