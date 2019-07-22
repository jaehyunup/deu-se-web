package com.deu.webapp.service;

import com.deu.webapp.VO.LoginDTO;
import com.deu.webapp.VO.UserVO;

public interface UserService {
	UserVO login(LoginDTO loginDTO) throws Exception;
}
