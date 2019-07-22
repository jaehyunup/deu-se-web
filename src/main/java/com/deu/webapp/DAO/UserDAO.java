package com.deu.webapp.DAO;
import com.deu.webapp.VO.LoginDTO;
import com.deu.webapp.VO.UserVO;
public interface UserDAO {
	
	public UserVO login(LoginDTO loginDTO) throws Exception;
}
