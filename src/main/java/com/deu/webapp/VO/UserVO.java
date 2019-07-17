package com.deu.webapp.VO;

public class UserVO {

    private String userId;
    private String userPw;
    
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
   
	@Override
	public String toString() {
		return "로그인시도, 아이디는"+this.getUserId()+"비밀번호는"+this.getUserPw();
	}
    // getter, setter, toString 생략 
}