package com.deu.webapp.interceptor;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
public class LoginInterceptor extends HandlerInterceptorAdapter {
	   private static final String LOGIN = "login";
	    private static final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);
	    // 로그인 처리시 컨트롤러의 Http세션과의 의존을 낮추기위한 인터셉터 클래스
	    // 로그인 정보를 저장하고, 로그아웃시 로그인 정보를 삭제함
	    @Override
	    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

	        HttpSession httpSession = request.getSession();
	        ModelMap modelMap = modelAndView.getModelMap();
	        Object userVO =  modelMap.get("user"); // 모델에서 user키로 등록된 매핑값 가져오기

	        if (userVO != null) {
	            logger.info("사용자 로그인 성공");
	            httpSession.setAttribute(LOGIN, userVO);
	            logger.info("리다이렉트전");
	            response.sendRedirect("/webapp/notice");
	            logger.info("리다이렉트후");

	        }

	    }

	    @Override
	    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

	        HttpSession httpSession = request.getSession();
	        // 기존의 로그인 정보 제거
	        if (httpSession.getAttribute(LOGIN) != null) {
	            logger.info("clear login data before");
	            httpSession.removeAttribute(LOGIN);
	        }

	        return true;
	    }
}
