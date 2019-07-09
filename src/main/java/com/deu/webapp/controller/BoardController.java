package com.deu.webapp.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.deu.webapp.VO.BoardVO;
import com.deu.webapp.service.BoardService;

/**
 * Handles requests for the application home page.
 */
@RequestMapping("/")  // 해당 컨트롤러는 /board/ url 요청시에 맵핑된다. (/board/* , /board/*/* .. )
@Controller
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Inject
	private BoardService service;
	
	 /* 게시판 조회 */
	 
	 @RequestMapping(value="/notice",method=RequestMethod.GET)
	    public String getnotice(BoardVO board, Model model) throws Exception{
		    List<BoardVO> list = service.listAll(); // list 변수에 결과 값을 담는다
	        model.addAttribute("list", list); // model에 데이터 값을 담는다
	        return "notice"; // board/board_list.jsp로 이동	        
	}

}
