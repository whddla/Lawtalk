package com.lawknow.domain.dao;

import java.sql.Date;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.lawknow.domain.vo.UserWriteVO;
import com.mybatis.config.MyBatisConfig;

public class UserWriteDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlSessionFactory();
	SqlSession sqlSession;
	
	public UserWriteDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	//사건 번호
	public int requestNum(UserWriteVO userVO) {
		return 0;
	}
	
	//의뢰인 글 번호
	public int userWirteNum(UserWriteVO userVO) {
		return 0;
	}
	
	//의뢰인 글 날짜
	public Date userWriteDate(UserWriteVO userVO) {
		return null;
	}
}
