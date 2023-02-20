package com.sist.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.dao.MemberVO;

@Controller
public class MemberController {
	@RequestMapping("member/insert.do")
	public String member_insert(HttpServletRequest request,HttpServletResponse response)
	{
		try
		{
			request.setCharacterEncoding("UTF-8");
		}catch(Exception ex) {}
		String name=request.getParameter("name");
		String sex=request.getParameter("sex");
		String address=request.getParameter("address");
		String tel=request.getParameter("tel");
		
		MemberVO vo=new MemberVO();
		vo.setName(name);
		vo.setAddress(address);
		vo.setSex(sex);
		vo.setTel(tel);
		
		request.setAttribute("vo", vo);
		return "member/insert_ok";
	}
	
	@RequestMapping("member/insert2.do")
	/*
	 * public void addAttribute(String key,Object obj)
	 * {
	 * 		request.setAttribute(key,obj)
	 * }
	 */
	//request�� �ʿ��� ��찡 �ƴϸ� ������ ��� ���� (Ŭ���̾�Ʈ ip)
	public String member_insert2(MemberVO vo, Model model)
	{
		//���� ��ü => Model
		model.addAttribute("vo",vo); //request.setAttribute
		return "member/insert_ok2";
	}
}
