package com.sist.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.web.dao.GangnamDAO;
import com.sist.web.entity.gangnamEntity;

@Controller
@RequestMapping("gangnam/")
public class GangnamController {
	@Autowired
	private GangnamDAO dao;
	
	@GetMapping("book_list")
	public String book_list(int no,Model model)
	{
		List<gangnamEntity> list=dao.bookList(no);
		model.addAttribute("list",list);
		return "main";
	}
	@GetMapping("book_detail")
	public String book_detail(int no,Model model)
	{
		gangnamEntity vo=dao.findByNo(no);
		model.addAttribute("vo",vo);
		return "main";
	}
	@RequestMapping("book_find")
	public String book_find(String category,Model model,String page)
	{
		if(category==null)
			category="문학";
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		int rowSize=20;
		int start=(curpage*rowSize)-rowSize;
		List<gangnamEntity> list=dao.bookFindData(category, start);
		int totalpage=dao.bookfindTotalPage(category);
		final int BLOCK=10;
		int startPage=((curpage-1)/BLOCK*BLOCK)+1;
		int endPage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
		if(endPage>totalpage)
			endPage=totalpage;
		   
		model.addAttribute("curpage",curpage);
		model.addAttribute("totalpage",totalpage);
		model.addAttribute("startPage",startPage);
		model.addAttribute("endPage",endPage);
		model.addAttribute("list",list);
		model.addAttribute("category",category);
		model.addAttribute("main_html","gangnam/book_find");
		
		return "main";
	}
	
	@GetMapping("find_detail")
	public String find_detail(int no,Model model)
	{
		gangnamEntity vo=dao.findByNo(no);
		model.addAttribute("vo",vo);
		model.addAttribute("main_html","gangnam/find_detail");
		return "main";
	}
}
