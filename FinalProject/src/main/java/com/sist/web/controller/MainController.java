package com.sist.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.sist.web.dao.LibraryDAO;
import com.sist.web.entity.LibraryDataMapping;

@Controller
public class MainController {
	@Autowired
	private LibraryDAO dao;
	
	@GetMapping("/")
	public String main_page(Model model)
	{
		List<LibraryDataMapping> list=dao.bookListData();
		model.addAttribute("list",list);
		model.addAttribute("main_html","main/home");
		return "main";
	}
}
