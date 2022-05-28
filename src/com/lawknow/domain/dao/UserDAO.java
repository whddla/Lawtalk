package com.lawknow.domain.dao;


import java.sql.Date;
import java.util.HashMap;
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
	//로그인 확인
	public Integer loginOk(HashMap<String, String> userMap) {
		return sqlSession.selectOne("User.loginOk", userMap);
	}
	
	
	//회원가입
	public void join(UserVO userVO) {
		sqlSession.insert("User.join", userVO);
	}
	
	public List<UserVO> selectUsers(){
		return sqlSession.selectList("User.selectUsers");
	}
	
	//아이디 중복검사
	public boolean checkId(String userId) {
		return (Integer)sqlSession.selectOne("User.checkId", userId) == 1;
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
	
}