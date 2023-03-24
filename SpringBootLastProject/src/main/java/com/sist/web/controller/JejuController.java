package com.sist.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.*;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

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
	
	@GetMapping("jeju/food_find_react")
	public List<JejuFindVO> jeju_find(String page,String addr)
	{
		List<JejuFindVO> list=new ArrayList<JejuFindVO>();
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		int start=(curpage-1)*12;
		List<JejuFoodEntity> fList=fdao.jejuFindData(addr, start);
		int totalpage=fdao.jejuFindTotal(addr);
		int i=0;
		for(JejuFoodEntity fvo:fList)
		{
			JejuFindVO vo=new JejuFindVO();
			vo.setNo(fvo.getNo());
			vo.setPoster(fvo.getPoster());
			vo.setAddr(fvo.getAddr());
			vo.setTitle(fvo.getTitle());
			if(i==0)
			{
				vo.setCurpage(curpage);
				vo.setTotalpage(totalpage);
			}
			list.add(vo);
			i++;
		}
		return list;
	}
	@GetMapping("jeju/jeju_cookie_react")
	public List<JejuFoodEntity> jeju_cookie(HttpServletRequest request)
	{
		List<JejuFoodEntity> list=new ArrayList<JejuFoodEntity>();
		Cookie[] cookies=request.getCookies();
		if(cookies!=null)
		{
			for(int i=cookies.length-1;i>=0;i--)
			{
				if(cookies[i].getName().startsWith("jeju"))
				{
					String no=cookies[i].getValue();
					JejuFoodEntity vo=fdao.findByNo(Integer.parseInt(no));
					list.add(vo);
				}
			}
		}
		return list;
	}
}
