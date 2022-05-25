package com.userview.domain.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.mybatis.config.MyBatisConfig;

public class UserViewDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlSessionFactory();
	SqlSession sqlSession;
	
	public UserViewDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	//리뷰 번호
	public int reviewNum(UserViewVO userVO) {
		return 0;
	}
	
	//사건 번호
	public int requestNum(UserViewVO userVO) {
		return 0;
	}
	
	//리뷰 날짜
	public Date reviewWriteDate(UserViewVO userVO) {
		return null;
	}
}
