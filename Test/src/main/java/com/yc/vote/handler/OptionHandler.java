package com.yc.vote.handler;

import java.io.PrintWriter;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/option")
public class OptionHandler {
	//@Autowired
	//private OptionService optionService ;
	@RequestMapping("view")
	public  void  showOption(int vsId,PrintWriter out) {
		//Subject subject = optionService.listSubjectById(vsId);
		//map.put("subject", subject);
		System.out.println("进来了,vsid="+vsId);
		out.println("true");
		out.flush();
		out.close();
	}
}
