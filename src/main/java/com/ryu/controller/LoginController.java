package com.ryu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ryu.service.LoginService;
import com.ryu.vo.LoginVO;

@Controller
@RequestMapping("/login/*")
public class LoginController {
	
	@Autowired LoginService service;
	
	@RequestMapping(value="/login",method = RequestMethod.GET)
	public String login() {
		return "/login/login";
	}
	
	@RequestMapping(value="/login",method = RequestMethod.POST)
	public String postlogin(Model model/* ,@RequestParam ("lno") int lno */) {
		int count=service.login();
		model.addAttribute("count", count);
		
		/* model.addAttribute("lno", lno); */
		
		return "/login/list";
	}
	
	
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
	
	@RequestMapping("/info")
	public String getinfo(@RequestParam("lno") int lno,Model model) {
		
		LoginVO vo=service.info(lno);
		model.addAttribute("info", vo);
		
		return "/login/info";
	}
	
	@RequestMapping(value="/modify",method = RequestMethod.GET)
	public void getmodify(@RequestParam("lno") int lno,Model model) {
		
		LoginVO vo=service.info(lno);
		model.addAttribute("info", vo);
	
	}
	
	@RequestMapping(value="/modify",method = RequestMethod.POST)
	public String postmodify(LoginVO vo) {
		
		service.modify(vo);
		
		return "redirect:/login/info?lno="+vo.getLno();
	}
	
	@RequestMapping("/delete")
	public String delete(@RequestParam("lno")int lno) {
		
		service.delete(lno);
		
		return "redirect:/login/list";
	}
	
	
}
