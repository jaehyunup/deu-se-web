package com.deu.webapp.service;

import java.util.List;

import com.deu.webapp.VO.boardVO;

public interface BoardService {
    /* 비즈니스 로직인 서비스 계층을 정의하는 인터페이스 */
    
    public void create(boardVO vo) throws Exception;
    
    public List<boardVO> listAll() throws Exception;
    
    public boardVO read(Integer postno) throws Exception;
    
    public void delete(Integer postno) throws Exception;
    
    public void update(boardVO vo) throws Exception;
    
 
}


