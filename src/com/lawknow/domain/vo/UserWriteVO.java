package com.lawknow.domain.vo;

public class UserWriteVO {

		private int userWriteNum;
		private int requestNum;
		private int userNum;
		private String field;
		private String title;
		private String content;
		private String writeDate;
	
		public UserWriteVO() {;}

		public int getUserWriteNum() {
			return userWriteNum;
		}

		public void setUserWriteNum(int userWriteNum) {
			this.userWriteNum = userWriteNum;
		}

		public int getRequestNum() {
			return requestNum;
		}

		public void setRequestNum(int requestNum) {
			this.requestNum = requestNum;
		}

		public int getUserNum() {
			return userNum;
		}

		public void setUserNum(int userNum) {
			this.userNum = userNum;
		}

		public String getTitle() {
			return title;
		}

		public void setTitle(String title) {
			this.title = title;
		}

		public String getContent() {
			return content;
		}

		public void setContent(String content) {
			this.content = content;
		}

		public String getWriteDate() {
			return writeDate;
		}

		public void setWriteDate(String writeDate) {
			this.writeDate = writeDate;
		}

		public String getField() {
			return field;
		}
		
		public void setField(String field) {
			this.field = field;
		}
	
	
}
