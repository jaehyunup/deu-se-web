package com.deu.webapp.VO;

import java.io.File;

public class FileVO {
	public Integer postno;
	public String FilePath;
	public String FileName;
	public File realfile;
	
	public File getRealfile() {
		return realfile;
	}
	public void setRealfile(File realfile) {
		this.realfile = realfile;
	}
	public String getFileName() {
		return FileName;
	}
	public void setFileName(String fileName) {
		FileName = fileName;
	}
	public Integer getPostno() {
		return postno;
	}
	public void setPostno(Integer postno) {
		this.postno = postno;
	}
	public String getFilePath() {
		return FilePath;
	}
	public void setFilePath(String filePath) {
		FilePath = filePath;
	}
	
}
