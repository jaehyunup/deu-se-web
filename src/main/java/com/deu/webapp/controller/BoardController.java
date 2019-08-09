package com.deu.webapp.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.deu.webapp.VO.BoardVO;
import com.deu.webapp.VO.Criteria;
import com.deu.webapp.VO.FileVO;
import com.deu.webapp.VO.pageMaker;
import com.deu.webapp.service.BoardService;
import com.deu.webapp.thirdParty.UploadFileUtils;
import com.google.gson.JsonObject;

/**
 * Handles requests for the application home page.
 */
@RequestMapping("/notice") // 해당 컨트롤러는 /board/ url 요청시에 맵핑된다. (/board/* , /board/*/* .. )
@Controller
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	@Inject
	private BoardService boardservice;
	@Inject
	String uploadPath;

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String init(BoardVO board, Model model) throws Exception {
		return "redirect:notice/list"; // board/board_list.jsp로 이동
	}
	
	/* 공지사항 메인 페이지 및 게시판 조회(전체조회) */

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String listCriteria(Model model, Criteria criteria ,
			@RequestParam(value="page", defaultValue="1")int page) throws Exception {
		   
			List<BoardVO> boardpage = boardservice.listCriteria(criteria);   
		    pageMaker pm = new pageMaker();
		    pm.setCriteria(criteria); // 페이징 객체 리턴 
		    pm.setTotalCount(boardservice.countBoard(criteria)); // 게시글 총 개수
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
	public String writePost(BoardVO boardvo,RedirectAttributes redirectAttributes) throws Exception {
		boardvo.file2List();
		List<MultipartFile> files=boardvo.getMultipartFiles();
		
		if(!files.isEmpty()){ // 파일이 존재 한다면 
			List<String> uplodedfilepathlist=new ArrayList<String>();
			
			for(MultipartFile file:files){
				uplodedfilepathlist.add(UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes()));
				
			}
			boardvo.setFilePath(uplodedfilepathlist); // vo의 파일패스에 순서대로 저장
		}
		
		boardservice.create(boardvo);
		
		/*
		if(!files.isEmpty()){
			boardservice.create_file(boardvo);
		}*/
		redirectAttributes.addFlashAttribute("msg", "regSuccess");

	  return "redirect:list"; // board/board_list.jsp로 이동
	}

	// 상세조회(1개)
	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public String readPost(@RequestParam("postno") Integer postno, Model model) throws Exception {
		model.addAttribute("contents",boardservice.read(postno));
		List<Map<String,Object>> fileMapList=boardservice.fileread(postno);
		List<Map<String,String>> fdlist=new ArrayList<Map<String,String>>();
		
		
		
		if(!fileMapList.isEmpty()) {
			List<String> filePathList=new ArrayList<String>();
				for(Map<String,Object> filemap:fileMapList) {
					filePathList.add((String)filemap.get("filepath"));
				}
			logger.info(filePathList.toString());
			
			for(String filepath:filePathList) {//반복 3번
				logger.info("파일패스리스트");
				Map<String,String> fileData=new HashMap<String,String>();
				
				fileData.put("filename",filepath.substring(49)); // 원본파일명
				fileData.put("filepath",filepath); // DB에 저장된경로명
				//downFileList.add(file);
				//viewFilename.add(file.getName());
				fdlist.add(fileData);
			}
			
			logger.info(fdlist.toString());

			model.addAttribute("fdlist",fdlist); // model에 데이터 값을 담는다 

		}
		return "read";
	}

	     
	 // 파일 다운로드 하는 메소드
	 @RequestMapping(value = "/download", method = RequestMethod.POST)
	 // get 방식 하이퍼링크 경로로 보낸 PK 값을 인자로 받음
	    public void download(@RequestParam(value="requestfile") String path,HttpServletRequest request,
	    		HttpServletResponse response) throws Exception {
	        // pk 값으로 해당 도메인 객체의 파일 전체 경로 값을 받은 후
	       
		 	String storedFileName = path;
			String originalFileName = uploadPath+path;
			
			byte fileByte[] = FileUtils.readFileToByteArray(
					new File(uploadPath+storedFileName));
			
			response.setContentType("application/octet-stream");
			response.setContentLength(fileByte.length);
			response.setHeader("Content-Disposition", "attachment; fileName=\"" + URLEncoder.encode(storedFileName.substring(49),"UTF-8")+"\";");
			response.setHeader("Content-Transfer-Encoding", "binary");
			response.getOutputStream().write(fileByte);
			
			response.getOutputStream().flush();
			response.getOutputStream().close();
		 	
		 	
	    }

	
	// 수정 페이지 이동
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public String modifyGET(@RequestParam("postno") int postno, Model model) throws Exception {
		model.addAttribute("board", boardservice.read(postno));
		return "modify"; // b
	}

	// 수정 내용 등록
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modifyPOST(BoardVO boardvo, RedirectAttributes redirectAttributes) throws Exception {
		boardservice.update(boardvo);
		redirectAttributes.addFlashAttribute("msg", "modSuccess");
		return "redirect:/notice/list"; // board/board_list.jsp로 이동
	}

	// 삭제
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String deletePOST(@RequestParam("postno") int postno, RedirectAttributes redirectAttributes)
			throws Exception {
		boardservice.delete(postno);
		redirectAttributes.addFlashAttribute("msg", "modSuccess");

		return "redirect:/notice"; // board/board_list.jsp로 이동
	}
	
	



}
