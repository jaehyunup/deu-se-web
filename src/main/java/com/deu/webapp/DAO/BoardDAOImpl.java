package com.deu.webapp.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.deu.webapp.VO.BoardVO;
import com.deu.webapp.VO.Criteria;
import com.deu.webapp.VO.FileVO;
import com.deu.webapp.controller.HomeController;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;
@Repository
public class BoardDAOImpl implements BoardDAO {
	private SqlSession sqlSession;
    private String namespace = "com.deu.webapp.mappers.boardMapper";
	private static final Logger logger = LoggerFactory.getLogger(BoardDAOImpl.class);

    @Inject
    public BoardDAOImpl(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
    }

    @Override
	public void create(BoardVO vo) throws Exception {
    	// 게시글 생성
    	sqlSession.insert(namespace+".insertBoard", vo);
			// 게시글 생성과 별개로 Notice_file db접근,파일 경로저장(파일 개수만큼)
		if(!vo.getFilePath().isEmpty()) {
			for(int i=0;i< vo.getFilePath().size();i++) {
				FileVO fvo=new FileVO();
				fvo.setPostno(vo.getPostno());
				fvo.setFilePath(vo.getFilePath().get(i));
				sqlSession.insert(namespace+".insertBoard_filePath",fvo);
			}
		}
	}
    
    @Override
    public void create_file(BoardVO vo) throws Exception{
		
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
	public List<Map<String,Object>> fileread(Integer postno) throws Exception {
		return sqlSession.selectList(namespace+".filecheck", postno);

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
