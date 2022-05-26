package com.userreview.domain.dao;


import java.sql.Date;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.mybatis.config.MyBatisConfig;
import com.userreview.domain.vo.UserReviewVO;

public class UserReviewDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlSessionFactory();
	SqlSession sqlSession;
	
	public UserReviewDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	//리뷰 번호
	public int reviewNum(UserReviewVO userReviewVO) {
		return 0;
	}
	
	//사건 번호
	public int requestNum(UserReviewVO userVO) {
		return 0;
	}
	
	//리뷰 날짜
	public Date reviewWriteDate(UserReviewVO userVO) {
		return null;
	}
}
