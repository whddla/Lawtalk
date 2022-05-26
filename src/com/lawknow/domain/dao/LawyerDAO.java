package com.lawknow.domain.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.lawknow.domain.vo.LawyerVO;
import com.mybatis.config.MyBatisConfig;

public class LawyerDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlSessionFactory();
	SqlSession sqlSession;
	
	public LawyerDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	//회원가입
	public void join(LawyerVO lawyer) {
		sqlSession.insert("Lawyer.join", lawyer);
	}
	
	//아이디 중복검사tk
	public boolean checkId(String lawyerId) {
		return (Integer)sqlSession.selectOne("Lawyer.checkId", lawyerId) == 1;
	}
	
	//계정 탈퇴	
	public void deleteAccount(LawyerVO lawyer) {
		sqlSession.delete("User.deleteAccount", lawyer);
	}
	
	//회원정보 수정
	public int updateAccount(LawyerVO lawyer) {
		return sqlSession.update("Lawyer.updateAccount", lawyer);
	}
	
	//회원정보 가져오기
	public List<Object> getUserInfo(LawyerVO lawyer) {
		return sqlSession.selectList("Lawyer.getUserInfo", lawyer);
	}
		
	//답글시간 가져오기
	public void stringToDate(LawyerVO lawyer) {
			
	}
}
