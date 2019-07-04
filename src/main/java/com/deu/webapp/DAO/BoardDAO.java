package com.deu.webapp.DAO;
import java.util.List;

import com.deu.webapp.VO.boardVO;

/*
 * boardDAO, 게시판관련 서비스의 인터페이스이다
 * */
public interface BoardDAO {
	   public void create(boardVO vo) throws Exception;
	    
	    public List<boardVO> listAll() throws Exception;
	    
	    public boardVO read(Integer postno) throws Exception;
	    
	    public void delete(Integer postno) throws Exception;
	    
	    public void update(boardVO vo) throws Exception;


}
