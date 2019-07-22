package com.deu.webapp.controller;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.deu.webapp.VO.LoginDTO;
import com.deu.webapp.VO.UserVO;
import com.deu.webapp.service.UserService;

/**
 * Handles requests for the application home page.
 */
@RequestMapping("/user")
@Controller
public class UserLoginController {
	private static final Logger logger = LoggerFactory.getLogger(UserLoginController.class);
	@Inject
    private UserService userservice;

	@RequestMapping(value = "", method = RequestMethod.GET)
    public String userPage(@ModelAttribute("loginDTO") LoginDTO loginDTO) {
        return "redirect:user/login";
    }

    // 로그인 페이지
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginGET(@ModelAttribute("loginDTO") LoginDTO loginDTO) {
        return "user/login";
    }

    // 로그인 처리
    @RequestMapping(value = "/loginPost", method = RequestMethod.POST)
    public void loginPost(LoginDTO loginDTO,HttpSession httpSession, Model model) throws Exception {
        UserVO userVO = userservice.login(loginDTO);

        if (userVO == null || !loginDTO.getPASSWORD().equals(userVO.getPASSWORD())) {
            logger.info("로그인실패 VO:"+ userVO.toString()+"DTO:"+loginDTO.toString());
            return;
        }

        model.addAttribute("user", userVO);
    }
    
    // 로그아웃 처리
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpServletRequest request,
                         HttpServletResponse response,
                         HttpSession httpSession) throws Exception {

        Object object = httpSession.getAttribute("login");
        if (object != null) {
            UserVO userVO = (UserVO) object;
            httpSession.removeAttribute("login");
            httpSession.invalidate();
        }

        return "redirect:../notice/list";
    }
}
	
