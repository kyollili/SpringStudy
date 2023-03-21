package com.sist.web.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.*;
import com.sist.web.dao.*;
import com.sist.web.entity.*;
@RestController
public class BoardRestController {
	@Autowired
	private BoardDAO dao;
	
	@PostMapping("board/board_update_ok")
	public String board_update_ok(BoardEntity vo,Model model)
	{
		BoardEntity dbvo=dao.findByNo(vo.getNo());
		String res="";
		if(dbvo.getPwd().equals(vo.getPwd()))
			//db에 있는 pwd		사용자가 보내준 pwd
		{
			dao.save(vo);
			res="<script>"
					+"location.href=\"/board/board_detail?no="+vo.getNo()+"\";"
					+"</script>";
		}
		else
		{
			res="<script>"
					+"alert(\"비밀번호 틀림\");"
					+ "history.back();"
					+"</script>";
		}
		model.addAttribute("no",vo.getNo());
		model.addAttribute("res",res);
		return "board/board_update_ok";
	}
	
	@PostMapping("board/board_delete_ok")
	public String board_delete_ok(int no,String pwd,Model model)
	{
		BoardEntity dbvo=dao.findByNo(no);
		String res="";
		if(dbvo.getPwd().equals(pwd))
			//db에 있는 pwd		사용자가 보내준 pwd
		{
			dao.delete(dbvo);
			res="<script>"
					+"location.href=\"/board/board_list\";"
					+"</script>";
		}
		else
		{
			res="<script>"
					+"alert(\"비밀번호 틀림\");"
					+ "history.back();"
					+"</script>";
		}
		model.addAttribute("no",no);
		model.addAttribute("res",res);
		return "board/board_delete_ok";
	}
}
