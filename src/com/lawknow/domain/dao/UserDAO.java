package com.lawknow.domain.dao;


import java.sql.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.lawknow.domain.vo.UserVO;
import com.mybatis.config.MyBatisConfig;

public class UserDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlSessionFactory();
	SqlSession sqlSession;
	
	public UserDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	//회원가입
	public void join(UserVO userVO) {
		sqlSession.insert("userRegister.join", userVO);
	}
	
	//아이디 중복검사
	public boolean checkId(String userId) {
		return (Integer)sqlSession.selectOne("userRegister.checkId", userId) == 1;
	}
	//계정 탈퇴	
	public void deleteAccount(UserVO userVO) {
		sqlSession.delete("userRegister.deleteAccount", userVO);
	}
		
	//회원정보 수정
	public int updateAccount(UserVO userVO) {
		return sqlSession.update("userRegister.updateAccount", userVO);
	}
	
	//회원정보 가져오기
	public List<Object> getUserInfo(UserVO userVO) {
		return sqlSession.selectList("userRegister.getUserInfo", userVO);
	}
	
	//답글시간 가져오기
	public Date stringToDate(UserVO user) {
		return null;
	}
}