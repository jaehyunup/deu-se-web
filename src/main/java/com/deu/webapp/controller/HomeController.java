package com.deu.webapp.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.deu.webapp.VO.BoardVO;
import com.deu.webapp.service.BoardService;

/**
 * Handles requests for the application home page.
 */
@RequestMapping("/") // 해당 컨트롤러는 /board/ url 요청시에 맵핑된다. (/board/* , /board/*/* .. )
@Controller
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/* home .*/
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String homeinit(Locale locale, Model model) {
		return "home";
		//return.
	}
	
	/* home .*/
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "home";
		//return.
	}
	
	 /* 학과 소개*/
	@RequestMapping(value = "/overview", method = RequestMethod.GET)
	public String overview(Locale locale, Model model) {
			
		return "overview";
		//return.
	}
	/* 학과 소개*/
	@RequestMapping(value = "/intention", method = RequestMethod.GET)
	public String intention(Locale locale, Model model) {
			
		return "intention";
		//return
	}
	
	/* 학과커리큘럼*/
	@RequestMapping(value = "/roadmap", method = RequestMethod.GET)
	public String roadmap(Locale locale, Model model) {
			
		return "roadmap";
		//return
	}
	
	/* 입학안내*/
	@RequestMapping(value = "/abeek", method = RequestMethod.GET)
	public String abeek(Locale locale, Model model) {
			
		return "abeek";
		//return
	}
	
	/* 입학안내*/
	@RequestMapping(value = "/abeekrule", method = RequestMethod.GET)
	public String abeekrule(Locale locale, Model model) {
			
		return "abeekrule";
		//return
	}
	
	
	 
	
}
