package com.deu.webapp.VO;

public class LoginDTO {

	private String ID;
	private String PASSWORD;
	private boolean useCookie;
	




	public String getID() {
		return ID;
	}





	public void setID(String iD) {
		ID = iD;
	}





	public String getPASSWORD() {
		return PASSWORD;
	}





	public void setPASSWORD(String pASSWORD) {
		PASSWORD = pASSWORD;
	}





	public boolean isUseCookie() {
		return useCookie;
	}





	public void setUseCookie(boolean useCookie) {
		this.useCookie = useCookie;
	}


	@Override
	public String toString() {
		return "LoginDTO: 아이디는"+this.getID()+"비밀번호는"+this.getPASSWORD();
	}
    // getter, setter, toString 생략 
    // getter, setter, toString 생략 
}