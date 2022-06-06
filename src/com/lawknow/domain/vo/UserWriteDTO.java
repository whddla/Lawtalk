package com.lawknow.domain.vo;
//
public class UserWriteDTO {

	private int userWriteNum;
	private int requestNum;
	private int userNum;
	private String field;
	private String title;
	private String content;
	private String writeDate;
	private int readCount;
	private String userId;
	
	public UserWriteDTO() {
		// TODO Auto-generated constructor stub
	}

	public UserWriteDTO(UserWriteVO userwriteVO) {
		super();
		this.userWriteNum = userWriteNum;
		this.requestNum = requestNum;
		this.userNum = userNum;
		this.field = field;
		this.title = title;
		this.content = content;
		this.writeDate = writeDate;
		this.readCount = readCount;
		this.userId = userId;
	}

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

	public String getField() {
		return field;
	}

	public void setField(String field) {
		this.field = field;
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

	public int getReadCount() {
		return readCount;
	}

	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	
	
	
	
	
	
}
