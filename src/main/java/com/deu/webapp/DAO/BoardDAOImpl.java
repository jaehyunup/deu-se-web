package com.deu.webapp.DAO;

import java.util.List;

import com.deu.webapp.VO.BoardVO;
import com.deu.webapp.VO.Criteria;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
@Repository
public class BoardDAOImpl implements BoardDAO {
	private SqlSession sqlSession;
    private String namespace = "com.deu.webapp.mappers.boardMapper";
    
    @Inject
    public BoardDAOImpl(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
    }

    @Override
	public void create(BoardVO vo) throws Exception {
		sqlSession.insert(namespace+".insertBoard", vo);

	}

	@Override
	public List<BoardVO> listAll() throws Exception {
		 return sqlSession.selectList(namespace+".listBoard");
	}

	@Override
	public BoardVO read(Integer postno) throws Exception {
		return sqlSession.selectOne(namespace+".detailBoard",postno);
	}

	@Override
	public void delete(Integer postno) throws Exception {
        sqlSession.delete(namespace+".deleteBoard", postno);

	}

	@Override
	public void update(BoardVO vo) throws Exception {
		sqlSession.update(namespace+".updateBoard", vo);
	}

	@Override
	public List<BoardVO> listCriteria(Criteria criteria) throws Exception {
	    return sqlSession.selectList(namespace + ".listCriteria", criteria);
	}

	@Override
	public int countBoard(Criteria criteria) throws Exception {
	    return sqlSession.selectOne(namespace + ".countBoard", criteria);
	}

	@Override
	public List<BoardVO> listCurrentContents() throws Exception {
		return sqlSession.selectList(namespace+".listCurrentContents");
	}
}
