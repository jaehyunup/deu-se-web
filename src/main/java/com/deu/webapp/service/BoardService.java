package com.deu.webapp.service;

import java.util.List;

import com.deu.webapp.VO.BoardVO;

public interface BoardService {
    /* 비즈니스 로직인 서비스 계층을 정의하는 인터페이스 */
    
    public void create(BoardVO vo) throws Exception;
    
    public List<BoardVO> listAll() throws Exception;
    
    public BoardVO read(Integer postno) throws Exception;
    
    public void delete(Integer postno) throws Exception;
    
    public void update(BoardVO vo) throws Exception;
    
 
}


