package com.lawknow.domain.vo;

public class FileVO { // 첨부파일VO
	
	
	 	private String fileName;
	   private String fileNameOriginal;
	   private int userWriteNum;
	   
	   public FileVO() {;}

	   public String getFileName() {
	      return fileName;
	   }

	   public void setFileName(String fileName) {
	      this.fileName = fileName;
	   }

	   public String getFileNameOriginal() {
	      return fileNameOriginal;
	   }

	   public void setFileNameOriginal(String fileNameOriginal) {
	      this.fileNameOriginal = fileNameOriginal;
	   }

		public int getUserWriteNum() {
			return userWriteNum;
		}
	
		public void setUserWriteNum(int userWriteNum) {
			this.userWriteNum = userWriteNum;
		}

	   
}
