package com.deu.webapp.VO;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class BoardVO {
	// 게시글 번호
	private Integer postno;
	// 게시글 이름,작성자,내용,작성시간
	private String posttitle, postwriter,postmemo,postdate;
	 // 게시글 첨부파일
    private MultipartFile file1;    
    private MultipartFile file2;
    private MultipartFile file3;
    private MultipartFile file4;
    private MultipartFile file5;
    private List<MultipartFile> MultipartFiles=new ArrayList<MultipartFile>();
    private List<String> FilePath=new ArrayList<String>();
    
    public List<MultipartFile> getMultipartFiles() {
		return MultipartFiles;
	}
    
    public void file2List() {
    	if(!file1.isEmpty()) {
        	MultipartFiles.add(file1);

    	}
    	if(!file2.isEmpty()) {
        	MultipartFiles.add(file2);

    	}
    	if(!file3.isEmpty()) {
        	MultipartFiles.add(file3);

    	}
    	if(!file4.isEmpty()) {
        	MultipartFiles.add(file4);

    	}
    	if(!file5.isEmpty()) {
        	MultipartFiles.add(file5);

    	}
    	
    }
    
	public List<String> getFilePath() {
		return FilePath;
	}

	public void setFilePath(List<String> filePath) {
		FilePath = filePath;
	}

	public void setMultipartFiles(List<MultipartFile> multipartFiles) {
		MultipartFiles = multipartFiles;
	}

	


	public MultipartFile getfile1() {
		return file1;
	}

	public void setfile1(MultipartFile file1) {
		this.file1 = file1;
	}

	public MultipartFile getfile2() {
		return file2;
	}

	public void setfile2(MultipartFile file2) {
		this.file2 = file2;
	}

	public MultipartFile getfile3() {
		return file3;
	}

	public void setfile3(MultipartFile file3) {
		this.file3 = file3;
	}

	public MultipartFile getfile4() {
		return file4;
	}

	public void setfile4(MultipartFile file4) {
		this.file4 = file4;
	}

	public MultipartFile getfile5() {
		return file5;
	}

	public void setfile5(MultipartFile file5) {
		this.file5 = file5;
	}




	private List<String> MultipartFilePath;
    
    public List<String> getMultipartFilePath() {
		return MultipartFilePath;
	}

	public void setMultipartFilePath(List<String> MultipartFilePath) {
		this.MultipartFilePath = MultipartFilePath;
	}

	

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

	

	public int getAttachcnt() {
		return attachcnt;
	}

	public void setAttachcnt(int attachcnt) {
		this.attachcnt = attachcnt;
	}
	
    
}
