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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.deu.webapp.VO.BoardVO;
import com.deu.webapp.VO.Criteria;
import com.deu.webapp.VO.pageMaker;
import com.deu.webapp.service.BoardService;

/**
 * Handles requests for the application home page.
 */
@RequestMapping("/notice") // 해당 컨트롤러는 /board/ url 요청시에 맵핑된다. (/board/* , /board/*/* .. )
@Controller
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Inject
	private BoardService service;


	@RequestMapping(value = "", method = RequestMethod.GET)
	public String init(BoardVO board, Model model) throws Exception {
		return "redirect:notice/list"; // board/board_list.jsp로 이동
	}
	
	/* 공지사항 메인 페이지 및 게시판 조회(전체조회) */

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String listCriteria(Model model, Criteria criteria ,
			@RequestParam(value="page", defaultValue="1")int page) throws Exception {
		   
			List<BoardVO> boardpage = service.listCriteria(criteria);   
		    pageMaker pm = new pageMaker();
		    pm.setCriteria(criteria); // 페이징 객체 리턴 
		    pm.setTotalCount(service.countBoard(criteria)); // 게시글 총 개수
			model.addAttribute("list", boardpage); // model에 데이터 값을 담는다 
		    model.addAttribute("pm", pm);
			
			
		 return "notice";
	}
	
	@RequestMapping(value = "/writeNotice", method = RequestMethod.GET)
	public String writePost(Model model) throws Exception {
		return "write"; // board/board_list.jsp로 이동
	}

	// 등록포스트
	@RequestMapping(value = "/writeNotice", method = RequestMethod.POST)
	public String writePost(BoardVO boardvo, RedirectAttributes redirectAttributes) throws Exception {
		service.create(boardvo);
		redirectAttributes.addFlashAttribute("msg", "regSuccess");

		return "redirect:list"; // board/board_list.jsp로 이동
	}

	// 상세조회(1개)
	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public String readPost(@RequestParam("postno") Integer postno, Model model) throws Exception {
		model.addAttribute("contents",service.read(postno));
		return "read";
	}

	// 수정 페이지 이동
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public String modifyGET(@RequestParam("postno") int postno, Model model) throws Exception {
		model.addAttribute("board", service.read(postno));
		return "modify"; // b
	}

	// 수정 내용 등록
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modifyPOST(BoardVO boardvo, RedirectAttributes redirectAttributes) throws Exception {
		service.update(boardvo);
		redirectAttributes.addFlashAttribute("msg", "modSuccess");
		return "redirect:/notice/list"; // board/board_list.jsp로 이동
	}

	// 삭제
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String deletePOST(@RequestParam("postno") int postno, RedirectAttributes redirectAttributes)
			throws Exception {
		service.delete(postno);
		redirectAttributes.addFlashAttribute("msg", "modSuccess");

		return "redirect:/notice"; // board/board_list.jsp로 이동
	}

}
