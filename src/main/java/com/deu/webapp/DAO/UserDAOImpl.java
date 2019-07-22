package com.deu.webapp.DAO;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.deu.webapp.VO.LoginDTO;
import com.deu.webapp.VO.UserVO;
import com.deu.webapp.controller.UserLoginController;
@Repository
public class UserDAOImpl implements UserDAO{
	private static final Logger logger = LoggerFactory.getLogger(UserLoginController.class);
	private SqlSession sqlSession;
    private String namespace = "com.deu.webapp.mappers.userMapper";

    @Inject
    public UserDAOImpl(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
    }
    
	@Override
	public UserVO login(LoginDTO loginDTO) throws Exception {
			logger.info("DAO 계층에서의 아이디:"+loginDTO.getID());
	    return sqlSession.selectOne(namespace+".login", loginDTO);
	}
}
