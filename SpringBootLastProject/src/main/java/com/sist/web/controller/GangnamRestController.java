package com.sist.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sist.web.dao.GangnamDAO;
import com.sist.web.entity.GangnamPageVO;
import com.sist.web.entity.JejuFoodEntity;
import com.sist.web.entity.gangnamEntity;
import com.sist.web.entity.seoulLibraryEntity;

@RestController
@CrossOrigin("http://localhost:3000")
public class GangnamRestController {
	@Autowired
	private GangnamDAO dao;
	
	@GetMapping("gangnam/book_top6")
	public List<gangnamEntity> gangnam_book_top6()
	{
		List<gangnamEntity> list=dao.bookTop6List();
		return list;
	}
	@GetMapping("gangnam/book_list_react")
	public List<gangnamEntity> gangnam_book_list(String page)
	{
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		int rowSize=20;
		int start=(curpage-1)*rowSize;
		List<gangnamEntity> list=dao.bookList(start);
		
		return list;
		
	}
	@GetMapping("gangnam/book_page_react")
	public GangnamPageVO gangnampageData(String page,String category)
	{
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		int totalpage=dao.bookfindTotalPage(category);
		final int BLOCK=10;
		int startpage=((curpage-1)/BLOCK*BLOCK)+1;
		int endpage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
		if(endpage>totalpage)
			endpage=totalpage;
		
		GangnamPageVO vo=new GangnamPageVO();
		vo.setCurpage(curpage);
		vo.setEndPage(endpage);
		vo.setStartPage(startpage);
		vo.setTotalpage(totalpage);
		return vo;
	}
	@GetMapping("gangnam/book_detail_react")
	public gangnamEntity book_detail(int no)
	{
		gangnamEntity vo=dao.findByNo(no);
		return vo;
	}
}
