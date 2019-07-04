package com.deu.webapp.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.deu.webapp.VO.boardVO;
import com.deu.webapp.service.BoardService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/board/*")  // 해당 컨트롤러는 /board/ url 요청시에 맵핑된다. (/board/* , /board/*/* .. )
public class BoardController {
	private BoardService service;
	
	 
	 @RequestMapping(value="/create",method=RequestMethod.GET)
	    public void createGET(boardVO board, Model model) throws Exception{
	        System.out.println(" /board/create 입니다. GET방식");
	        
	    }
	 
	 @RequestMapping(value = "/create",method=RequestMethod.POST )
	    public String createPOST(boardVO boardvo, Model model) throws Exception{
	        System.out.println("/board/create POST방식 입니다.");
	        System.out.println(boardvo.toString());
	        
	        service.create(boardvo);
	        model.addAttribute("result", "성공");
	        
	        return "/board/succes";
	    }


}
