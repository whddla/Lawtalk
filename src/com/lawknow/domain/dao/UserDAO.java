package com.lawknow.domain.dao;


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
	public int loginOk(HashMap<String, String> userMap) {
		System.out.println("다오 등장");
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
		System.out.println(userId);
		return (Integer)sqlSession.selectOne("User.checkId", userId) == 1;
	}
	
	//의뢰인 비밀번호 변경
	public boolean PwChange(UserVO userVO) {
		return sqlSession.update("User.PwChange", userVO) == 1;
	}
	
	//계정 탈퇴	
	public boolean UserdeleteAccount(int userNum) {
		return (Integer)sqlSession.delete("User.UserdeleteAccount", userNum) == 1;
	}
		
	//이메일 수정
	public boolean UserEmailUpdate(UserVO userVO) {
		return (Integer)sqlSession.update("User.UserEmailUpdate", userVO) == 1;
	}
	
	//회원정보 가져오기
	public List<Object> getUserInfo(UserVO userVO) {
		return sqlSession.selectList("userRegister.getUserInfo", userVO);
	}
	
	//현재 비밀번호 가져오기
	public boolean UserPwcheck(UserVO userVO) {
		return (Integer)sqlSession.selectOne("User.UserPwcheck", userVO) == 1;
	}
	
}

