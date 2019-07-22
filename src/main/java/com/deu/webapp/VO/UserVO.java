package com.deu.webapp.VO;

public class UserVO {

	private String ID;
	private String PASSWORD;
	

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






	@Override
	public String toString() {
		return "UserVO, 아이디는"+this.getID()+"비밀번호는"+this.getPASSWORD();
	}
    // getter, setter, toString 생략 
}