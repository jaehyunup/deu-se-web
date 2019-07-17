package com.deu.webapp.DAO;
import com.deu.webapp.VO.UserVO;
public interface UserDAO {
    void register(UserVO userVO) throws Exception;
}
