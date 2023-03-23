package com.sist.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sist.web.dao.SeoulLibraryDAO;
import com.sist.web.entity.GangnamPageVO;
import com.sist.web.entity.SeoulPageVO;
import com.sist.web.entity.gangnamEntity;
import com.sist.web.entity.seoulLibraryEntity;

@RestController
@CrossOrigin("http://localhost:3000")
public class SeoulLibraryRestController {
	@Autowired
	private SeoulLibraryDAO dao;
	
	@GetMapping("seoul/library_list_react")
	public List<seoulLibraryEntity> seoul_library_list(String page)
	{
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		int rowSize=20;
		int start=(curpage-1)*rowSize;
		List<seoulLibraryEntity> list=dao.LibraryList(start);
		
		return list;
	}
	
	@GetMapping("seoul/library_page_react")
	public SeoulPageVO librarypageData(String page)
	{
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		int totalpage=dao.libraryTotalPage();
		final int BLOCK=10;
		int startpage=((curpage-1)/BLOCK*BLOCK)+1;
		int endpage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
		if(endpage>totalpage)
			endpage=totalpage;
		
		SeoulPageVO vo=new SeoulPageVO();
		vo.setCurpage(curpage);
		vo.setEndPage(endpage);
		vo.setStartPage(startpage);
		vo.setTotalpage(totalpage);
		return vo;
	}
	@GetMapping("seoul/library_detail_react")
	public seoulLibraryEntity library_detail(int lno)
	{
		seoulLibraryEntity vo=dao.findByLno(lno);
		return vo;
	}
}
