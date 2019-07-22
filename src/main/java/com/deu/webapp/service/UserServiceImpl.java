package com.deu.webapp.service;

import com.deu.webapp.VO.LoginDTO;
import com.deu.webapp.VO.UserVO;
import com.deu.webapp.controller.UserLoginController;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.deu.webapp.DAO.BoardDAO;
import com.deu.webapp.DAO.UserDAO;

@Service
public class UserServiceImpl implements UserService {
	private static final Logger logger = LoggerFactory.getLogger(UserLoginController.class);
	@Inject
	private UserDAO dao;

	@Override
	public UserVO login(LoginDTO loginDTO) throws Exception {
		logger.info("Service 계층에서의 아이디:"+loginDTO.getID());
		return dao.login(loginDTO);
	}

}
