package com.lawknow.domain.dao;


import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.lawknow.domain.vo.LawyerVO;
import com.lawknow.domain.vo.UserVO;
import com.mybatis.config.MyBatisConfig;
//
public class LawyerDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlSessionFactory();
	SqlSession sqlSession;
	
	public LawyerDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	//회원가입
	public void join(LawyerVO lawyerVO) {
		System.out.println("joinDAO 등장");
		sqlSession.insert("Lawyer.join", lawyerVO);
	}
	
	//아이디 중복검사
	public boolean checkId(String lawyerId) {
		return (Integer)sqlSession.selectOne("Lawyer.checkId", lawyerId) == 1;
	}
	
	//로그인 확인
	public Integer loginOk(HashMap<String, String> lawyerMap) {
		return sqlSession.selectOne("Lawyer.loginOk", lawyerMap);
	}
	
	//lawyerNum으로 lawyerName 가져오기
	public String getLawyerName(int lawyerNum) {
		System.out.println("NAME 다오 등장");
		return sqlSession.selectOne("Lawyer.getLawyerName", lawyerNum);
	}
		
	//변호사 리스트
	public List<LawyerVO> selectLawyers(){
		return sqlSession.selectList("Lawyer.selectLawyers");
	}
	
	//비밀번호 변경
	public boolean LawyerPwChange(LawyerVO lawyerVO) {
		return (Integer)sqlSession.update("Lawyer.LawyerPwChange", lawyerVO) == 1;
	}
	
	//변호사 회원탈퇴
	public boolean LawyerDeleteAccount(LawyerVO lawyerVO) {
		return (Integer)sqlSession.delete("Lawyer.LawyerDeleteAccount", lawyerVO) == 1;
	}
	
	//이메일 수정
	public boolean LawyerEmailUpdate(LawyerVO lawyerVO) {
		return (Integer)sqlSession.update("Lawyer.LawyerEmailUpdate", lawyerVO) == 1;
	}

	//현재 비밀번호 가져오기
	public boolean LawyerPwcheck(int lawyerNum) {
		return (Integer)sqlSession.selectOne("Lawyer.LawyerPwcheck", lawyerNum) == 1;
	}
	
}
