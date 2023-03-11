package com.sist.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.*;
import com.sist.openapi.*;
import com.sist.vo.*;
@Controller
public class NewsFController {
	@GetMapping("news/find.do")
	public String news_find()
	{
		return "news/find";
	}
}
