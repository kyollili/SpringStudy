package com.sist.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
//화면전환은 controller 데이터값 받는건 restcontroller
@Controller
public class BoardController {
   @GetMapping("board/list.do")
   public String board_list()
   {
      return "board/list";
   }
   @GetMapping("board/insert.do")
   public String board_insert()
   {
      return "board/insert";
   }
   @GetMapping("board/detail.do")
   public String board_detail(int no,Model model)
   {
	   model.addAttribute("no",no);
	   return "board/detail";
   }
   
   @GetMapping("board/update.do")
   public String board_update(int no,Model model)
   {
	   model.addAttribute("no",no);
	   return "board/update";
   }
   
   @GetMapping("board/delete.do")
   public String board_delete(int no,Model model)
   {
	   model.addAttribute("no",no);
	   return "board/delete";
   }
}