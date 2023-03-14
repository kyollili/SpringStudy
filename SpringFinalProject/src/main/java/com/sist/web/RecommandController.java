package com.sist.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class RecommandController {
	@GetMapping("recommand/recommand.do")
	public String recommand_recommand()
	{
		return "recommand/recommand";
	}
}
