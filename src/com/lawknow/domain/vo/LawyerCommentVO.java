package com.lawknow.domain.vo;
////
public class LawyerCommentVO {
		private int lawyerWriteNum;
		private int requestNum;
		private int lawyerNum;
		private String title;
		private String content;
		private String writeDate;
		private String lawyerName;
		
		
		
		
		public LawyerCommentVO() {;}
		

		public String getLawyerName() {
			return lawyerName;
		}

		public void setLawyerName(String lawyerName) {
			this.lawyerName = lawyerName;
		}



		public int getLawyerWriteNum() {
			return lawyerWriteNum;
		}

		public void setLawyerWriteNum(int lawyerWriteNum) {
			this.lawyerWriteNum = lawyerWriteNum;
		}

		public int getRequestNum() {
			return requestNum;
		}

		public void setRequestNum(int requestNum) {
			this.requestNum = requestNum;
		}

		public int getLawyerNum() {
			return lawyerNum;
		}

		public void setLawyerNum(int lawyerNum) {
			this.lawyerNum = lawyerNum;
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
		
	
		
		
}
