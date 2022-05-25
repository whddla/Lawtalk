package com.lawyer.domain.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.lawyer.domain.vo.LawyerVO;
import com.mybatis.config.MyBatisConfig;

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
}
