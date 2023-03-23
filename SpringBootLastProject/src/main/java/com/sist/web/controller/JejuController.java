package com.sist.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.*;
import com.sist.web.dao.*;
import com.sist.web.entity.*;
@RestController
@CrossOrigin("http://localhost:3000")
public class JejuController {
	@Autowired
	private JejuFoodDAO fdao;
	@Autowired
	private JejuLocationDAO ldao;
	
	@GetMapping("jeju/food_top6")
	public List<JejuFoodEntity> jeju_food_top6()
	{
		List<JejuFoodEntity> list=fdao.jejuFoodTop6List();
		return list;
	}
	
	@GetMapping("jeju/food_list_react")
	public List<JejuFoodEntity> jeju_food_list(String page)
	{
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		int rowSize=20;
		int start=(curpage-1)*rowSize;
		List<JejuFoodEntity> list=fdao.jejuFoodListData(start);
		
		return list;
		
	}
	@GetMapping("jeju/food_page_react")
	public JejuPageVO jejupageData(String page)
	{
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		int totalpage=fdao.jejuFoodTotalPage();
		final int BLOCK=10;
		int startpage=((curpage-1)/BLOCK*BLOCK)+1;
		int endpage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
		if(endpage>totalpage)
			endpage=totalpage;
		
		JejuPageVO vo=new JejuPageVO();
		vo.setCurpage(curpage);
		vo.setEndPage(endpage);
		vo.setStartPage(startpage);
		vo.setTotalpage(totalpage);
		return vo;
	}
	
	@GetMapping("jeju/location_list_react")
	public List<JejuLocationEntity> jeju_location_list(String page)
	{
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		int rowSize=20;
		int start=(curpage-1)*rowSize;
		List<JejuLocationEntity> list=ldao.jejuLocationListData(start);
		
		return list;
		
	}
	@GetMapping("jeju/location_page_react")
	public JejuLoacationPageVO jejuLocationpageData(String page)
	{
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		int totalpage=ldao.jejuLocationTotalPage();
		final int BLOCK=10;
		int startpage=((curpage-1)/BLOCK*BLOCK)+1;
		int endpage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
		if(endpage>totalpage)
			endpage=totalpage;
		
		JejuLoacationPageVO vo=new JejuLoacationPageVO();
		vo.setCurpage(curpage);
		vo.setEndPage(endpage);
		vo.setStartPage(startpage);
		vo.setTotalpage(totalpage);
		return vo;
	}
	
	@GetMapping("jeju/food_detail_react")
	public JejuFoodEntity food_detail(int no)
	{
		JejuFoodEntity vo=fdao.findByNo(no);
		return vo;
	}
}
