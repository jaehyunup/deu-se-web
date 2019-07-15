package com.deu.webapp.service;

import java.util.List;

import javax.inject.Inject;

import com.deu.webapp.DAO.BoardDAO;
import com.deu.webapp.VO.BoardVO;
import com.deu.webapp.VO.Criteria;

import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService {
	@Inject
	private BoardDAO dao; // 데이터 엑세스 오브젝트 (VO를 가지고실질적 데이터에 접근함)

	@Override
	public void create(BoardVO vo) throws Exception {
		dao.create(vo);
	}

	@Override
	public List<BoardVO> listAll() throws Exception {
		return dao.listAll();
	}

	@Override
	public BoardVO read(Integer postno) throws Exception {
		// TODO Auto-generated method stub
		return dao.read(postno);
	}

	@Override
	public void delete(Integer postno) throws Exception {
		// TODO Auto-generated method stub
		dao.delete(postno);
	}

	@Override
	public void update(BoardVO vo) throws Exception {
		dao.update(vo);
	}

	@Override
	public List<BoardVO> listCriteria(Criteria criteria) throws Exception {
		return dao.listCriteria(criteria);
	}
	
	

}
