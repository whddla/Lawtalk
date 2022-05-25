package com.lawyer.domain.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.lawyer.domain.vo.LawyerVO;
import com.mybatis.config.MyBatisConfig;
import com.user.domain.dao.Date;
import com.user.domain.dao.UserDAO;

public class LawyerDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlSessionFactory();
	SqlSession sqlSession;
	
	public LawyerDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	//회원가입
	public void join(LawyerVO lawyerVO) {
		sqlSession.insert("Lawyer.join", lawyerVO);
	}
	
	//아이디 중복검사
	public boolean checkId(String lawyerId) {
		return (Integer)sqlSession.selectOne("Lawyer.checkId", lawyerId) == 1;
	}
	
	//계정 탈퇴	
	public void deleteAccount(String lawyerId) {
		
	}
	
	//회원정보 수정
	public void updateAccount(LawyerDAO Lawyer) {
		
	}
	
	//회원정보 가져오기
	public void getUserInfo(UserDAO user) {
			
	}
		
	//답글시간 가져오기
	public Date stringToDate(UserDAO user) {
			
	}
	
	//로그인, 비밀번호 체크
	public int loginCheck(String id, String pw) {
		int x = 0;
		return x;
	}
	
}
