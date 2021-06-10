package com.mrp.company.dto;

import org.springframework.web.multipart.MultipartFile;

public class FileDto {
	int fileNum;
	String fileName;
	String fileOriName;
	String fileUrl;
	int designNum;
	MultipartFile file;
	
	
	
	@Override
	public String toString() {
		return "FileDto [fileNum=" + fileNum + ", fileName=" + fileName + ", fileOriName=" + fileOriName + ", fileUrl="
				+ fileUrl + ", designNum=" + designNum + ", file=" + file + "]";
	}
	public String getFileUrl() {
		return fileUrl;
	}
	public void setFileUrl(String fileUrl) {
		this.fileUrl = fileUrl;
	}
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	public int getFileNum() {
		return fileNum;
	}
	public void setFileNum(int fileNum) {
		this.fileNum = fileNum;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getFileOriName() {
		return fileOriName;
	}
	public void setFileOriName(String fileOriName) {
		this.fileOriName = fileOriName;
	}
	public int getDesignNum() {
		return designNum;
	}
	public void setDesignNum(int designNum) {
		this.designNum = designNum;
	}
	
}
