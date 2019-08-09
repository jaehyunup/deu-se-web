package com.deu.webapp.DAO;
import java.util.List;
import java.util.Map;

import com.deu.webapp.VO.BoardVO;
import com.deu.webapp.VO.Criteria;

/*
 * boardDAO, 게시판관련 서비스의 인터페이스이다
 * */
public interface BoardDAO {
	   public void create(BoardVO vo) throws Exception;
	   public void create_file(BoardVO vo) throws Exception;
	   
	    public List<BoardVO> listAll() throws Exception;
	    
	    public BoardVO read(Integer postno) throws Exception;
	    
	    public void delete(Integer postno) throws Exception;
	    
	    public void update(BoardVO vo) throws Exception;
	    
	    public List<BoardVO> listCriteria(Criteria criteria) throws Exception;
	    	
	    public int countBoard(Criteria criteria) throws Exception;
	  
	    public List<BoardVO> listCurrentContents() throws Exception;
		
	    public List<Map<String,Object>> fileread(Integer postno) throws Exception;


}
