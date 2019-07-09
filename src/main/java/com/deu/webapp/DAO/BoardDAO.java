package com.deu.webapp.DAO;
import java.util.List;

import com.deu.webapp.VO.BoardVO;

/*
 * boardDAO, 게시판관련 서비스의 인터페이스이다
 * */
public interface BoardDAO {
	   public void create(BoardVO vo) throws Exception;
	    
	    public List<BoardVO> listAll() throws Exception;
	    
	    public BoardVO read(Integer postno) throws Exception;
	    
	    public void delete(Integer postno) throws Exception;
	    
	    public void update(BoardVO vo) throws Exception;


}
