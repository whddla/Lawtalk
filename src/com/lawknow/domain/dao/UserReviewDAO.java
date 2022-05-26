package com.lawknow.domain.dao;


import java.sql.Date;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.lawknow.domain.vo.LawyerCommentVO;
import com.lawknow.domain.vo.UserReviewVO;
import com.mybatis.config.MyBatisConfig;

public class UserReviewDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlSessionFactory();
	SqlSession sqlSession;
	
	public UserReviewDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	//리뷰 글작성
	public void reviewWrite(UserReviewVO user) {
		sqlSession.insert("User.reviewWrite", user) ;
	}
	
	// 리뷰 글삭제
	public void reviewDelete(UserReviewVO user) {
		sqlSession.delete("User.reviewDelete", user) ;
	}
	
	//리뷰 번호
	public int reviewNum(UserReviewVO user) {
		return sqlSession.selectOne("User.reviewNum");
	}
	
	//사건 번호
	public int requestNum(UserReviewVO user) {
		return sqlSession.selectOne("User.requestNum");
	}
	
	//리뷰 날짜
	public Date reviewWriteDate(UserReviewVO user) {
		return null;
	}
}
