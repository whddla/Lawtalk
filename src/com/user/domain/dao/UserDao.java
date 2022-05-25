package com.user.domain.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.user.domain.vo.userVO;
import com.mybatis.config.MyBatisConfig;

public class UserDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlSessionFactory();
	SqlSession sqlSession;
	
	public UserDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	//회원가입
	public void join(UserVO userVO) {
		sqlSession.insert("User.join", userVO);
	}
	
	//아이디 중복검사
	public boolean checkId(String userId) {
		return (Integer)sqlSession.selectOne("User.checkId", userId) == 1;
	}
}
