package com.deu.webapp.DAO;

import java.util.List;

import com.deu.webapp.VO.boardVO;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class BoardDAOImpl implements BoardDAO {
	@Inject
	SqlSession sqlSession;
	
	private static String namespace = "com.deu.webapp.DAO.BoardDAO";

	@Override
	public void create(boardVO vo) throws Exception {
		sqlSession.insert(namespace+".insertBoard", vo);

		
	}

	@Override
	public List<boardVO> listAll() throws Exception {
		 sqlSession.selectList(namespace+".listBoard");
		return null;
	}

	@Override
	public boardVO read(Integer postno) throws Exception {
		 sqlSession.selectOne(namespace+".detailBoard");
		return null;
	}

	@Override
	public void delete(Integer postno) throws Exception {
        sqlSession.delete(namespace+".deleteBoard", postno);

	}

	@Override
	public void update(boardVO vo) throws Exception {
		sqlSession.update(namespace+".updateBoard", vo);
	}

}
