package com.deu.webapp.VO;

public class BoardVO {
	// 게시글 번호
	private Integer postno;
	// 게시글 이름,작성자,내용,작성시간
	private String posttitle, postwriter,postmemo,postdate;
	 // 게시글 첨부파일
    private String[] files;
    // 게시글 첨부파일 갯수
    private int attachcnt;
  
    public String toString() {
    	String msg="글번호:"+Integer.toString(postno)+"글제목:"+posttitle+"글작성자:"+postwriter+"글내용:"+postmemo;
		return msg;
    	
    }
	public Integer getPostno() {
		return postno;
	}

	public void setPostno(Integer postno) {
		this.postno = postno;
	}

	public String getPosttitle() {
		return posttitle;
	}

	public void setPosttitle(String posttitle) {
		this.posttitle = posttitle;
	}

	public String getPostwriter() {
		return postwriter;
	}

	public void setPostwriter(String postwriter) {
		this.postwriter = postwriter;
	}

	public String getPostmemo() {
		return postmemo;
	}

	public void setPostmemo(String postmemo) {
		this.postmemo = postmemo;
	}

	public String getPostdate() {
		return postdate;
	}

	public void setPostdate(String postdate) {
		this.postdate = postdate;
	}

	public String[] getFiles() {
		return files;
	}

	public void setFiles(String[] files) {
		this.files = files;
	}

	public int getAttachcnt() {
		return attachcnt;
	}

	public void setAttachcnt(int attachcnt) {
		this.attachcnt = attachcnt;
	}
	
    
}
