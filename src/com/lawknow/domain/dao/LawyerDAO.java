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
	
	//아이디 가져오기
	public String LawyerId(int lawyerNum) {
		return sqlSession.selectOne("Lawyer.LawyerId", lawyerNum);
	}
	
	//이메일 가져오기
	public String LawyerEmail(int lawyerNum) {
		return sqlSession.selectOne("Lawyer.LawyerEmail", lawyerNum);
	}
	
	//핸드폰 번호 가져오기
	public String LawyerPhonNum(int lawyerNum) {
		return sqlSession.selectOne("Lawyer.LawyerPhonNum",lawyerNum);
	}
	
	//핸드폰 번호 변경
	public boolean LawyerPhoneChange(LawyerVO lawyerVO) {
		return sqlSession.update("Lawyer.LawyerPhoneChange", lawyerVO) == 1;
	}
	//성별 가져오기
		public String LawyerGender(int lawyerNum) {
			return sqlSession.selectOne("Lawyer.LawyerGender", lawyerNum);
		}
		
		//폰번호 가져오기
		public String LawyerPhoneNum(int lawyerNum) {
			return sqlSession.selectOne("Lawyer.LawyerPhoneNum", lawyerNum);
		}
		
		//사무실 이름 가져오기
		public String LawyerOffice(int lawyerNum) {
			return sqlSession.selectOne("Lawyer.LawyerOffice", lawyerNum);
		}
		
		//사무실 번호 가져오기
		public String LawyerOfficeNum(int lawyerNum) {
			return sqlSession.selectOne("Lawyer.LawyerOfficeNum", lawyerNum);
		}

		//출신시험 가져오기
		public String LawyerGraduateTest(int lawyerNum) {
			return sqlSession.selectOne("Lawyer.LawyerGraduateTest", lawyerNum);
		}

		//출생년도 가져오기
		public String LawyerBirth(int lawyerNum) {
			return sqlSession.selectOne("Lawyer.LawyerBirth", lawyerNum);
		}
	
	
}
