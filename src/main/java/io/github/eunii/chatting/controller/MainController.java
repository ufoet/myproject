package io.github.eunii.chatting.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import io.github.eunii.board.mapper.BoardMapper;

@Controller
public class MainController {
	
	@Resource(name = "io.github.eunii.board.mapper.BoardMapper")
	BoardMapper mBoardMapper;
	
	@RequestMapping("/")
	public ModelAndView index() throws Exception {
		System.out.println(mBoardMapper.boardCount());
		ModelAndView mv = new ModelAndView("index");
		return mv;
	}
	@RequestMapping("/chat")
	public ModelAndView chat() {
		ModelAndView mv = new ModelAndView("chat");
		return mv;
	}
	@RequestMapping("/test")
	public ModelAndView test() {
		ModelAndView mv = new ModelAndView("test");
		return mv;
	}
}