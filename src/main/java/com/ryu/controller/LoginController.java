package com.ryu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ryu.service.LoginService;
import com.ryu.vo.LoginVO;

@Controller
@RequestMapping("/login/*")
public class LoginController {
	
	@Autowired LoginService service;
	
	@RequestMapping("/list")
	public String getlist(Model model) {
		
		List<LoginVO> list=service.list();
		model.addAttribute("list", list);
		return "/login/list";
	}
	
	@RequestMapping(value="/join",method = RequestMethod.GET)
	public String getjoin() {
		return "/login/join";
	}
	
	@RequestMapping(value="/join",method = RequestMethod.POST)
	public String postjoin(LoginVO vo) {
		
		service.join(vo);
		
		return "redirect:/login/list";
	}
	
}
