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
	//계정 탈퇴	
	public void deleteAccount(String userId) {
		
	}
		
	//회원정보 수정
	public void updateAccount(UserDAO user) {
		
	}
	
	//회원정보 가져오기
	public void getUserInfo(UserDAO user) {
		
	}
	
	//답글시간 가져오기
	public Date stringToDate(UserDAO user) {
		
	}
	
		
	//로그인, 비밀번호 체크
	public int loginCheck(String userId, String userPw) {
		int x = 0;
		return x;
	}
}