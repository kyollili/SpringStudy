package com.sist.web;
import java.util.*;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sist.vo.*;
import com.sist.dao.*;

@Controller
public class ClassController {
	@Autowired
	private ClassService dao;
	
	@GetMapping("class/class_list.do")
	public String class_list(String cateno,String detail_cateno,Model model)
	{
		Map map = new HashMap();
		int i_cateno = Integer.parseInt(cateno);
		int i_dcateno = Integer.parseInt(detail_cateno);
		map.put("cateno", i_cateno);
		map.put("detail_cateno", i_dcateno);
		List<ClassDetailVO> list=dao.classListData(map);
		
		model.addAttribute("cateno",i_cateno );
		model.addAttribute("detail_cateno",i_dcateno );
		model.addAttribute("list",list);
		
		return "class/class_list";
	}
	
	@GetMapping("class/class_before_detail.do")
	public String class_before_detail(int cno,HttpServletResponse response,RedirectAttributes ra)
	{
		Cookie cookie=new Cookie("classHaru"+cno,String.valueOf(cno));
		cookie.setPath("/");
		cookie.setMaxAge(60*60*24);
		response.addCookie(cookie);
		ra.addAttribute("cno",cno);
		return "redirect:../class/class_detail.do";
	}
	
	@GetMapping("class/class_detail.do")
	public String class_detail(int cno,Model model)
	{
		model.addAttribute("cno",cno);
		return "class/class_detail";
	}
}
