package com.lawknow.domain.dao;


import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.lawknow.domain.vo.UserVO;
import com.mybatis.config.MyBatisConfig;
////
public class UserDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlSessionFactory();
	SqlSession sqlSession;
	
	public UserDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	//로그인 확인
	public int loginOk(HashMap<String, String> userMap) {
		System.out.println("로그인 다오 등장");
		return sqlSession.selectOne("User.loginOk", userMap);
	}
	
	//userNum으로 userName 가져오기
	public String getUserName(int userNum) {
		System.out.println("NAME 다오 등장");
		return sqlSession.selectOne("User.getUserName", userNum);
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
	public boolean UserDeleteAccount(UserVO userVO) {
		return (Integer)sqlSession.delete("User.UserDeleteAccount", userVO) == 1;
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
	public boolean UserPwcheck(int userNum) {
		return (Integer)sqlSession.selectOne("User.UserPwcheck", userNum) == 1;
	}
	
	//아이디 가져오기
	public String UserId(int userNum) {
		return sqlSession.selectOne("User.UserId", userNum);
	}
	
	//이메일 가져오기
	public String UserEmail(int userNum) {
		return sqlSession.selectOne("User.UserEmail", userNum);
	}
	
	//핸드폰 번호 가져오기
	public String UserPhonNum(int userNum) {
		return sqlSession.selectOne("User.UserPhonNum",userNum);
	}
	
	//출생년도 가져오기
	public String UserBirth(int userNum) {
		return sqlSession.selectOne("User.UserBirth",userNum);
	}
	//성별 가져오기
	public String UserGender(int userNum) {
		return sqlSession.selectOne("User.UserGender",userNum);
	}
	//카카오톡 이메일 가져오기
	public String UserKakaoEmail(int userNum) {
		return sqlSession.selectOne("User.UserKakaoEmail",userNum);
	}
	//페이스북 이메일 가져오기
	public String UserFaceBookEmail(int userNum) {
		return sqlSession.selectOne("User.UserFaceBookEmail",userNum);
	}
	
	//핸드폰 번호 변경
	public boolean UserPhoneChange(UserVO userVO) {
		return sqlSession.update("User.UserPhoneChange", userVO) == 1;
	}
	
}

